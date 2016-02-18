RSpec.describe Tweet do
  it 'belongs to a user' do
    should belong_to(:user)
  end
  it 'requires a name' do
    should validate_presence_of(:name)
  end
end
