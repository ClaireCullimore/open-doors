class AddEmailtoJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :email, :string
  end
end
