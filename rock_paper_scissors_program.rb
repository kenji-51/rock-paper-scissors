class Janken
  def play_janken
    loop do
      @human_hand = gets.chomp
      break if %w[ぐー ちょき ぱー].include?(@human_hand)

      puts '入力が正しくありません。ぐー：ちょき：ぱー のいずれかを入力してください'
      print '>'
    end
    check_computer_hand
    judge
  end

  private

  def check_computer_hand
    @computer_hand = %w[ぐー ちょき ぱー].sample
    puts "あなたは、#{@human_hand} を出しました"
    puts "コンピューターは、#{@computer_hand} を出しました"
  end

  def judge
    if @human_hand == @computer_hand
      puts 'あいこです。もう一回'
    elsif (@human_hand == 'ぐー' && @computer_hand == 'ちょき') ||
          (@human_hand == 'ちょき' && @computer_hand == 'ぱー') ||
          (@human_hand == 'ぱー' && @computer_hand == 'ぐー')
      puts 'やったね人間の勝ち!!'
    else
      puts '残念... コンピューターの勝ち'
    end
  end
end

puts '最初は ぐー、じゃんけん〜〜'
puts '（ぐー、ちょき、ぱー）のどれかを入力してください'
print '>'
janken = Janken.new
janken.play_janken
