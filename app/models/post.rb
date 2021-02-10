class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :name, presence: true, uniqueness: true

  validates :description, presence: true, length: {maximum: 300}
  validates :price, presence: true
  validates :image, presence: true


  # validate :image_size_validation, :if => :image

  validate :file_size

  def file_size
   extn = file.file.extension.downcase
   size = file.file.size.to_f
   if ["png", "jpg", "jpeg"].include?(extn) && size > 5.megabytes.to_f
     errors.add(:file, "You cannot upload an image file greater than 5MB")
   elsif (extn == "pdf") && size > 20.megabytes.to_f
     errors.add(:file, "You cannot upload an pdf file greater than 20MB")
   else
     errors.add(:file, "You cannot upload a file greater than 25MB")       
   end
 end


end
