class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :iso_3_code
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.decimal :latitude, {:precision=>10, :scale=>6}

      t.timestamps
    end
  end
end
