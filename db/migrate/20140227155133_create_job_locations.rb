class CreateJobLocations < ActiveRecord::Migration
  def change
    create_table :spree_job_locations do |t|
      t.references :country

      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
