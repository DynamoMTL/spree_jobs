object @job_location

attributes :address, :city

node(:country) { |location| location.country.name }
