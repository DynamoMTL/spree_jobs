module Spree
  module Admin
    class JobApplicantsController < ResourceController
      def index
        @job_applicants = JobApplicant.page(params[:page])
      end
    end
  end
end
