require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'task without name must be invalid' do
  	task = Task.new title: nil
  assert_not task.valid?
end
test 'task has one list' do
	assert_not_nil tasks(:one).list
end

end

