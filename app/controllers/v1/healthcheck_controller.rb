require 'grape'

module ExampleAPI
  module V1
    class HealthcheckController < Grape::API
      
      version :v1, using: :path

      format :json
      default_format :json
      
      desc 'Check application status'
      get :healthcheck do
        { status: 'working' }
      end
    end
  end
end