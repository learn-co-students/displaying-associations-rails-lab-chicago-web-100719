class Artist < ActiveRecord::Base
  has_many :songs
  has_many :notes, through: :songs
  has_many :genres, through: :songs

  def song_count
    self.songs.count
  end
end
