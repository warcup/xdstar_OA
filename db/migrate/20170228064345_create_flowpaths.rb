class CreateFlowpaths < ActiveRecord::Migration[5.0]
  def change
    create_table :flowpaths do |t|
      t.references :templet, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :sequence

      t.timestamps
    end
  end
end
