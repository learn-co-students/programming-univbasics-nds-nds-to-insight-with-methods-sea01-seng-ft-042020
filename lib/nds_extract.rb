$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#pp directors_database
#binding.pry
 
def gross_for_director(director_hash)
    
    movie_index = 0 

    worldwide_gross = 0 
    #binding.pry
    while movie_index <

    director_hash[:movies].length do

      worldwide_gross += director_hash[:movies][movie_index][:worldwide_gross]
      
      movie_index += 1 
      
    end
    worldwide_gross

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {
    
  }
  
  row_index = 0 
   
  #binding.pry
  #pp directors_database
  
  while row_index <
  directors_database.length do
    
    director_name = directors_database[row_index][:name]
    
    worldwide_gross = gross_for_director(directors_database[row_index])

    
    row_index += 1
    
    result[director_name] = worldwide_gross
    
  end
  
  result
  
end
 