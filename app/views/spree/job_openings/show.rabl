object @job_opening
attributes :id, :title, :description, :requirements, :external_application_url

child({job_location: :location}, if: lambda(&:job_location)) do
  extends 'spree/job_openings/job_location'
end
