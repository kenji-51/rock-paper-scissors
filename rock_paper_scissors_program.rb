class Janken
  HANDS = %w[ぐー ちょき ぱー].freeze

  def play
    loop do
      @human_hand = gets.chomp
      break if HANDS.include?(@human_hand)

      puts '入力が正しくありません。ぐー：ちょき：ぱー のいずれかを入力してください'
      print '>'
    end
    check_human_computer_hands
    judge
  end

  private

  def check_human_computer_hands
    @computer_hand = HANDS.sample
    puts "あなたは、#{@human_hand} を出しました"
    puts "コンピューターは、#{@computer_hand} を出しました"
  end

  def judge
    hand = { 'ぐー' => 0, 'ちょき' => 1, 'ぱー' => 2 }
    human_hand = hand[@human_hand]
    computer_hand = hand[@computer_hand]
    result = (human_hand - computer_hand + 3) % 3

    case result
    when 0
      puts 'あいこです。もう一回'
    when 1
      puts 'やったね人間の勝ち!!'
    when 2
      puts '残念... コンピューターの勝ち'
    end
  end
end

puts '最初は ぐー、じゃんけん〜〜'
puts '（ぐー、ちょき、ぱー）のどれかを入力してください'
print '>'
janken = Janken.new
janken.play
