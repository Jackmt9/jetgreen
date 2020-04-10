class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :phone
      t.string :middle_name
      t.string :suffix

      t.timestamps
    end
  end
end
