class CreateCandidateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_details do |t|
      t.integer :cand_id
      t.binary :prof_pic
      t.string :First_name, limit: 30
      t.string :Last_name, limit: 30
      t.string :Gender, limit: 20
      t.string :Disability, limit: 30
      t.date :Date_of_Birth
      t.string :Linkedin, limit: 255
      t.string :Phone, limit: 20
      t.text :Languages
      t.text :Address
      t.string :Nationality, limit: 50
      t.binary :Resume
      t.text :Skills
      t.text :preference_category
      t.string :email, limit: 100
      t.timestamps
    end

    add_index :candidate_details, :cand_id, unique: true
  end
end
