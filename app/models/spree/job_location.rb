module Spree
  class JobLocation < ActiveRecord::Base
    attr_accessible :address, :city, :country_id

    belongs_to :country

    alias_attribute :name, :address
  end
end
