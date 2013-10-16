module Protagor
  class REPL
    def initialize
      @interpreter = Interpreter.new
    end

    def start
      print prompt
      while gets
        response = @interpreter.query $_.strip
        print "#{response}\n#{prompt}"
      end
    end

    private

    def prompt
      '?- '
    end
  end
end
