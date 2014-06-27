class ChangeColumnsOnJobApplicants < ActiveRecord::Migration
  def up
    remove_column :spree_job_applicants, :resume
    remove_column :spree_job_applicants, :cover

    add_column :spree_job_applicants, :intro, :text
    add_column :spree_job_applicants, :cover_file_name, :string
    add_column :spree_job_applicants, :resume_file_name, :string
  end

  def down
    remove_column :spree_job_applicants, :intro
    remove_column :spree_job_applicants, :cover_file_name
    remove_column :spree_job_applicants, :resume_file_name

    add_column :spree_job_applicants, :cover, :text
    add_column :spree_job_applicants, :resume, :binary
  end
end
