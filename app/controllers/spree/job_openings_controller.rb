module Spree
  class JobOpeningsController < StoreController

    respond_to :html

    def index
      @job_openings = ::Spree::JobOpening.where(active: true).order('created_at desc')
      @grouped_job_openings = @job_openings.sort_by{ |o| o.job_location.address }.group_by { |o| o.job_location.city }
    end

  end
end