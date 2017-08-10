class ThingEventRelation < ApplicationRecord
  belongs_to :thing
  belongs_to :event
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :thing, :reject_if => :all_blank
  accepts_nested_attributes_for :event, :reject_if => :all_blank
end
