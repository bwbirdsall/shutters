include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :user, :class => User do
    username "Mac"
    password "Mac"
    password_confirmation "Mac"
  end
end

FactoryGirl.define do
  factory :photo, class: Photo do
    image { fixture_file_upload(Rails.root.join('public', 'system', 'photos', 'images', '000', '000', '004', 'original', 'raccoon-tuxedo.jpg'), "image/jpg") }
    association :user, factory: :user
  end
end

FactoryGirl.define do
  factory :tag, class: Tag do
    association :user, factory: :user, username: "Mac"
    association :photo, factory: :photo
  end
end
