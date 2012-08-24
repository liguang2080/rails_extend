class File
  def self.new_remote(url)
    tmp_path  = Rails.root.to_s + "/tmp/#{RandomCode.mix_string(16)}#{File.extname(url)}"

    `wget -q -O #{tmp_path} #{url}`

    if block_given?
      begin
        yield tmp_path
      ensure
        FileUtils.rm([tmp_path])
      end
    else
      return tmp_path
    end
  end
end
