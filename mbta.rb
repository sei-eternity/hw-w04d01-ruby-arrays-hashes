subway_lines = {
    Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}

def one_line_stops(line, start_station, end_station) 
     start_index = subway_lines[line].index(start_station)
     end_index = subway_lines[line].index(end_station)
      counter = 0
    if start_index < end_index 
        i = start_index + 1
        while i <= end_index
          puts "Rider arrives at #{line} Line and #{subway_lines[line][i]}."
            counter++
            i += 1
        end
    
elsif start_index <= end_index  
    i = start_index - 1
    while  i >= endIndex
       puts "Rider arrives at #{line} Line and #{subway_lines[line][i]}."
            counter++
            i -= 1
    end
end
    return counter
end


def stops_between_stations(start_line, start_station, end_line, end_station) 
     results = 0
    puts "Rider boards the train a #{start_line} Line and #{start_station}."
    if start_line == end_line 
        results = one_line_stops(start_line, start_station, end_station)
     elsif start_line != end_line  
        results = one_line_stops(start_line, start_station, 'Park Street')
        p "Rider transfers from #{start_line} Line to #{end_line} Line at Park Street."
        results += one_line_stops(end_line, 'Park Street', end_station)
        end 
    p "Rider exits the train a #{end_line} Line and #{endStation}."
    p "#{results} stops in total!" 
 end