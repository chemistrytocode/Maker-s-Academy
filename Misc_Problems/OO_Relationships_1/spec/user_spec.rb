require 'user'

describe User do
  # let(auth_user) { :double authenticated: true }

  describe '#New' do
    it 'initialises a new user object with variables assigned correctly' do
      user = User.new("Paul", "Programmer", 31, "password")
      expect(user.name).to eq "Paul"
      expect(user.bio).to eq "Programmer"
      expect(user.age).to eq 31
      expect(user.authenticate.authenticated).to eq false
    end
  end

  describe '#Profile' do
    it 'Returns profile in easy to read format if authenticated' do
      allow(:profile).to receive(:authenticated) { true }
    user = User.new("Paul", "Programmer", 31, "password")
    expect(user.profile).to eq "Paul, born in 1988: Programmer"
    end
  end

end
