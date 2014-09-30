module Spree
  module Admin
    class JobOpeningsController < Spree::Admin::ResourceController
      protected

      def permitted_resource_params
        params.require(:job_opening).permit(:title, :active, :description, :requirements, :job_location_id, :external_application_url)
      end
    end
  end
end
