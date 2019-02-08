class AwsService
  def initialize
    @file_name = ''
    @location  = ''
  end

  def self.upload()
    aws = AwsService.new()
    aws.config
    aws.send_pdf
  end

  def config
    Aws.config.update({
      region:      ENV['AWS_REGION'],
      credentials: Aws::Credentials.new(ENV['ACCESS_KEY_ID'], ENV['SECRET_ACCESS_KEY'])
      })
  end

  def send_pdf
    s3  = Aws::S3::Resource.new
    pdf = s3.bucket('').object('')
    pdf.upload_file('', { acl: 'public-read' })
  end
end
