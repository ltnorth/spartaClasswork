class Album < ApplicationRecord
	has_many :albums_songs
	has_many :songs, through: :albums_songs
end
