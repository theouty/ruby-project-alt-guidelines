class CreateCitys < ActiveRecord::Migration[4.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :vibe
      t.integer :avg_temperature
      
      t.timestamps
    end
  end
end