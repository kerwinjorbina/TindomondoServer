class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.timestamp :start_time
      t.integer :duration
      t.integer :registration_limit
      t.integer :registration_min
      t.references :user, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
