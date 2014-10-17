require "spec_helper"

describe "ActiveRecordEvents" do

  before do
    @user = User.new
  end

  it "calls the block in the contex of the ActiveRecord instance" do
    user = nil
    User.instance_on(:create) do
      user = self
    end

    @user.save!

    expect(user).to eq @user
  end

  it "calls listeners on model create" do
    name = nil
    @user.name = "hello"
    User.instance_on(:create) do
      name = self.name
    end

    @user.save!

    expect(name).to eq @user.name
  end

  it "calls listeners on model update" do
    name = nil
    @user.name = "hello"
    User.instance_on(:update) do
      name = self.name
    end

    @user.save!
    @user.name = "goodbye"
    @user.save!

    expect(name).to eq @user.name
  end

  it "calls listeners on model destroy" do
    name = nil
    @user.name = "hello"
    User.instance_on(:destroy) do
      name = self.name
    end

    @user.destroy!

    expect(name).to eq @user.name
  end

end
