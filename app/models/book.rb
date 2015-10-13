# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string
#  author      :string
#  description :text
#  amazon_id   :string
#  created_at  :datetime
#  updated_at  :datetime
#  rating      :integer
#  finished_on :date
#  keywords    :text
#

class Book < ActiveRecord::Base

  has_many :book_genres
  has_many :genres, through: :book_genres

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  scope :filter, ->(name){
    joins(:genres).where('genres.name = ?', name) if name.present?
  }

  before_save :set_keywords

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true 
  validates :description, presence: true 
  validates :rating, presence: true 

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, author, description].map(&:downcase).join(' ')
    end
end
