FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password "foobar"
  end

  factory :film do
    title "The Godfather"
    poster File.open(File.join(Rails.root, '/public/sample.png'))
  end

  # SAVE

  # Carrierwave sees that there is an image attached to 'poster'.

  # Saves the image to '/uploads'.

  # Changes the initial save request to have 'poster' set to a string that points to the saved image instead.

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