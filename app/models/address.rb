class Address < ActiveRecord::Base
  belongs_to :locality
  belongs_to :order
end
