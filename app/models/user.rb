class User < ApplicationRecord
 
  has_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 mount_uploader :image, ImageUploader
 enum sex: { 男: 0, 女: 1 }
end
