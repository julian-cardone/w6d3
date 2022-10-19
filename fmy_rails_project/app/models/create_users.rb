# == Schema Information
#
# Table name: create_users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#
class CreateUsers < ApplicationRecord
    validates :name, :email, presence: true
 
    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork
end
