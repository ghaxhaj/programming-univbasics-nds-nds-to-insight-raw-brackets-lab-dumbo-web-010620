$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


require 'directors_database'

def directors_totals
  nds = directors_database
  index = 0

  dir_name_to_movies_total = {}

  while index < nds.length do
    director_index = 0
    name = nds[index][:name]
    movie = nds[index][:movies]
    total = 0

    while director_index < movie.length do
      total = total + movie[director_index][:worldwide_gross]
      director_index +=1
    end

    dir_name_to_movies_total[name] = total
    index +=1
  end

  return dir_name_to_movies_total
end




  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
