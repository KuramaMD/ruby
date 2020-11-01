require 'watir'
require 'webdrivers'

#Init browser
web = Watir::Browser.new
#Web req
web.goto 'https://demo.bendigobank.com.au'
web.button(name: 'customer_type').click
sleep(5)

web.h6s(class: 'grouped-list__group__heading').count
puts web.h6s(class: 'grouped-list__group__heading').map(&:text)

web.divs(class: 'css-aralps').count
puts web.divs(class: 'css-aralps').map(&:text)

web.divs(class: 'RSu7yTva4n').count
puts web.divs(class: 'RSu7yTva4n').map(&:text)
 

scraped_list = web.divs(class: '_2KKn-lhKbH').map(&:text)

#--
sleep(5)
class FileMaker
    require 'csv'
    attr_reader :scraped_list
  
    def initialize(scraped_list)
end
  
    def save_file
      File.open("slist.json", "w+") do |file|
        file.puts scraped_list
      end
    end
  end
  
  FileMaker.new(scraped_list).save_file
