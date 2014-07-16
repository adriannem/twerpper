class CreateTwerps < ActiveRecord::Migration
  def change
    create_table :twerps do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
