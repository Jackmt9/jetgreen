class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.string :type
      t.integer :seat_count
      t.boolean :wifi?

      t.timestamps
    end
  end
end
