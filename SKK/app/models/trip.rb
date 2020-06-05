class Trip < ApplicationRecord
  belongs_to :operator
  has_many :trips
end
