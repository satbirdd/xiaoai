class Item < ActiveRecord::Base
  belongs_to :shop
  belongs_to :product

  has_many :line_items

  accepts_nested_attributes_for :line_items
end
