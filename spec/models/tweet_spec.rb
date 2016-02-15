RSpec.describe Tweet do
  it 'should belong to a user' do
    expect(subject).to belong_to(:user)
  end
  it 'should require a name' do
    expect(subject).to validate_presence_of(:name)
  end
end
