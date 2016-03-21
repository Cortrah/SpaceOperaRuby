FactoryGirl.define do
  factory :position do
    name "MyString"
    code "MyString"
    color 1
    first_turn 1
    last_turn 1
    is_secret false
    game_id 1
  end
end
