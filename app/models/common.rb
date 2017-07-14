class Common < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  belongs_to :place
  has_and_belongs_to_many :outcomes
end
