def filter (n)
    original_data = open('procesos.data').readlines
    lines = original_data.count
    array_data = []
    lines.times do |i|
        array_data << original_data[i].to_i
    end
    copy_data = File.open('procesos_filtrados.data', 'w')
    array_data.each do |x|
        if x >= n
            copy_data.write x.to_s + "\n"
        end
    end
end


n = ARGV[0].to_i

filter(n)

