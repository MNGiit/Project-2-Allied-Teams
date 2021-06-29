class Job < ApplicationRecord
  # this works, try with :scope
  # Job.where(["department = ?", "IT"])
  # scope :costs_more_than, ->(amount) { where("price > ?", amount) }
  scope :filter_function, ->(search) { where("function = ?", search)} # Job.where(["function = ?", "Web Developer"])
  scope :filter_location, ->(search) { where("location = ?", search)} # Job.where(["location = ?", "Washington"])
end
