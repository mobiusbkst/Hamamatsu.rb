# ある直方体の高さはたてより１ｃｍ長く、横より１ｃｍ短いです。 その体積は３□□□□□２６ｃ㎡です。
# （５個の□の数はわかりません） この直方体の高さは何ｃｍですか。

#考え方
# 3√30000026と3√39999926 が300cm台なのでその辺を目指して計算

 (300...400).each do |i|
  cubic = i * (i + 1) * (i - 1)
  if cubic.to_s =~ /^3\d{5}26$/
    p i
    break
  end
end