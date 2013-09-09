require "middleman-core"
require "middleman-gsass/version"
require 'rails-sass-images'
require "gsass"

module MiddlemanGsass

  class << self
    def registered(app)
      gem_dir = Gem::Specification.find_by_name("gsass").gem_dir
      Sass.load_paths << File.expand_path("./app/assets/stylesheets", gem_dir)

      app.after_configuration do
        RailsSassImages.install(sprockets)
      end

    end

    alias :included :registered
  end
end

::Middleman::Extensions.register(:gsass, MiddlemanGsass)
