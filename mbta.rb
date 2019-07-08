
# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station)
    subway_lines = {
        "red": ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
        "green": ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
        "orange": ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
    }
    p subway_lines[":#{start_line.downcase}"]
    start_station_index = subway_lines[":#{start_line.downcase}"].index(start_station)
    end_station_index =  subway_lines[":#{end_line.downcase}"].index(end_station)
    start_line_int = subway_lines[start_line].index('Park Street')
    end_line_int = subway_lines[end_line].index('Park Street')
    
    if startLine == endLine
        return subway_lines[startLine][start_station_index] - subway_lines[end_line][end_station_index]
    end

end