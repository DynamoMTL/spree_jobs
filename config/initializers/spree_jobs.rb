module Spree
  AppConfiguration.class_eval do
    preference :spree_jobs_email, :string, :default => nil
  end
end
