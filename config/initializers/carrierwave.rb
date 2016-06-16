CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIVLTM4CSMAZD5D7Q',
    :aws_secret_access_key  => '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',
    :region                 => 'eu-west-1'
  }
  config.fog_directory  = "smartgioiosa"
end
