
# your solution here

def stops_between_stations(start_line, start_station, end_line, end_station)
    subway_lines = {
    red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
    green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
    orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
}

    start_station_index = subway_lines[start_line.downcase.to_sym].index(start_station)
    end_station_index =  subway_lines[end_line.downcase.to_sym].index(end_station)
    start_line_int = subway_lines[start_line.downcase.to_sym].index('Park Street')
    end_line_int = subway_lines[end_line.downcase.to_sym].index('Park Street')
    
    stops = 0
    if start_line == end_line
        stops = (start_station_index - end_station_index).abs
    else
        stops = (start_station_index - start_line_int).abs + (end_line_int - end_station_index).abs
    end 

    return stops
end
stops_between_stations("red", "Kendall", "red", "Porter")
