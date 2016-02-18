RSpec.describe User do
  it 'has many tweets' do
    should have_many(:tweets)
  end

  it 'requires a handle' do
    should validate_presence_of(:handle)
  end

  it 'requires an email' do
    should validate_presence_of(:email)
  end
end
