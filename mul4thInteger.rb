#連続する４個の整数を掛け合わせると積が９□□□４になりました。（それぞれの□に入る数字はわかりません）
#この連続する４個の整数のうち、最大の数はいくつですか？

a = 1
ans = 0
times = 0
while times <= 99994
  times = a*(a+1)*(a+2)*(a+3)
  if times.to_s =~ /^9\d{3}4$/
    ans = a + 3
  end
  a += 1
end

puts ans
