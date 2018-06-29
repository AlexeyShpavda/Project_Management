class CreateProjectsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_tasks, id: false do |t|
      t.integer :project_id
      t.integer :task_id
    end
  end
end
