module Spree
  class JobApplicantsController < StoreController

    respond_to :html

    def new
      @job_opening = ::Spree::JobOpening.find params[:job_opening_id]
      @job_applicant = ::Spree::JobApplicant.new
    end

    def create
    end

  end
end