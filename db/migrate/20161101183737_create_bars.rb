class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :specialty_drink
      t.boolean :cash_only
      t.references :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
