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
  test "the truth" do
    assert true
  end
end
