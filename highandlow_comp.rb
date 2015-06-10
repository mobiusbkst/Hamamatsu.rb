puts "二分探索（ハイアンドロー）"
ans = rand(1000000000)+1;
low = 1
high = 1000000000
count = 0
while low < high
  mid = ( high + low ) / 2
  puts "検索範囲：#{low}～#{high}"
  puts "#{mid}かな？"
  #puts "1～1000000000までの数字を入力してください。(1～10億)"

  if ans < mid
    puts "Low"
    high = mid
  elsif mid < ans
    puts "High"
    low = mid + 1
  else
    puts "OK!"
    count += 1
    break
  end
  count += 1
end
puts "答え:#{ans}"
puts  "探索回数:#{count}"