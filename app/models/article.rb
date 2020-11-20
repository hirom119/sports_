class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :sport
  belongs_to :average_age
  belongs_to :recruitement_team
end
validates :title, :text, presence: true
validates :genre_id, numericality: { other_than: 1 }