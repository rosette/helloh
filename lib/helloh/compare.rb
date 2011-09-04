module Helloh
  class Compare

    attr_accessor :files
    attr_reader :results

    def initialize # {{{
      @results = {}
      @files = []
    end # }}}

    def compare! # {{{
      files.each do |file|
        @file = File.basename(file)

        files.each do |other_file|
          next if file == other_file
          @other_file = File.basename(other_file)
          @results[@other_file] ||= { :missing => [] }
          compare_yaml_hash(YAML.load_file(file)[Helloh.lang_from_filename(file)], YAML.load_file(other_file)[Helloh.lang_from_filename(other_file)])
        end

      end
    end # }}}

    def output_results! # {{{
      @results.each_pair do |file, errors|
        if errors[:missing].any?
          puts "\nMissing keys in #{file}"
          puts errors[:missing].map{ |key| "- #{key}" }
        end
      end
    end # }}}

    private

    def compare_yaml_hash(content1, content2, context = []) # {{{
      content1.each do |key, value|

        path = "#{(context+[key]).join(".")}"
        unless content2.include?(key)
          @results[@other_file][:missing] << path unless @results[@other_file][:missing].include?(path)
          next
        end

        if value.is_a?(Hash)
          compare_yaml_hash(value, content2[key], (context.dup << key))  
          next
        end
      end
    end # }}}

  end
end
