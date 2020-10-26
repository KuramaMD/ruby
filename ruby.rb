require 'watir'
require 'webdrivers'

#Init browser
web = Watir::Browser.new
#Web req
web.goto 'https://demo.bendigobank.com.au'
web.button(name: 'customer_type').click
