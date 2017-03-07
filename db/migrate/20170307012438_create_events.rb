class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :content
      t.integer :status
      t.integer :user_id
      t.belongs_to :templet
      

      t.timestamps
    end
  end
end
