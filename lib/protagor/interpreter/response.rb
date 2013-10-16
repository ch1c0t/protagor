class Protagor::Interpreter
  class Response < String
    def initialize query
      response = ""

      query.clauses.each do |clause|
        response << execute(clause, in: BIPs::Context) if clause.bip?
      end

      super (response << 'yes')
    end

    private

    def execute clause, in: SomeDefaultContext
    end
  end
end
