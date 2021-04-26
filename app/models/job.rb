class Job < ApplicationRecord
  validates :title, :company, :description, :terms, :location, presence: true
end
