class User < ApplicationRecord
  has_many :posts
  mount_uploader :avatar, ImageUploader

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one_attached :avatar
  
end
