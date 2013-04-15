class Review < ActiveRecord::Base
  attr_accessible :body, :product_id, :rating

  belongs_to :product

  validates_length_of :body, :within => 5..1000, :too_short => "%{count} characters is not enough", :too_long => "%{count} characters is too long"
  validates :rating, :inclusion => 0..5
end
