class Attachment < ApplicationRecord
  has_many :company_attachment_relations, dependent: :destroy
  has_many :companies, through: :company_attachment_relations, :class_name => 'Company'
  has_many :person_attachment_relations, dependent: :destroy
  has_many :people, through: :person_attachment_relations, :class_name => 'Person'
  has_many :thing_attachment_relations, dependent: :destroy
  has_many :things, through: :thing_attachment_relations, :class_name => 'Thing'
  has_many :place_attachment_relations, dependent: :destroy
  has_many :places, through: :place_attachment_relations, :class_name => 'Place'
  has_many :event_attachment_relations, dependent: :destroy
  has_many :events, through: :event_attachment_relations, :class_name => 'Event'

  accepts_nested_attributes_for :company_attachment_relations
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :person_attachment_relations
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :thing_attachment_relations
  accepts_nested_attributes_for :things
  accepts_nested_attributes_for :place_attachment_relations
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :event_attachment_relations
  accepts_nested_attributes_for :events
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
