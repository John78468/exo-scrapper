#data_csv = {}
#
#CSV.parse(full_name, phone_number: true)
#
#CSV.parse(content, headers: :first_row).map(&:to_h)
#puts new_data = CSV.read("data.csv", {:full_name => true, :phone_number => true} )
#end
#CSV.foreach ('data.csv') do |row|row
#puts row.inspect
#end
#CSV.open("data.csv", "wb") {|csv| h.to_a.each {|elem| csv << elem} }

  #data.first.to_h

  data = 'data_csv'
  CSV.open(data, mode 'w') do |csv|
  data.each{ |data| csv << data}
  end
  puts CSV.open(data, mode 'r').read