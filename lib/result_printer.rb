require 'colorize'
require_relative 'methods.rb'
#Создаем класс Который будет выводить результат теста
class ResultPrinter
  def initialize
    #Результат тестирования
    @results = retrieve_content("/../data/results.txt")
  end
  #Метод_____Вывод результата
  def print_result(class_test)
    points = class_test.score
    #Выводим результат тесирования на основание значения
    case points
    when 30..32
      puts @results[0].yellow
    when 25..29
      puts @results[1].yellow
    when 19..24
      puts @results[2].yellow
    when 14..18
      puts @results[3].yellow
    when 9..13
      puts @results[4].yellow
    when 4..8
      puts @results[5].yellow
    when 0..3
      puts @results[6].yellow
    end
  end
end
