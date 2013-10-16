require './interpreter/query'
require './interpreter/response'

module Protagor
  class Interpreter
    def query string
      q = Query.new string

      if q.valid?
        Response.new q
      else
        q.error
      end
    end
  end
end
