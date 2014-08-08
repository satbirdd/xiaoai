class Category < ActiveRecord::Base
	has_many :properties, as: :targetable
	has_many :line_properties, as: :targetable

	# accepts_nested_attributes_for :properties
	# accepts_nested_attributes_for :line_properties
end
