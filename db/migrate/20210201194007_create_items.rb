class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.references :user, null: false, foreign_key: true
      t.references :yardsale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
