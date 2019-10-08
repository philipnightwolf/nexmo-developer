class Tasks
  def self.document_meta(path)
    YAML.load_file(path)
  end
end
