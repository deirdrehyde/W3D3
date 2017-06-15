class DropUrls < ActiveRecord::Migration[5.0]
  def change
    drop_table :shortened_urls
  end
end
