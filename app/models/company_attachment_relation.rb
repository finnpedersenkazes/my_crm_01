class CompanyAttachmentRelation < ApplicationRecord
  belongs_to :company
  belongs_to :attachment
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :company, :reject_if => :all_blank
  accepts_nested_attributes_for :attachment, :reject_if => :all_blank
end
