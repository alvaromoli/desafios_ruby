i = 0
puts "<ul>"
while i < ARGV[0].to_i do
    puts "\t<li>#{i + 1}</i>\n"
    i += 1
end
puts "</ul>"
