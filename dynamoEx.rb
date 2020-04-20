
require 'bundler/setup'
require "aws-sdk"

Aws.config.update({
  region: "us-east-1",
})

dynamodb = Aws::DynamoDB::Client.new

table_name = 'LeekoMessageTemplate'

item = {
   templateId: 'yoyoyo',
   encodedHtml: 'yoyoyo'
}

params = {
    table_name: table_name,
    item: item
}

begin
    dynamodb.put_item(params)
    puts "Added item "

rescue  Aws::DynamoDB::Errors::ServiceError => error
    puts "Unable to add item:"
    puts "#{error.message}"
end
