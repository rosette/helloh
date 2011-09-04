require "yaml"

module Helloh
  VERSION = "0.2"

  autoload :Compare, "helloh/compare"
  autoload :Railtie, "helloh/railtie"

    def self.lang_from_filename(file) # {{{
      file.match(/([^\/]+)\.yml$/)[1]
    end # }}}

end

require "helloh/railtie" if defined?(Rails)
