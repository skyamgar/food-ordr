class Locality < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :city_id, presence: true
  belongs_to :city
  belongs_to :state
  has_many :addresses
  has_one :time_slot
end
