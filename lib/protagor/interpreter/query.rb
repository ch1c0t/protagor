require './clause'

class Protagor::Interpreter
  class Query < String
    attr_reader :clauses
    def initialize string
      super string.strip
      parse
    end

    def valid?
      true
    end

    def error
      "An error happened, and that's supposed to be a very meaningful error message."
    end

    private

    def parse
      strings = []
      gsub!(/"[^"]*"/) { strings << $&; '""' }

      @clauses = []
      self[0..-2].split(',').each do |clause|
        clause.scan(/""/).size.times { clause.sub! /""/, strings.shift }
        @clauses << Clause.new(clause)
      end
    end
  end
end
