class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.boolean :pagado

      t.timestamps
    end
  end
end
