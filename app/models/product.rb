class Product < ActiveRecord::Base
  mount_uploader :image , ImageUploader
  validates :name , presence: true
  validates :price , presence: true , numericality: true
end
