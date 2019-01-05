class AddClubToUser < ActiveRecord::Migration[5.2]
  def change
 
  add_column :users, :club, :string
  add_column :users, :self_induction, :string
  end
end
