class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.references :bill, index: true

      t.timestamps
    end
  end
end
