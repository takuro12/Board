class UserController < ApplicationController
  def show
  

 
  @user=User.find(params[:id])
 
  @books=Book.where(user_id: @user.id)
  end
  
  def mypage
  @user=User.find(params[:id])
  @books=Book.where(user_id: current_user.id)
  end
end
