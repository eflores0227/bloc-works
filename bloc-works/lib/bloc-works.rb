require_relative "bloc-works/version"
require_relative "bloc-works/controller"
require_relative "bloc-works/dependencies"
require_relative "bloc-works/router"
module BlocWorks
  class Application
    def call(env)
          [200, {'Content-Type' => 'text/html'}, ["Hello Blocheads!"]]
    end
  end
end
