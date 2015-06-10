class ConfiLoadController < ApplicationController
    def Load
        require 'find'
        $searchpath = '/home/luns/Загрузки/тестовые файлы'
        $pattern = '*'

        Find.find($searchpath) do |path|
            if FileTest.directory?(path)
            else
                lines = File.readlines(path)
                line_count = lines.size
                text = lines.join
                @config_file = ConfigFile.new
                @config_file.object_type = File.basename(path).split('.')[0].to_s
                @config_file.config     = 'test'
                @config_file.name       = File.basename(path)
                @config_file.full_name  = File.path(path)
                @config_file.text       = text
                @config_file.save
                File.delete(path)
            end
        end
    end
end
