class CreateUsers < ApplicationRecord
    validates :name, :email, presence: true
end
