require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = users(:one)
  end
  test 'delete tasks when list is deleted' do
  	@user.destroy
  	assert_empty List.where(user_id: @user.id)
  end

  # test "the truth" do
  #   assert true
  # end
end
