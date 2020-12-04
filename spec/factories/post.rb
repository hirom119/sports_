FactoryBot.define do
  factory :post do
    place                 {"あああ"}
    recruitment_team_id   {2}
    competition           {2}
    gender_id             {2}
    average_age_id        {2}
    remarks               {"アああ"}
    association :user
  end
end


 