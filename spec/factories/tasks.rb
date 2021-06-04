FactoryBot.define do
  factory :task do
    title { 'task_title' }
    content { 'task_content' }
    deadline { '2021-05-1 03:24:00' }
    status { 1 }
    priority { 1 }
    # association :user
  end
  factory :task2, class: "Task" do
    title { 'task2_title' }
    content { 'task2_content' }
    deadline { '2021-05-20 03:24:00' }
    status { 2 }
    priority { 2 }
  end
  factory :task3, class: "Task" do
    title { 'task3_title' }
    content { 'task3_content' }
    deadline { '2021-05-10 03:24:00' }
    status { 3 }
    priority { 3 }
  end
end
