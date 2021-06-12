class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :department
      t.string :function
      t.string :description
      t.boolean :visible, :default => true

      t.timestamps
    end
  end
end
