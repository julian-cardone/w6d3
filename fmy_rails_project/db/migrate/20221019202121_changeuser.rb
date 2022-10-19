class Changeuser < ActiveRecord::Migration[7.0]
  def change
    remove_column :create_users, :name

    remove_column :create_users, :email

    add_column :create_users, :username, :string, uniqueness: true, presence: true
  end
end
