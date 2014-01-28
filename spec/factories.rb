FactoryGirl.define do
  factory :space do
    space_setting_id   1
    user_group_id      1
    rent_env_id        1
    num_of_people_id   1
    city_id            1
    atmosphere_id      1
    price_hour        "0"
    price_day         "48"
    price_month       "1200"
    price_year        "10000"
    title             "创智天地"
    content           "五角场商圈创业园区，敬请光临"
    photo             "wujiaochang.jpg"
    detailed          "1,0,1,1,1,1,1,1,1,1,1,1,1,1,1"
    rule              "守则"

    association :space_setting
    association :user_group
    association :rent_env
    association :num_of_people
    association :city
    association :atmosphere
  end

  factory :space_setting do
    content "创意园区"
  end

  factory :user_group do
    content "设计类"
  end

  factory :rent_env do
    content "办公位"
  end

  factory :num_of_people do
    content "1"
  end

  factory :city do
    content "上海"
  end

  factory :atmosphere do
    content "安静的"
  end

end