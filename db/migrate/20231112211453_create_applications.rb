class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.integer :App_id
      t.integer :cand_id
      t.integer :job_id
      t.string :status, limit: 20
      t.timestamps
    end

    add_index :applications, :App_id, unique: true
    add_foreign_key :applications, :candidate_details, column: :cand_id, primary_key: :cand_id
    add_foreign_key :applications, :jobs, column: :job_id, primary_key: :job_id
  end
end
