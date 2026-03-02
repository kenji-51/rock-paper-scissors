require 'debug'

class Janken
  HANDS = %w[ぐー ちょき ぱー].freeze
  HANDS_HASH = HANDS.each_with_index.to_h.freeze

  def play
    loop do
      @human_hand = gets.chomp
      break if HANDS.include?(@human_hand)

      puts '入力が正しくありません。ぐー：ちょき：ぱー のいずれかを入力してください'
      print '>'
    end
    show_human_and_computer_hands
    judge
  end

  private

  def show_human_and_computer_hands
    @computer_hand = HANDS.sample
    puts "あなたは、#{@human_hand} を出しました"
    puts "コンピューターは、#{@computer_hand} を出しました"
  end

  def judge
    human_hand = HANDS_HASH[@human_hand]
    computer_hand = HANDS_HASH[@computer_hand]
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
