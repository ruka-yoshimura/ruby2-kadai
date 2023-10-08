require "csv"

def janken
 puts "じゃんけん..."
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 your_hand = gets.to_i
 computer_hand = rand(3)

 if your_hand > 3
     puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)のいずれかを入力してください。"
    return true

 elsif your_hand == 3 
  puts "-----------------------------"
  puts "戦わないが選択されたので、ゲームを終了します。"
  exit
 end

 jankens = ["グー","チョキ","パー"]
 puts "ホイ！"
 puts "-----------------------------"
 puts "あなた:#{jankens[your_hand]} 相手:#{jankens[computer_hand]}"
  if (your_hand == computer_hand)
    puts "あいこです。もう一度じゃんけんをします。"
    puts "-----------------------------"
   return true

  elsif(your_hand == 0 && computer_hand == 1)||(your_hand == 1 && computer_hand == 2)||(your_hand == 2 && computer_hand == 0)
    puts"じゃんけんに勝ちました！"
    $janken_judge = "win"
    return acchimuite_hoi

  else
    puts "じゃんけんに負けました"
    $janken_judge = "lose"
    return acchimuite_hoi
  end
end

def acchimuite_hoi
 puts "-----------------------------"
 puts "あっち向いて〜"
 puts "0(上)1(右)2(下)3(左)"

 your_direction = gets.to_i
 computer_direction = rand(4)

 acchimuitehois = ["上","右","下","左"]
 puts "ホイ！"
 puts "-----------------------------"
 if your_direction > 3
  puts "0(上) 1(下) 2(左) 3(右)のいずれかを入力してください。じゃんけんからやり直します。"
  return true
 end

 puts "あなた:#{acchimuitehois[your_direction]} 相手:#{acchimuitehois[computer_direction]}"
  if (your_direction == computer_direction && $janken_judge == "win")
   puts "あなたの勝ちです!"
   return false

  elsif (your_direction == computer_direction && $janken_judge == "lose")
  puts "あなたの負けです"
   return false

  else 
   return true
  end
end 

janken_game = true

while janken_game
  janken_game = janken
end