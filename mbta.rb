# your solution here
def stops_between_stations (start_line, start_station, end_line, end_station)

    subway_lines = {
    Red: [
      "South Station",
      "Park Street",
      "Kendall",
      "Central",
      "Harvard",
      "Porter",
      "Davis",
      "Alewife"
    ],
    Green: [
      "Government Center",
      "Park Street",
      "Boylston",
      "Arlington",
      "Copley",
      "Hynes",
      "Kenmore"
    ],
    Orange: [
      "North Station",
      "Haymarket",
      "Park Street",
      "State",
      "Downtown Crossing",
      "Chinatown",
      "Back Bay",
      "Forest Hills"
    ]
  }
    #convert the lines (string to symbls) to deal with them as keys of a hash
    start_line = start_line.to_sym
    end_line = end_line.to_sym

    #Find the index of the start_station and the end_station
    start_station_index = subway_lines[start_line].index(start_station)
    end_station_index = subway_lines[end_line].index(end_station)
  
    #Check if the trip in the same line
    if start_line == end_line
      (start_station_index - end_station_index).abs

    else #IF NOT :

    #Find the intersection station of the first line
    start_line_intersection_index = subway_lines[start_line].index("Park Street")
    #Calculate the distance between start_station and the intersect station 
    trip_to_intersection = (start_station_index - start_line_intersection_index).abs
    #Find the intersection station of the second line
    end_line_intersection_index = subway_lines[end_line].index("Park Street")
    #Calculate the distance between end_station and the intersect station 
    trip_to_destination = (end_station_index - end_line_intersection_index).abs
  
    #calculate the total
    total_trip = trip_to_intersection + trip_to_destination
    end
end