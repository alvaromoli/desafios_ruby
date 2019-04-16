def to_minutes (array)
    array.map {|x| x/60}
end

seconds = [100, 50, 1000, 5000, 1000, 500]

print to_minutes(seconds)