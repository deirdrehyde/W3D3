class AddUrlIdAndRemoveUrlString < ActiveRecord::Migration[5.0]
  def change
    remove_column :visits, :shortened_url
    add_column :visits, :shortened_url_id, :integer, null: false
    add_index :visits, :shortened_url_id
  end
end
