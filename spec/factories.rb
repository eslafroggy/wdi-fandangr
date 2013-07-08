FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password "foobar"
  end

  factory :film do
    title "The Godfather"
  end

  factory :showing do
    showing_on "2013-01-01 12:30:00"
    film
  end

  factory :ticket do
    seat "A1"
    showing

    factory :reserved_ticket do
      user
    end
  end
end