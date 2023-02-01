  def janken
  
    hands = ["グー","チョキ","パー"]
    enemy_hand = rand(3)
    
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(終了)"
 
    player_hand = gets.to_i
  
    if player_hand == 3
      puts "ゲーム終了"
      exit
    elsif player_hand == 0 || player_hand == 1 || player_hand == 2
      puts "ホイ！"
      puts "----------------------"
    else
      puts"error"
      exit
    end
  
    puts "あなたの手:#{hands[player_hand]}, 相手の手:#{hands[enemy_hand]}"
  
    @win = (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
    @lose = (player_hand == 0 && enemy_hand == 2) || (player_hand == 1 && enemy_hand == 0) || (player_hand == 2 && enemy_hand == 1)
    @draw = player_hand == enemy_hand
  
     
    if @win
      puts "よし！"
      puts"----------------------"
      atchimuitehoi()
      
    elsif @lose
      puts"くそー"
      puts"----------------------"
      atchimuitehoi()
      
    elsif @draw
      puts "あいこです。もう1度..."
      puts"----------------------"
      return janken
      
    end
      
  end


  def atchimuitehoi
    enemy_direction = rand(3)
    directions = ["上","下","右","左"]
  
 
    puts "あっち向いて..."
    puts "0(上),1(下),2(右),3(左)"
    
    player_direction = gets.to_i
    
    puts "ほい"
    puts "----------------------"
  
    puts "あなたの手:#{directions[player_direction]}, 相手の手:#{directions[enemy_direction]}"

    if @win && player_direction == enemy_direction 
      puts "あなたの勝ちです！！！"
      exit

    elsif @lose && player_direction == enemy_direction
      puts "あなたの負けです。"
      exit

    else # (second_randam != my_direction) || ($result_jankenA && my_direction != second_randam) ||  ($result_jankenB && second_randam != my_direction) 
      puts "もう一度..."
      puts "----------------------"
      return janken
    end 
  end
  
  janken()