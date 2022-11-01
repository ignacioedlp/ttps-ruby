class Office < ApplicationRecord
  
  has_many :employees #Tiene muchos employees


  validates :name, presence: true, length: { maximum: 255 }
  validates :phone_number, presence: true, length: { maximum: 30 }
  validates :available, inclusion: { in: [true, false] }
  validates_with PhoneNumberValidator


  scope :empty, -> { where(:available => true)}
  # Ex:- scope :active, -> {where(:active => true)}


end

class PhoneNumberValidator < ActiveModel::Validator
  def validate(record)
    if record.phone_number == ""
      record.errors[:base] << "This format is incorrect"
    end
  end
end