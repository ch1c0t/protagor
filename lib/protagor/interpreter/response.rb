class Protagor::Interpreter
  class Response < String
    def initialize query
      response = ""

      query.clauses.each do |clause|
        response << execute(clause, in_context: Protagor::BIPs::Context) if clause.bip?
      end

      super (response << 'yes')
    end

    private

    def execute clause, in_context: SomeDefaultContext
      in_context.eval clause
    end
  end
end
