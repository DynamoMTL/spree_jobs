module Spree
  module Admin
    class JobLocationsController < Spree::Admin::ResourceController
      protected

      def permitted_resource_params
        params.require(:job_location).permit(:address, :city, :country_id)
      end
    end
  end
end
