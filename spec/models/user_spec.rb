RSpec.describe User do
  it 'should have many tweets' do
    expect(subject).to have_many(:tweets)
  end
  it 'should require a email' do
    expect(subject).to validate_presence_of(:email)
  end
end
