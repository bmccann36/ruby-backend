require './handler.rb'
require 'json'

item_to_save = {
  templateId: 'yoyoyo',
  encodedHtml: 'mynewitem'
}

process(event: item_to_save,context:{})

