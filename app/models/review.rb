class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates_presence_of :rating, :body, :book, :user
end
