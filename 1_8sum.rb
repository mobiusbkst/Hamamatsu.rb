# Hamamatsu.rb#58 2015/11/11
# 問題 http://jukensansu.cocolog-nifty.com/planet/2015/11/post-0b4b.html
# 解説 http://minoehon.cocolog-nifty.com/start/2014/07/post-0b4b.html
# 考えかた
# 1-8の数字を一つずつ使って作られる八ケタの数字をすべて生成
# その後問題のように3桁の数字を4つ作り、4つの数字の和を求める
# 和が1725だったらそれぞれの数字の十の位の和を出力し終了

a = [1,2,3,4,5,6,7,8]
permutation = Array.new
permutation = a.permutation(8).collect{|array| array.join}

permutation.each do |i|
  a = i[0..2].to_i
  b = i[2..4].to_i
  c = i[4..6].to_i
  d = (i[6..7] + i[0]).to_i
  sum = a+b+c+d
  if sum == 1725
    print a.to_s[1].to_i + b.to_s[1].to_i + c.to_s[1].to_i + d.to_s[1].to_i
    break
  end
end