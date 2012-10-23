module Helloh
  class CLI
    def initialize(argv = [])
      directory = argv[0] || "./config/locales"
      ignore = File.exists?(".hellohignore") ? File.read(".hellohignore").split(/\n|,/) : []

      helloh = Helloh::Compare.new
      helloh.files = Dir.glob(File.join(directory, "??.yml"))
      helloh.ignore = ignore
      helloh.compare!

      helloh.output_results!
    end

    private
    def bail(msg)
      puts msg
      exit(1)
    end
  end
end
