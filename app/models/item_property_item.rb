class ItemPropertyItem < ActiveRecord::Base
  belongs_to :property_item
  belongs_to :item
end
