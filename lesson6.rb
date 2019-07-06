
while true do
  total_price = gets.chomp

  if total_price[0]=="0" || total_price[0] =="０"
      for i in 0..total_price.length-1 do
        if !(total_price[i] == "0" || total_price[i] == "０")
          total_price = "out"
          break
        end
      end
    if total_price!= "out"
      total_price = "0"
    end
  end

  if total_price == "0" || total_price == "０"
    total_price = total_price.to_i
    break
  elsif total_price.to_i == 0
    puts '入力エラーです。0以上の数字のみで入力してください'
  else
    total_price = total_price.to_i
    break
  end

end

if total_price == 100
  puts "みかんを購入。所持金は0円"
elsif total_price >= 100
  puts "みかんを購入。所持金に余りあり"
else
  puts "みかんを購入することができません"
end