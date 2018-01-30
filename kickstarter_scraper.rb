#!/usr/bin/env ruby

require 'nokogiri'
require 'pry'
def create_project_hash
  html =File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  kickstarter.css("li.project.grid_4").first.each do |project|
    binding.pry
    project
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
end
end
