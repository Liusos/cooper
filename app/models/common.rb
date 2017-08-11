class Common < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  belongs_to :place

end
