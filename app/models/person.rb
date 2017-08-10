class Person < ApplicationRecord
  has_many :company_person_relations, dependent: :destroy
  has_many :companies, through: :company_person_relations, :class_name => 'Company'
  has_many :person_thing_relations, dependent: :destroy
  has_many :things, through: :person_thing_relations, :class_name => 'Thing'
  has_many :person_place_relations, dependent: :destroy
  has_many :places, through: :person_place_relations, :class_name => 'Place'
  has_many :person_event_relations, dependent: :destroy
  has_many :events, through: :person_event_relations, :class_name => 'Event'
  has_many :person_attachment_relations, dependent: :destroy
  has_many :attachments, through: :person_attachment_relations, :class_name => 'Attachment'

  accepts_nested_attributes_for :company_person_relations
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :person_thing_relations
  accepts_nested_attributes_for :things
  accepts_nested_attributes_for :person_place_relations
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :person_event_relations
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :person_attachment_relations
  accepts_nested_attributes_for :attachments
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
