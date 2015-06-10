json.array!(@config_files) do |config_file|
  json.extract! config_file, :id, :config, :name,:full_name, :date, :text
  json.url config_file_url(config_file, format: :json)
end
