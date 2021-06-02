FactoryBot.define do
  factory :task do
    title { 'test_title' }
    content { 'test_content' }
    deadline { '2021-05-01 03:24:00' }
    status { 1 }
    priority { 1 }
  end
end
