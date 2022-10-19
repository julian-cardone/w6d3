class Changeartistidnull < ActiveRecord::Migration[7.0]
  def change
    change_column :artworks, :artist_id, :bigint, null: false, index: true, presence: true
  end
end
