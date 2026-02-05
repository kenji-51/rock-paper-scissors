class Janken
  def initialize
    @human_hand = gets.chomp
  end

  def check_human_hand
    loop do
    return @human_hand if ['ぐー', 'ちょき', 'ぱー'].include?(@human_hand)
    puts '入力が正しくありません。ぐー：ちょき：ぱー のいずれかを入力してください'
    print '>'
    @human_hand = gets.chomp
    end
  end

  def rock_paper_scissors
    @computer_hand = ['ぐー', 'ちょき', 'ぱー'].sample
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
    elsif (@human_hand == 'ちょき' && @computer_hand == 'ぐー') ||
          (@human_hand == 'ぱー' && @computer_hand == 'ちょき') ||
          (@human_hand == 'ぐー' && @computer_hand == 'ぱー')
      puts '残念... コンピューターの勝ち'
    end
  end
end

puts '最初は ぐー、じゃんけん〜〜'
puts '（ぐー、ちょき、ぱー）のどれかを入力してください'
print '>'
janken = Janken.new
janken.check_human_hand
janken.rock_paper_scissors
janken.judge
