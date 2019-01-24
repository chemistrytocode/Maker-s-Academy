require 'authenticate'

describe Authenticate do
  let(:authenticated_user) { double password: "password" }

  describe '#New'
    it 'Initializes with autenticated as false and authenicated_password as arugment' do
      new_auth = Authenticate.new("password")
      expect(new_auth.authenticated).to eq false
      expect(new_auth.auth_password).to eq "password"
  end

  describe '#Authenticate'
    it 'Sets autenticated to true if User password matches argument' do
      new_auth = Authenticate.new("password")
      new_auth.authenticate("password")
      expect(new_auth.authenticated).to eq true
    end

end
