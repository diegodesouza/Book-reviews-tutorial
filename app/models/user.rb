class User < ActiveRecord::Base
  has_many :reviews

  validates :username, presence: true

  def recent_reviews
    reviews.order('created_at DESC')
  end
end
