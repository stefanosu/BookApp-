class Book < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :author, presence: true
    validates :img, presence: true
    validates :genre, presence: true

end
