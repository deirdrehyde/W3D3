class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.integer :user_id, null: false
      t.string :shortened_url, null: false
      t.timestamps
    end
    add_index :visits, :user_id, unique: true
  end
end
