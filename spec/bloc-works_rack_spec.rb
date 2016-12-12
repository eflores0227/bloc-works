require_relative '../lib/bloc_works.rb'
require 'test/unit'
require 'rack/test'

class BlocWorksRouterTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks::Application.new
  end

  def test_it_routes_http_to_controller_and_action
    get "/books/welcome"

    assert last_response.ok?
    assert_equal(200, last_response.status)
    assert_equal("text/html", last_response.content_type)
    assert_equal("Hello Blocheads!", last_response.body)
  end

  def test_it_routes_http_to_fav_icon
    get "/favicon.ico"

    assert_equal(404, last_response.status)
  end
end
