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
    validates :username, presence: true

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy,
        inverse_of: :artist

    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy,
        inverse_of: :viewer
    
    has_many :comments,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Comments,
        dependent: :destroy,
        inverse_of: :author

    has_many :shared_artworks,
        through: :shares,
        source: :artwork
end
