module Spree
  class JobOpening < ActiveRecord::Base
    attr_accessible :title, :active, :description, :requirements
    attr_accessible :job_location_id

    belongs_to :job_location
    has_many :job_applicants

    default_scope order('created_at DESC')
  end
end
