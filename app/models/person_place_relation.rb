class PersonPlaceRelation < ApplicationRecord
  belongs_to :person
  belongs_to :place
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :person, :reject_if => :all_blank
  accepts_nested_attributes_for :place, :reject_if => :all_blank
end
