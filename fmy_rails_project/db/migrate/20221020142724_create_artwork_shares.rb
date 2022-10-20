class CreateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares do |t|
      t.bigint :artwork_id, null: false, presence: true, index: true
      t.bigint :viewer_id, presence: true, index: true
      t.index [:artwork_id, :viewer_id], unique: true
      t.timestamps
    end
    add_foreign_key :artwork_shares, :artworks, column: :artwork_id
    add_foreign_key :artwork_shares, :create_users, column: :viewer_id
  end
end
