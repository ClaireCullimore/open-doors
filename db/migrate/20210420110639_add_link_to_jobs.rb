class AddLinkToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :link, :string
  end
end
