require "Mechanize"
require "csv"

def initial_urls
  onclicks = []
  links = []
  agent = Mechanize.new
  current_page = agent.get("https://www.13hw.com/jobidx/jobnameidx.html?n=A")
  elements = current_page.search('button')
  elements.each do |ele|
    onclick = ele.get_attribute('onclick').to_s
    link = onclick.slice!(/'[^"]*'/).to_s
    links << link.slice(1..-2).to_s
  end
  links.each do |link|
    get_product('https://www.13hw.com/jobidx/' + link.to_s)
  end
end

def self.get_product(link)
  occupation_names = []
  occupation_links = []
  agent = Mechanize.new
  begin
    page = agent.get(link)
  rescue
    return
  end
  elements =  page.search('.col-xs-6 div')
  elements.each do |ele|
    occupation_name = ele.inner_text
    onclick = ele.get_attribute('onclick').to_s
    part_of_occupation_link = onclick.slice!(/'[^"]*'/).to_s
    occupation_link = 'https://www.13hw.com' + part_of_occupation_link.slice(1..-2).to_s
    puts occupation_name
    CSV.open('db/csv/occupation.csv',"a") do |occupation|
      occupation << [occupation_name, occupation_link]
    end
  end
end

initial_urls
