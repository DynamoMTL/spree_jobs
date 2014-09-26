object @job_opening
attributes :id, :title, :description, :requirements

child job_location: :location, if: lambda(&:job_location) do
  extends 'spree/job_openings/job_location'
end
