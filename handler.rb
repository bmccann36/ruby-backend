require 'bundler/setup'
require 'aws-sdk-dynamodb'
require 'aws-sdk-s3'

DDB_ClIENT = Aws::DynamoDB::Client.new

def process(event:, context:)


  resp = DDB_ClIENT.put_item({
    item: event,
    table_name: 'LeekoMessageTemplate',
  })

  puts "Stored "

end