class CreateCommonsOutcomes < ActiveRecord::Migration[5.0]
  def change
    create_table :commons_outcomes do |t|
      t.references :common, foreign_key: true
      t.references :outcome, foreign_key: true
    end
  end
end
