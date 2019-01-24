class Authenticate
  attr_reader :authenticated, :auth_password

  def initialize(password)
    @authenticated = false
    @auth_password = password
  end

  def authenticate(candidate_password)
    @authenticated = true if candidate_password == auth_password
  end


end


class candidate_password
  def initialize(coo = COO)
    @coo = coo.new
  end

  def make_company_efficient
    coo.find_savings
  end
end
