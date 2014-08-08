class Property < ActiveRecord::Base
	belongs_to :targetable, polymorphic: true
	has_many :property_items

	accepts_nested_attributes_for :property_items, allow_destroy: true
end
