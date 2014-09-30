class AddExternalApplicationUrlToJobOpenings < ActiveRecord::Migration
  def up
    add_column :spree_job_openings, :external_application_url, :string
  end

  def down
    remove_column :spree_job_openings, :external_application_url
  end
end
