def stops_between_stations (start_line, start_station, end_line, end_station)
Red_line = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
Green_line = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
Orange_line = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]

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

# stops_between_stations(Red_line,"South Station",Green_line,"Kenmore") // 6
# stops_between_stations(Red_line,"Alewife",Red_line,"South Station") //7
# stops_between_stations(Red_line,"Alewife",Red_line,"Alewife") // 0
