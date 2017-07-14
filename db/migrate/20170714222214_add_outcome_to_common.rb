class AddOutcomeToCommon < ActiveRecord::Migration[5.0]
  def change
    add_reference :commons, :outcome, foreign_key: true
  end
end
