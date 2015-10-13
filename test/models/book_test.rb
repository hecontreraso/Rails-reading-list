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
  should validate_presence_of(:title)
  should validate_presence_of(:author)
  should validate_presence_of(:description)
  should validate_presence_of(:rating)

  def setup
    @book = books(:one)
  end

  test "Has a valid fixture" do
    assert @book.valid?, "Fixture is not valid"
  end
end
