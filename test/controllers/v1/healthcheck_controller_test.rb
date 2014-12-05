require 'minitest/autorun'
require "rack/test"

require File.expand_path(File.dirname(__FILE__) + '/../../../app/controllers/v1/healthcheck_controller')


describe ExampleAPI::V1::HealthcheckController do
  include Rack::Test::Methods

  def app
    ExampleAPI::V1::HealthcheckController
  end
  
  describe 'GET /v1/healthcheck' do
    it 'return the status of application' do
      get '/v1/healthcheck'
      last_response.status.must_equal 200
      JSON.parse(last_response.body).must_equal 'status' => 'working'
    end
  end
end