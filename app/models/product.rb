class Product < ActiveRecord::Base
  belongs_to :category

  has_many :items
  # has_many :properties, as: :targetable

  # accepts_nested_attributes_for :properties
end
