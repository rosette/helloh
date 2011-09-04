namespace :helloh do

  desc "Compare localization files and show missing keys"
  task :compare do # {{{
    helloh = Helloh::Compare.new
    helloh.files = Dir.glob(Rails.root.join("config/locales/*.yml"))
    helloh.compare!
    helloh.output_results!
  end # }}}

end
