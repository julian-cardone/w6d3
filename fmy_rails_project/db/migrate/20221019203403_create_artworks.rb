class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false, presence: true
      t.string :image_url, null: false, uniqueness: true, presence: true
      t.bigint :artist_id, index: true, presence: true
      t.index [:artist_id, :title], unique: true
      t.timestamps
    end
    add_foreign_key :artworks, :create_users, column: :artist_id
  end
end
