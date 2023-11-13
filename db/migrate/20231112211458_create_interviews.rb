class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.integer :App_id
      t.timestamp :DATE_TIME
      t.string :link, limit: 100
      t.string :venue, limit: 100
      t.timestamps
    end

    add_foreign_key :interviews, :applications, column: :App_id, primary_key: :App_id
  end
end
