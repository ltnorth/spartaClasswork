class Song < ApplicationRecord
	has_many :albums_songs
	has_many :albums, through: :albums_songs
end
