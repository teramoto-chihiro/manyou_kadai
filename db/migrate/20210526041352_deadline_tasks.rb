class DeadlineTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :deadline, :datetime, null: false,
    default: Time.zone.now.next_month
  end
end
