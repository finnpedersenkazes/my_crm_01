class Thing < ApplicationRecord
  has_many :company_thing_relations, dependent: :destroy
  has_many :companies, through: :company_thing_relations, :class_name => 'Company'
  has_many :person_thing_relations, dependent: :destroy
  has_many :people, through: :person_thing_relations, :class_name => 'Person'
  has_many :thing_place_relations, dependent: :destroy
  has_many :places, through: :thing_place_relations, :class_name => 'Place'
  has_many :thing_event_relations, dependent: :destroy
  has_many :events, through: :thing_event_relations, :class_name => 'Event'
  has_many :thing_attachment_relations, dependent: :destroy
  has_many :attachments, through: :thing_attachment_relations, :class_name => 'Attachment'

  accepts_nested_attributes_for :company_thing_relations
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :person_thing_relations
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :thing_place_relations
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :thing_event_relations
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :thing_attachment_relations
  accepts_nested_attributes_for :attachments
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
