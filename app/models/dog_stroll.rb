class DogStroll < ApplicationRecord
  belongs_to :dog
  belongs_to :stroll 
  validates :dog, uniqueness: { scope: :stroll }
end
