class Room < ApplicationRecord
  has_many :meetings
  validates :name, :capacity, presence: true
  validates :name, uniqueness: true
  validates :capacity, :numericality => { greater_than: 0}
end
