class AddUserIdToBooks < ActiveRecord::Migration[5.2]
  def change
  execute 'DELETE FROM books;'
  add_reference  :books ,:user,index: true,foreign_key: true
 
  end
end
