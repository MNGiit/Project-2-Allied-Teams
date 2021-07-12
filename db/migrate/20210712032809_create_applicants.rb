class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      # t.belongs_to :author, foreign_key: true
      t.belongs_to :job #, foreign_key: true
      t.belongs_to :user

      t.timestamps
    end
  end
end
