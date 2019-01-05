class UserController < ApplicationController
  def show
  
  @book=Book.find(params[:id])
 
  @users=User.where(id: @book.user_id)
  end
end
