require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid" do
    user = User.new(name: "Bruno", email: "bruno@bruno.com", password: "123456")

    expect(user.email). to eql "bruno@bruno.com"
    expect(user). to be_valid
  end

  it "user is not valid" do
    user = Admin.new(email: "bruno@bruno.com")

    expect(user). to_not be_valid
  end

end