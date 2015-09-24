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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = books(:one)
  end

  test "Has a valid fixture" do
    assert @book.valid?, "Fixture is not valid"
  end

  test "Book title is required" do
    @book.title = nil
    assert_presence(@book, :title)
  end

  test "Book author is required" do
    @book.author = nil    
    assert_presence(@book, :author)
  end

  test "Book description is required" do
    @book.description = nil    
    assert_presence(@book, :description)
  end

  test "Book rating is required" do
    @book.rating = nil    
    assert_presence(@book, :rating)
  end
end
