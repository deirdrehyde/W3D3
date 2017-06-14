class CreateShortenedUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :shortened_url, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :shortened_urls, :user_id 
  end
end