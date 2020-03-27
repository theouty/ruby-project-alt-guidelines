class CreateOccasions < ActiveRecord::Migration[4.2]
  def change
    create_table :occasions do |t|
      t.string :collab_name
      t.integer :city_id
      t.integer :event_id

      t.timestamps
    end
  end
end