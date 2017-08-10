class Place < ApplicationRecord
  has_many :company_place_relations, dependent: :destroy
  has_many :companies, through: :company_place_relations, :class_name => 'Company'
  has_many :person_place_relations, dependent: :destroy
  has_many :people, through: :person_place_relations, :class_name => 'Person'
  has_many :thing_place_relations, dependent: :destroy
  has_many :things, through: :thing_place_relations, :class_name => 'Thing'
  has_many :place_event_relations, dependent: :destroy
  has_many :events, through: :place_event_relations, :class_name => 'Event'
  has_many :place_attachment_relations, dependent: :destroy
  has_many :attachments, through: :place_attachment_relations, :class_name => 'Attachment'

  accepts_nested_attributes_for :company_place_relations
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :person_place_relations
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :thing_place_relations
  accepts_nested_attributes_for :things
  accepts_nested_attributes_for :place_event_relations
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :place_attachment_relations
  accepts_nested_attributes_for :attachments
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
