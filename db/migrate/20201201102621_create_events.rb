class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.time :starts_at
      t.integer :expected_participants_count
      t.string :sport
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
