class Book < ActiveRecord::Base
  belongs_to :author
  has_many :reviews

  validates_presence_of :title, :published_at, :author
end
