class Changenull2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :create_users, :username

    add_column :create_users, :username, :string, null: false, uniqueness: true, presence: true
  end
end
