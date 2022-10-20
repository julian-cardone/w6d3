class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.bigint :author_id, unique: true, null: false
      t.bigint :artwork_id, null: false
      t.timestamps
    end
    add_foreign_key :comments, :artworks, column: :artwork_id
    add_foreign_key :comments, :create_users, column: :author_id
  end
end
