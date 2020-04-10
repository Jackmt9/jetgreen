class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.belongs_to :passenger, null: false, foreign_key: true
      t.belongs_to :plane, null: false, foreign_key: true
      t.string :status, default: "ON TIME"
      t.date :depart
      t.date :arrive
      t.datetime :departure

      t.timestamps
    end
  end
end
