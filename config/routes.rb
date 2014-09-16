Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  resources :job_openings, only: %i(index show)
  resources :job_applicants

  namespace :admin do
    resources :job_openings
    resources :job_applicants
    resources :job_locations
  end

end
