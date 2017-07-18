CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :s3_access_key_id      => ENV['S3_ACCESS_KEY'],                        # required
    :s3_secret_access_key  => ENV['S3_SECRET_KEY'],                     # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'

  }
  config.fog_directory  = ENV['S3_Bucket']                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

  config.cache_dir      ="#{Rails.root}/tmp/uploads"
  config.fog_directory  = ENV['S3_Bucket']  

end