class PlaceEventRelation < ApplicationRecord
  belongs_to :place
  belongs_to :event
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :place, :reject_if => :all_blank
  accepts_nested_attributes_for :event, :reject_if => :all_blank
end
