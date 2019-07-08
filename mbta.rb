

subway_lines [
    red_line =>  ["south station","park street","kendall","Central","Harvard","Porter","Davis","Alewife"]
    green_line => ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"]
    orange_line => ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","forest Hills"]

start_Station_index = subway_lines[start_line].index(start_station)
	# def end_station_index = subway_lines[end_line].index(end_station)
	end_station_index = subway_lines[end_line].index(end_station)
    if start_line == end_line 
     (start_station_index - end_station_index).abs
	end 
def stops_between_stations

end