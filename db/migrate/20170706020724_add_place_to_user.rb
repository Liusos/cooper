class AddPlaceToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :place, foreign_key: true
  end
end
