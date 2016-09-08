class TodoList
	def initialize(items)

	@checkoutlist=items
		
	end

 def get_items()

 	@checkoutlist
 	
 end

def add_item(new_item)

	@checkoutlist<<new_item

end
def delete_item(delete)
	@checkoutlist.delete(delete)
end

def get_item(i)
	@checkoutlist[i]
end

end