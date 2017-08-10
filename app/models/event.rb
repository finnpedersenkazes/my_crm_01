class Event < ApplicationRecord
  has_many :company_event_relations, dependent: :destroy
  has_many :companies, through: :company_event_relations, :class_name => 'Company'
  has_many :person_event_relations, dependent: :destroy
  has_many :people, through: :person_event_relations, :class_name => 'Person'
  has_many :thing_event_relations, dependent: :destroy
  has_many :things, through: :thing_event_relations, :class_name => 'Thing'
  has_many :place_event_relations, dependent: :destroy
  has_many :places, through: :place_event_relations, :class_name => 'Place'
  has_many :event_attachment_relations, dependent: :destroy
  has_many :attachments, through: :event_attachment_relations, :class_name => 'Attachment'

  accepts_nested_attributes_for :company_event_relations
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :person_event_relations
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :thing_event_relations
  accepts_nested_attributes_for :things
  accepts_nested_attributes_for :place_event_relations
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :event_attachment_relations
  accepts_nested_attributes_for :attachments
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
