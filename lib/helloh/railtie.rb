require "helloh"
require "rails"

module Helloh
  class Railtie < Rails::Railtie

    rake_tasks do # {{{
      load "tasks/helloh.rake"
    end # }}}

  end
end
