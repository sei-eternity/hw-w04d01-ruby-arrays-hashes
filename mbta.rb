
# your solution here
def stops_between_stations(f_line, f_stop, s_line, s_stop)
    line = {
          Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
          Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
          Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
        }
    if f_line == s_line
    (line[f_line.to_sym].index(f_stop) - line[s_line.to_sym].index(s_stop)).abs
    else
    (line[f_line.to_sym].index(f_stop) - line[f_line.to_sym].index("Park Street")).abs + (line[s_line.to_sym].index("Park Street") - line[s_line.to_sym].index(s_stop)).abs
    end
end
# stops_between_stations("Red", "Davis", "Red", "Alewife")
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

# I have locked some of the code online