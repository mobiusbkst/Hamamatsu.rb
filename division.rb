# １×２×３×４×５×・・・　と順に１ずつ大きな整数をかけていきます。 この積について、次の問に答えなさい。出典
# 1 積を２で７回割った商が初めて整数になるのは、いくつまでかけたときですか。
# 2 積を６で１４回割った商が初めて整数になるのは、いくつまでかけたときですか。

# 考え方
# やるだけ
def calcInteger denominator
  factorial = 1
  counter = 1
  loop do 
    counter += 1
    factorial *= counter
    if factorial % denominator == 0
      p counter
      break
    end
  end
end

calcInteger 2**7
calcInteger 6**14