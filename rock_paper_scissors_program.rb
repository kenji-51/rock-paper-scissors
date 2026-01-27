puts '最初は ぐー、じゃんけん〜〜'
print '>（ぐー、ちょき、ぱー）のどれかを入力してください：'

jyanken_human = gets.chomp
jyanken_computer = ['ぐー', 'ちょき', 'ぱー'].sample

puts "コンピューターは、#{jyanken_computer} を出しました。"

if jyanken_human == jyanken_computer
  puts 'あいこです'
elsif jyanken_human == 'ぐー' && jyanken_computer == 'ちょき'
  puts 'やったね、人間の勝ち！！'
elsif jyanken_human == 'ぐー' && jyanken_computer == 'ぱー'
  puts '残念、コンピューターの勝ち'
elsif jyanken_human == 'ちょき' && jyanken_computer == 'ぐー'
  puts '残念、コンピューターの勝ち'
elsif jyanken_human == 'ちょき' && jyanken_computer == 'ぱー'
  puts 'やったね、人間の勝ち！！'
elsif jyanken_human == 'ぱー' && jyanken_computer == 'ぐー'
  puts 'やったね、人間の勝ち！！'
elsif jyanken_human == 'ぱー' && jyanken_computer == 'ちょき'
  puts '残念、コンピューターの勝ち'
else
  puts '入力が正しくありません。ぐー：ちょき：ぱー のいずれかを入力してください'
end
