def stops_between_stations()

    p 'enter starting line: '
    start_line = gets.chomp

    p 'enter starting station'
    start_station = gets.chomp

    p 'enter ending line: '
    end_line = gets.chomp

    p 'enter ending station'
    end_station = gets.chomp

    lines = {
    
    'red': ['south station','park street','kendall','central','harvard', 'porter', 'davis' ,'alewife'],
    
    'green': ['government center','park street','boylston','arlington','copley','hynes', 'kenmore'],
    
    'orange': ['north station','haymarket','park street','state','cowntown crossing','chinatown','back bay','forest hills']
    
    }
    
    start_line.downcase!
    start_station.downcase!
    end_line.downcase!
    end_station.downcase!
    
    start_line = start_line.to_sym
    end_line = end_line.to_sym
    
    stops = 0
    
    if start_line == end_line 
    
    stops = (lines[start_line].index(start_station) - lines[start_line].index(end_station)).abs
    
    
    else
    
    
    stops += (lines[start_line].index(start_station) - lines[start_line].index('park street')).abs
    
    stops += (lines[end_line].index('park street') - lines[end_line].index(end_station)).abs
    end
    
    stops
    end
    
    