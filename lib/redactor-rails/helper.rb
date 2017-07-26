module RedactorRails
  module Helpers
    # Setting Redactor Language
    def redactor_lang(lang = 'en')
      javascript_include_tag "redactor-rails/langs/#{lang}.js"
    end

    class << self
      def parameterize_filename(filename)
        # return filename unless Ckeditor.parameterize_filenames

        extension = File.extname(filename)
        basename = filename.gsub(/#{extension}$/, "")

        [basename.parameterize(separator: '_'), extension].join.downcase
      end
    end
  end
end
