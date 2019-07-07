
# your solution here


def stops_between_stations (start_line, start_station, end_line, end_station)
    subway ={ 
        red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
        green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
        orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
        }


    start_index =subway[start_line.to_sym].index(start_station)
   end_index =subway[end_line.to_sym].index(end_station)


    if start_line == end_line 
     
     (start_index - end_index).abs

        else
        start_park_street_index = subway[start_line.to_sym].index("Park Street")
       to_park_street = (start_index - start_park_street_index).abs
     

    end_park_street_index = subway[end_line.to_sym].index("Park Street")
    from_park_street = (end_index - end_park_street_index).abs

       total = to_park_street + from_park_street
    end
end

p stops_between_stations('red', 'Alewife', 'red', 'South Station') # 7
p stops_between_stations('red', 'Alewife', 'red', 'Alewife') # 0
p stops_between_stations('red', 'South Station', 'green', 'Kenmore') # 6