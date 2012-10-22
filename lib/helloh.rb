require "yaml"
require "helloh/compare"

module Helloh
  VERSION = "0.3.5"

  def self.lang_from_filename(file) # {{{
    file.match(/([^\/]+)\.yml$/)[1]
  end # }}}

end
