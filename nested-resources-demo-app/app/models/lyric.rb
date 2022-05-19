class Lyric < ApplicationRecord
    belongs_to :song
    validates :song_id, uniqueness: true
    validates :content, presence: true
end
