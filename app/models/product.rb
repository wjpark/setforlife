class Product < ActiveRecord::Base
  attr_accessible :name, :price, :description, :image_url, :in_cart

  has_many :reviews
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_numericality_of :price, :greater_than => 0
  
end
