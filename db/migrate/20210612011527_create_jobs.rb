class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :code
      t.string :description
      t.string :industry
      t.string :function
      t.string :location
      t.string :department
      t.integer :experience_from
      t.integer :experience_upto
      t.integer :positions
      t.integer :annual_salary_from
      t.integer :annual_salary_upto
      t.string :currency
      t.boolean :show_salary_details, :default => true

      t.boolean :visible, :default => true

      # could make another model called applicants and join the two
      t.integer :new_applicants
      t.integer :active_applicants
      t.integer :hired_applicants

      t.timestamps
    end
  end
end
