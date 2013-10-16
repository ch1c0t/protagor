module Protagor::BIPs::Context
  def eval string
    instance_eval string
  end

  def write string; string; end
  def nl;           "\n";   end
end
