require "yukiusagi/version"
require "sass"

module Yukiusagi
  Sass.load_paths << File.expand_path("../app/assets/stylesheets", __FILE__)
  if defined?(Rails)
    class Engine < Rails::Engine
    end
  end
end
