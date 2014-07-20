class RedactorRails::Attachment < RedactorRails::Asset
  has_attached_file :data,
                    url: "/redactor_rails/attachments/:id/:filename",
                    path: ":rails_root/public/redactor_rails/attachments/:id/:filename"

  validates_attachment_size :data, less_than: 100.megabytes
  validates_attachment_presence :data

  validates_attachment_content_type :data, :content_type => ["application/pdf","application/vnd.ms-excel",
           "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
           "application/msword",
           "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
           "text/plain"]

  def url_content
    url(:content)
  end

end
