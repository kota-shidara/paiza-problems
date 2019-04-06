n = gets.to_i
n.times do
  int = gets.gsub(/[^\d]/, "").to_i
  a = []
  15.times do |i|
    num = int / 10 ** (14 - i)
    a << num
    int -= num * (10 ** (14 - i))
  end
  odd_sum = a[1] + a[3] + a[5] + a[7] + a[9] + a[11] + a[13]
  even_sum = 0
  8.times do |i|
    doubled = a[i * 2] * 2
    if doubled >= 10
      doubled = 1 + (doubled - 10)
    end
    even_sum += doubled
  end
  10.times do |i|
    puts i if (odd_sum + even_sum + i) % 10 == 0
  end
end