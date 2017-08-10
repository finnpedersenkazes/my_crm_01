class Company < ApplicationRecord
  has_many :company_person_relations, dependent: :destroy
  has_many :people, through: :company_person_relations, :class_name => 'Person'
  has_many :company_thing_relations, dependent: :destroy
  has_many :things, through: :company_thing_relations, :class_name => 'Thing'
  has_many :company_place_relations, dependent: :destroy
  has_many :places, through: :company_place_relations, :class_name => 'Place'
  has_many :company_event_relations, dependent: :destroy
  has_many :events, through: :company_event_relations, :class_name => 'Event'
  has_many :company_attachment_relations, dependent: :destroy
  has_many :attachments, through: :company_attachment_relations, :class_name => 'Attachment'

  accepts_nested_attributes_for :company_person_relations
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :company_thing_relations
  accepts_nested_attributes_for :things
  accepts_nested_attributes_for :company_place_relations
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :company_event_relations
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :company_attachment_relations
  accepts_nested_attributes_for :attachments
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
