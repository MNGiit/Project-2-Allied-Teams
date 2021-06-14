class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :department
      t.string :function
      t.string :description
      t.boolean :visible, :default => true

      # could make another model called applicants and join the two
      t.integer :new_applicants
      t.integer :active_applicants
      t.integer :hired_applicants

      t.timestamps
    end
  end
end
