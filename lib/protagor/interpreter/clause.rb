class Protagor::Interpreter
  class Clause < String
    def initialize string
      super string.strip
      parse
    end

    # Is it built-in predicate?
    def bip?
      @bip
    end

    private

    def parse
      @bip = Protagor::BIPs::LIST.any? { |bip| start_with? bip }
    end
  end
end
