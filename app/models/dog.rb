class Dog < ApplicationRecord
  belongs_to :city
  has_many :dog_strolls
  has_many :strolls, through: :dog_strolls
end
