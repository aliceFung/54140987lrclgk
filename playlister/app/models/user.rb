class User < ActiveRecord::Base

  has_many :playlists, dependent: :destroy

  # # extra stuff, not needed here
  # has_many :playlist_selections, through: :playlists
  # has_many :songs, through: :playlist_selections
end
