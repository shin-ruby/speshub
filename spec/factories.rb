FactoryGirl.define do
  factory :space do
    space_setting  "1"
    user_group     "1"
    rent_env       "1"
    num_of_people  "1"
    city           "上海"
    price_hour     "0"
    price_day      "48"
    price_month    "1200"
    price_year     "10000"
    title          "创智天地"
    content        "五角场商圈创业园区，敬请光临"
    photo          "wujiaochang.jpg"
    detailed       "1,2,3,4,6,7"
  end

  factory :space_setting do
    content "创意园区"
  end

end