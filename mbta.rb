red_line = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
green_line = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
orange_line = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
def stops_between_stations (start_line, start_station, end_line, end_station)
    total_stop=0
    start_stop = start_line.index(start_station)
    end_stop = end_line.index(end_station)
if start_stop <= end_stop
    for i in start_stop...end_stop do
        total_stop = total_stop +1
    end
            puts total_stop 
    
else
    
    for i in end_stop...start_stop do
            total_stop = total_stop +1
        end
            puts total_stop   
    end
end

# stops_between_stations(red_line,"South Station",green_line,"Kenmore") // 6
# stops_between_stations(red_line,"Alewife",red_line,"South Station") //7
# stops_between_stations(red_line,"Alewife",red_line,"Alewife") // 0
