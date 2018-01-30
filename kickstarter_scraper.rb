#!/usr/bin/env ruby

require 'nokogiri'
require 'pry'
def create_project_hash
  html =File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
    # projects: kickstarter.css("li.project.grid_4")
  kickstarter.css("li.project.grid_4").each do |project|
    binding.pry
    project
  # title: project.css("h2.bbcard_name strong a").text
end
end
