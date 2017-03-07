class CreateTemplets < ActiveRecord::Migration[5.0]
  def change
    create_table :templets do |t|
      t.string :typename
      t.integer :stutus

      t.timestamps
    end
  end
end
