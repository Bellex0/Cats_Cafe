class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.integer :cat_id

      t.timestamps
    end
  end
end
