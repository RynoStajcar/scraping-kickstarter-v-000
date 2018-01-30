require 'nokogiri'
require 'pry'
def create_project_hash
  html =File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  kickstarter.each do |project|
    binding.pry
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  
end
