FactoryBot.define do
  factory :task do
    title { 'task_title' }
    content { 'task_content' }
    deadline { '2021-05-1 03:24:00' }
    status { 1 }
    priority { 1 }
  end
  factory :task2, class: "Task" do
    title { 'task2_title' }
    content { 'task2_content' }
    deadline { '2021-05-20 03:24:00' }
    status { 2 }
    priority { 2 }
    after(:build) do |task2|
      label2 = create(:label2)
      task2.labellings << build(:labelling, task: task2, label: label2)
    end
  end
  factory :task3, class: "Task" do
    title { 'task3_title' }
    content { 'task3_content' }
    deadline { '2021-05-10 03:24:00' }
    status { 3 }
    priority { 3 }
  end
end
