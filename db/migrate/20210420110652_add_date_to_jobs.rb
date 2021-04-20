class AddDateToJobs < ActiveRecord::Migration[6.1]
  def change
        add_column :jobs, :date, :date
  end
end
