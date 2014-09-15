module Spree
  module Admin
    class JobApplicantsController < ResourceController
      def index
        @job_applicants = JobApplicant.page(params[:page])
      end

      protected

      def permitted_resource_params
        params.require(:job_applicant).permit(:name, :cover, :contact_info, :resume, :intro, :phone, :email, :job_opening_id)
      end
    end
  end
end
