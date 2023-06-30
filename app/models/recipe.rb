class Recipe < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :instructions, presence: true
  validates :instructions, length: {min: 50}
end
