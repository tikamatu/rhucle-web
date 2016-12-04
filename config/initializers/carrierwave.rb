CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAISPJPEY2ZSV2NMHA',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  config.fog_directory = 'rhucle-web-development'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/rhucle-web-development'
end 
