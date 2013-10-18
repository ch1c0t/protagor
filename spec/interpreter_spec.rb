require_relative './spec_helper'

describe Interpreter do
  before do
    @i = Interpreter.new
  end

  it "writes to stdout" do
    response = @i.query 'write("Hello!"),nl,write("Welcome to Prolog."),nl.'
    response.must_equal "Hello!\nWelcome to Prolog.\nyes"
  end
end
