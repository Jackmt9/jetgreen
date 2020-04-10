class CreateFfs < ActiveRecord::Migration[6.0]
  def change
    create_table :ffs do |t|
      t.belongs_to :food, null: false, foreign_key: true
      t.belongs_to :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
