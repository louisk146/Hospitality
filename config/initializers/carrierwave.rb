CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJHKJBOG7BNM6G2HA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
  }

  config.fog_directory  = 'hospitalityapp'                          # required

end
