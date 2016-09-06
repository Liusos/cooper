class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :depto
      t.string :birthyear
      t.string :genere
      t.string :email
      t.string :condo

      t.timestamps
    end
  end
end
