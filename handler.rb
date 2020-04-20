require 'bundler/setup'
require "aws-sdk"
require 'json'

@dynamodb = Aws::DynamoDB::Client.new


def hello(event:, context:) 
  table_name = 'LeekoMessageTemplate'

  item = event
  
  params = {
      table_name: table_name,
      item: item
  }
  
  begin
      @dynamodb.put_item(params)
      puts "Added item "
  
  rescue  Aws::DynamoDB::Errors::ServiceError => error
      puts "Unable to add item:"
      puts "#{error.message}"
  end

  return 'function done'
end
