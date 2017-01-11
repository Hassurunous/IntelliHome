require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @user = User.create(name: "New User", email: "newuser@example.com")
  end

  test "should be valid" do
      assert @user.valid?
  end

  test "name should be present" do
    @user.name = "      "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "      "
    assert_not @user.valid?
  end

  test "name not too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email not too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid email addresses" do
    valid_addresses = %w[user@example.com SOME_guy@example.net joe.schmoe@example.org BoB+SmItH@example.bar.org]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be a valid email."
    end
  end

  test "email validation should reject invalid email addresses" do
    invalid_addresses = %w[user.example.com some_guy_at_example.net joe.schmoe@example.foo@bar.com bobsmith@example+org.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address} should be an invalid email."
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

end
