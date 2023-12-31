require 'csv'

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

while true
  input = gets.chomp.to_i

  if input == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    content = readlines
    CSV.open("#{file_name}.csv", 'w') do |f|
      f << content
    end
    break

  elsif input == 2
    puts "拡張子を除いた既存のファイルを入力してください"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    content = readlines
    CSV.open("#{file_name}.csv", 'a') do |f|
      f << content
    end
    break

  else
    puts "1か2を入力してください"
  end
end