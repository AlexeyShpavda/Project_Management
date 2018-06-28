class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :summary
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
