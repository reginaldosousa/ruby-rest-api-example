require 'grape'

module ExampleAPI
  class Healthcheck < Grape::API
    desc "Application Status check"
    get "/healthcheck" do
      { status: 'working'}
    end
  end
end

run ExampleAPI::Healthcheck