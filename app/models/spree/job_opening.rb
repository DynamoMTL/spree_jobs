module Spree
  class JobOpening < ActiveRecord::Base
    belongs_to :job_location
    has_many :job_applicants

    default_scope order('created_at DESC')
  end
end
