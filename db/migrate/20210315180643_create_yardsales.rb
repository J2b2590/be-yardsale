class CreateYardsales < ActiveRecord::Migration[6.0]
  def change
    create_table :yardsales do |t|
      t.string :streetAddress
      t.integer :zipcode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
