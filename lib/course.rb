require 'nokogiri'
require 'open-uri'

require_relative './scraper.rb'


class Course

  attr_accessor :title, :schedule, :description
  @@all = []

  def initialize
    save
    # @html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

end
