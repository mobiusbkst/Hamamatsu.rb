# １，２，３，４ のいずれかの数字を使って４ケタの整数を作ります。 同じ数字を何度使ってもかまいません。次の問に答えなさい。
# 1 整数は全部で何個できますか。
# 2 できたすべての整数の一の位の数の和を求めなさい。
# 3 できたすべての整数の和を求めなさい。

# 考え方
# repeated_permutationを使いたかった

a = [1,2,3,4]
permutation = Array.new
permutation = a.repeated_permutation(4).collect{|array| array.join}

p permutation.size()

q2Ans = 0
q3Ans = 0

permutation.each do |i|
  q2Ans += i[3].to_i
  q3Ans += i.to_i
end

p q2Ans
p q3Ans



