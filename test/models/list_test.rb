require 'test_helper'

class ListTest < ActiveSupport::TestCase
	def setup
		@list = lists(:list_one)
	end
 test 'list without title must be invalid' do 	
 list = List.new title: nil
 assert_not list.valid?
 end

 test 'list has tasks' do
 	assert_includes @list.tasks, tasks(:one)
    
   end
   test 'delete tasks when list is deleted' do
   	@list.destroy
   	assert_empty Task.where(list_id: @list.id)
   end
   
end
