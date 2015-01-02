require 'rails_helper'

describe User do
  describe '#recent_reviews' do

    it 'returns the most recent reviews ordered by creation time' do
      user = FactoryGirl.create(:user)

      first_book = FactoryGirl.create(:book)
      second_book = FactoryGirl.create(:book)
      third_book = FactoryGirl.create(:book)

      oldest_review = FactoryGirl.create(:review, user: user,
      book: first_book, created_at: '2012-04-04')
      newest_review = FactoryGirl.create(:review, user: user,
      book: second_book, created_at: '2013-07-01')
      middle_review = FactoryGirl.create(:review, user: user,
      book: third_book, created_at: '2013-02-12')

      expect(user.recent_reviews).to eq([newest_review, middle_review, oldest_review])
    end
  end
end
