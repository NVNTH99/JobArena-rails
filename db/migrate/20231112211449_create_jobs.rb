class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.string :Title, limit: 30
      t.text :Description
      t.text :Responsibility
      t.text :Requirements
      t.timestamp :Deadline
      t.string :Location, limit: 50
      t.integer :salary
      t.integer :work_days
      t.string :work_hours, limit: 15
      t.string :job_type, limit: 15
      t.text :category
      t.timestamps
    end

    add_index :jobs, :job_id, unique: true
  end
end
