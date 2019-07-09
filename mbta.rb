$subwayLines = 
{
    red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
    green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
    orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
}

def oneLine(line, startStation, endStation)
    startingIndex = $subwayLines[line.to_sym].index(startStation)
    endingIndex = $subwayLines[line.to_sym].index(endStation)
    count = 0
    if startingIndex < endingIndex
        i = startingIndex + 1
        while i <= endingIndex 
            puts `Rider arrive at #{line} Line and #{$subwayLines[line.to_sym][i]}.`
            count += 1
            i += 1
        end
    else 
        i = startingIndex - 1 
        while i >= endingIndex
            puts `Rider arrive at #{line} Line and #{$subwayLines[line.to_sym][i]}.`
            count += 1
            i -= 1
        end
    end
    return count
end

def betweenStations(startLine, startStation, endLine, endStation)
    stops = 0
    puts "Rider boards the train a #{startLine} Line and #{startStation}."
    if startLine == endLine
        stops = oneLine(startLine, startStation, endStation)
    else 
        stops = oneLine(startLine, startStation, 'Park Street')
        puts "Rider transfers from #{startLine} Line to #{endLine} Line at Park Street."
        stops += oneLine(endLine, 'Park Street', endStation)
    end
    puts "Rider exits the train a #{endLine} Line and #{endStation}."
    puts "#{stops} stops"
end

betweenStations('red', 'Alewife', 'red', 'Alewife') # 0