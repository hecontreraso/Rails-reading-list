# == Schema Information
#
# Table name: book_genres
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  genre_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class BookGenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
