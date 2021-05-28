class DeadlineTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :deadline, :datetime, null: false,
    default: -> { "now() + cast( '1 months' as INTERVAL )" }
  end
end
