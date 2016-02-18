RSpec.describe Users::New do
  it 'creates a new user' do
    before_count = User.count
    described_class.call({
                             handle: 'richessler',
                             email: 'richessler@gmail.com',
                             encrypted_password: 'i_hope_this_was_good_enough_to_join_the_team_^_^'
                         })

    expect(User.count).to eq(before_count + 1)
  end
end
