class AddEmailAndPhoneToJobApplicants < ActiveRecord::Migration
  def up
    add_column :spree_job_applicants, :email, :string
    add_column :spree_job_applicants, :phone, :string
  end

  def down
    remove_column :spree_job_applicants, :email
    remove_column :spree_job_applicants, :phone
  end
end
