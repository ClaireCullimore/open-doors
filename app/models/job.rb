class Job < ApplicationRecord
  validates :title, :company, :description, :terms, :location, presence: true
  validates :email, confirmation: { case_sensitive: false }
end
