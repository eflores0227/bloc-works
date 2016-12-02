require_relative "bloc/works/version"

module Bloc
  module Works
    class Application
      def call(env)
        [200, {'Content-Type' => 'text/html'}, ["Hello Blocheads!"]]
      end
  end
end
