require 'mustache'

module Paramsfile
  class Paramsfile < Mustache

    attr_accessor :data

    # path - String path to template
    # data - Hash of data to fill template with
    def initialize(path, data)
      self.template_path = path
      self.data          = data
    end

    def write
      File.open(config_file_name, 'w') do |file|
        file.write(render_data)
      end
    end

    private

    def render_data
      render(File.read(template_path), data[data.keys.first])
    end

    def config_file_name
      basename = File.basename(template_path)
      basename.gsub(File.extname(basename), '')
    end

  end
end
