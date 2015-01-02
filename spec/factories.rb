FactoryGirl.define do

  factory :user do
    username 'majortom'
  end

  factory :author do
    name 'Dr. Seuss'
  end

  factory :book do
    title 'Green Eggs and Ham'
    published_at '1960-08-12'

    association :author, factory: :author
  end

  factory :review do
    body 'A++++ would read again!!!!!!!!'
    rating 10

    association :book, factory: :book
    association :user, factory: :user
  end

end
