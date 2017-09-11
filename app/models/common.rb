class Common < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  belongs_to :place
  has_many :transaction
  has_many :outcomes, through: :transactions
end
