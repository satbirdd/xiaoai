class Item < ActiveRecord::Base
  belongs_to :shop
  belongs_to :product

  has_many :item_property_items

  accepts_nested_attributes_for :item_property_items
end
