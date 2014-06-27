class CreateJobApplicants < ActiveRecord::Migration
  def change
    create_table :spree_job_applicants do |t|
      t.references :job_opening

      t.string :name
      t.text   :cover
      t.string :contact_info

      t.binary :resume # uses paperclip_database

      t.timestamps
    end
  end
end
