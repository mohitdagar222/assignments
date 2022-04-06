class Song < ApplicationRecord
    belongs_to :artist
    has_one :lyric
    validates :name, presence: true
end
