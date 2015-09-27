vowels = Hash.new
count = 0
('a'..'z').each do |i|
  count += 1
  if "aeiou".include?(i)
    vowels[i] = count
  end
end

puts vowels


