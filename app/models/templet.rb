class Templet < ApplicationRecord
  has_many :flowpaths, inverse_of: :templet
  has_many :users,through: :flowpaths
  accepts_nested_attributes_for :flowpaths 

  has_many :events
end
