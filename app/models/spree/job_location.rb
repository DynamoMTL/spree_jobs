module Spree
  class JobLocation < ActiveRecord::Base
    belongs_to :country

    alias_attribute :name, :address
  end
end
