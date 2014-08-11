class LineItemProperty < ActiveRecord::Base
  belongs_to :line_item
  belongs_to :item_property_item
end
