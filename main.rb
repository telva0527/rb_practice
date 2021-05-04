@win = 0
@lose = 0
@draw = 0

def hand(cpu_hand, player_hand)
  if cpu_hand == "g"
    puts "CPU...グー！"
  elsif cpu_hand == "c"
    puts "CPU...チョキ"
  elsif cpu_hand == "p"
    puts "CPU...パー"
  else
  end
  if player_hand == "g"
    puts "あなた...グー！"
  elsif player_hand == "c"
    puts "あなた...チョキ"
  elsif player_hand == "p"
    puts "あなた...パー"
  else
  end
end

def judge(cpu_hand, player_hand)
  if player_hand == "g" && cpu_hand == "c"
    puts "勝ち！"
    @win = @win + 1
  elsif player_hand == "c" && cpu_hand == "p"
    puts "勝ち！"
    @win = @win + 1
  elsif player_hand == "p" && cpu_hand == "g"
    puts "勝ち！"
    @win = @win + 1
  elsif player_hand == "c" && cpu_hand == "g"
    puts "負け！"
    @lose = @lose + 1
  elsif player_hand == "p" && cpu_hand == "c"
    puts "負け！"
    @lose = @lose + 1
  elsif player_hand == "g" && cpu_hand == "p"
    puts "負け！"
    @lose = @lose + 1
  end
end

puts "何本勝負？(press 1 or 3 or 5)"
fight_count = gets
puts "#{fight_count.to_i}本勝負を選びました"

(1..fight_count.to_i).each do |x|
  if @draw == 0
    puts "じゃんけん...(press g or c or p)"
  elsif @draw == 1
    puts "あいこで...(press g or c or p)"
  end
  cpu_hand = ["g", "c", "p"].sample
  player_hand = gets
  player_hand = player_hand.to_s[0]

  hand(cpu_hand, player_hand)

  if player_hand == cpu_hand
    @draw = 1
    redo
  end

  judge(cpu_hand, player_hand)

  puts "#{@win}勝#{@lose}敗"
  @draw = 0
end

if @win > @lose
  puts "#{@win}勝#{@lose}敗であなたの勝ち"
elsif @win < @lose
  puts "#{@win}勝#{@lose}敗であなたの負け"
end
