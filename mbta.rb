
# your solution here
def stops_between_stations(start_Line, start_Station, end_Line, end_Station) {
    lines = {
        red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
       
        green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
       
        orange: ["North Station", "Haymarket", "Park Street", "State","Downtown Crossing", "Chinatown",
             "Back Bay", "Forest Hills"],
    }


    startStation = lines[start_Line].index(start_Station) +1;
    endStation = lines[end_Line].index(end_Station) +1;

    if (start_Line == end_Line) 
        return ((startStation) - (endStation));
    
    elsif 
        toPS = lines[start_Line].index("Park Street")
        toPS = (startStation - toPS).abs;
        fromPS = lines[end_Line].index("Park Street")
        fromPS = (fromPS - endStation).abs;
        destination = toPS + fromPS
        destination
    
    end
end



    stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
    stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
    stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6