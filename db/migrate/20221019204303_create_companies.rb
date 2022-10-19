class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location_city
      t.string :location_state
      t.text :description
      t.text :website
      t.string :industry
      t.integer :size

      t.timestamps
    end
  end
end
