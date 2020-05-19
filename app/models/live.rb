class Live < ApplicationRecord
  belongs_to :artist
  has_many :goods
end
