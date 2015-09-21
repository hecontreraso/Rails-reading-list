# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

class Genre < ActiveRecord::Base
  has_many :book_genres
  has_many :books, through: :book_genres
end
