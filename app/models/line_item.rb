class LineItem < ActiveRecord::Base
  belongs_to :item

  has_many :line_item_properties

  accepts_nested_attributes_for :line_item_properties
end
