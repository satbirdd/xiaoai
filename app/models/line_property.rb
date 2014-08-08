class LineProperty < ActiveRecord::Base
	belongs_to :targetable, polymorphic: true
	has_many :line_property_items
	accepts_nested_attributes_for :line_property_items
end
