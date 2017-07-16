class AddCommonToOutcome < ActiveRecord::Migration[5.0]
  def change
    add_reference :outcomes, :common, foreign_key: true
  end
end
