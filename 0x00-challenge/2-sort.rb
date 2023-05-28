###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
  # skip if not an integer
  next unless arg =~ /^-?[0-9]+$/

  i_arg = arg.to_i

  is_inserted = false
  i = 0
  l = result.size

  while !is_inserted && i <= l do
    if result[i].nil? || result[i] >= i_arg
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
    i += 1
  end

  result << i_arg unless is_inserted
end

puts result

