puts "二分探索（ハイアンドロー）"
ans = rand(10)+1;
loop do
  puts "1～10までの数字を入力してください。"
  input = gets.chomp!.to_i
  
  if input < 1 || 10 < input
    redo
  end
  
  if ans < input 
    puts "Low"
  elsif input < ans
    puts "High"
  else
    puts "OK!"
    break
  end
end