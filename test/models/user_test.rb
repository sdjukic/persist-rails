require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(name: "Example User", password: "foobar",
  		             password_confirmation: "foobar")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "name should be present" do
  	@user.name = "    "
  	assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 36
    assert_not @user.valid?
  end	

  test "user name should be unique" do
  	duplicate_user = @user.dup
  	duplicate_user.name = @user.name
  	@user.save
  	assert_not duplicate_user.valid?
  end

  test "password should have a minimum length" do
  	@user.password = @user.password_confirmation = "z" * 5
  	assert_not @user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
