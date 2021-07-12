class Job < ApplicationRecord
  has_many :applicants
  # scope :costs_more_than, ->(amount) { where("price > ?", amount) } # https://guides.rubyonrails.org/active_record_querying.html#scopes
  scope :filter_function, ->(search) { where("function = ?", search)} # Job.where(["function = ?", "Web Developer"])
  scope :filter_location, ->(search) { where("location = ?", search)} # Job.where(["location = ?", "Washington"])
  scope :filter_department, ->(search) { where("department = ?", search)} # Job.where(["department = ?", "IT"])
end
