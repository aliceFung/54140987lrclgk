class Playlist < ActiveRecord::Base

  belongs_to :user
  has_many :playlist_selections, :dependent => :destroy
  has_many :songs, through: :playlist_selections


  validates :user, :presence => :true
  validates :name, :presence => :true,
                  :uniqueness => true
end
