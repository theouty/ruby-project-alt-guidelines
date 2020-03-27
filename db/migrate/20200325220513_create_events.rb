class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.integer :date_digits
      t.integer :avg_age_attendees

      t.timestamps
    end
  end
end