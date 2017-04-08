require 'colorize'
require_relative 'methods.rb'
#Создаем класс Тест
class Test
  attr_reader :score
  def initialize
    #Вопросы теста
    @questions = retrieve_content("/../data/questions.txt")
    #Счетчик баллов которыйе набрал пользователь
    @score = 0
    #Счестчик вопросов
    @number_question = 0
  end

  #Метод_______Закончиен ли тест
  def finished?
    @number_question >= @questions.size
  end

  #Метод_______Следующий вопрос
  def next_question
    puts @questions[@number_question]
    puts "Выберите ответ: 1-Да 0-Нет 2-Иногда"
    answer = gets.to_i
    #Проверка введенных данным пользователем
    until answer == 0 || answer == 1 || answer == 2
      puts "Не корректный ввод данных, Выберите ответ: 1-Да 0-Нет 2-Иногда"
      answer = gets.to_i
    end
    #На основание выбора увеличиваем счетсик баллов
    case answer
    when 0
      @score
    when 1
      @score += 2
    when 2
      @score += 1
    end
    puts "Набранные баллы:#{@score}".blue
    #Теперь можно увеличить счетчик вопросов
    @number_question += 1
  end
end
