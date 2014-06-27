class CreateJobOpenings < ActiveRecord::Migration
  def change
    create_table :spree_job_openings do |t|
      t.references :job_location
      t.boolean :active
      t.string :title
      t.text :description
      t.text :requirements

      t.timestamps
    end
  end
end
