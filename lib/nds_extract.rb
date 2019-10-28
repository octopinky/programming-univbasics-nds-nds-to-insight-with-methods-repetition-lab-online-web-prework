$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

require 'pry'

pp directors_database
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  result=[]
  #list of directors correctly extracts :name keys out of an AoH where
  source.each do |director|
   result << director[:name]
  end
  result
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  total_gross=0
  #director_totals = directors_totals(source)
  #director_names = list_of_directors(source)
  #movies_gross = source[0][:movies][0][:worldwide_gross]
  
  source.each do |total_names_and_gross|
    #total_gross += total_names_and_gross[:movies][0][:worldwide_gross]
    total_names_and_gross[:movies].each do |mov|
    #binding.pry
      total_gross += mov[:worldwide_gross]
    end
  end
  
  total_gross
end


