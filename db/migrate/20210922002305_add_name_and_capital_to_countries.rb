class AddNameAndCapitalToCountries < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :name, :string
    add_column :countries, :capital, :string
  end
end
