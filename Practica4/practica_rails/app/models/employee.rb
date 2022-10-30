class Employee < ApplicationRecord
  belongs_to :office #Tiene una office

  validates :name, presence: true, length: { maximum: 150 }
  validates :e_number, presence: true

  scope :vacant, -> { where(:office_id => nil)}

  scope :occupied, -> { where(:office_id => !nil)}
  # Ex:- scope :active, -> {where(:active => true)}
end
