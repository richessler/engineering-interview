RSpec.describe Users::New do
  it "should create a new user" do
    @u = described_class.call(email: "test@test.com", password: "test1234")
    expect(@u).to be_persisted
  end
end
