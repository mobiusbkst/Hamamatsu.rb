require 'matrix'
# A^nの計算
def pow(a, n)
  b = Matrix.I(a.row_size)
  while(n > 0)
    # 最下位ビットが立っていたら普通に掛け算する
    if (n & 1) != 0
      b = b * a
    end
    # aを順次二乗してくと計算はやい
    a = a * a
    n >>= 1
  end
  return b
end

def fib(n)
  a = Matrix[[1, 1],[1, 0]]
  a = pow(a, n)
  return a[1, 0]
end
start0 = Time.now
puts fib(1)           #10^0
end0 = Time.now

puts fib(2)
puts fib(3)
puts fib(4)
start1 = Time.now
puts fib(10)          #10^1
start2 = Time.now
puts fib(100)         #10^2
start3 = Time.now
puts fib(1000)        #10^3
start4 = Time.now
puts fib(10000)       #10^4
start5 = Time.now
puts fib(100000)      #10^5
start6 = Time.now
puts fib(1000000)     #10^6
start7 = Time.now
#puts fib(10000000)    #10^7
#start8 = Time.now
#puts fib(100000000)   #10^8
#start9 = Time.now
#puts fib(1000000000)  #10^9
#end9 = Time.now
p "    n   |     実行時間[s]     "
p "------------------------------"
p "  10^0  |    #{end0 - start0} "
p "  10^1  |    #{start2 - start1} "
p "  10^2  |    #{start3 - start2} "
p "  10^3  |    #{start4 - start3} "
p "  10^4  |    #{start5 - start4} "
p "  10^5  |    #{start6 - start5} "
p "  10^6  |    #{start7 - start6} "
#p "  10^7  |    #{start8 - start7} "
#p "  10^8  |    #{start9 - start8} "
#p "  10^9  |    #{end9 - start8} "
