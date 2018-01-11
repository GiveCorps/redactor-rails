class RedactorRails::Picture < RedactorRails::Asset

  def data=(file)
    self.data_file_name = file.original_filename
    self.data_file_size = 10
    self.data_content_type = file.content_type
  end

  def url
    '#'
  end
end
