require 'colorize'
#Создаем класс Тест
class Test
  #Конструктор класса
  def initialize
    #Вопросы теста
    @questions = [
      "Переживаете ли вы в ожидании важной деловой встречи?",
      "Если вам поручат выступить с докладом на каком либо мероприятии, вызовет ли это у вас чувство дискомфорта?",
      "Вы откладываете поход к врачу до последнего момента?",
      "Если вам предстоит командировка в незнакомый город, постараетесь ли вы избежать этой командировки?",
      "Вы делитесь своими мыслями и чувствами с кем бы то ни было?",
      "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом?",
      "Вы думаете, что людям разных поколений действительно трудно понимать друг друга?",
      "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, взятые у вас несколько месяцев назад?",
      "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
      "Вы заговорите с незнакомым человеком, оставшись с ним наедине?",
      "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее?",
      "Вам неприятно быть судьей в чужих конфликтах?",
      "Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь к чужому мнению?",
      "Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос, вы предпочтете промолчать и не исправлять его?",
      "Просьбы помочь в учебе или работе раздражают вас?",
      "Вам проще изложить свое мнение на бумаге, чем рассказать о нем?"
    ]
    #Счетчик баллов которыйе набрал пользователь
    @score = 0
    #Счестчик вопросов
    @number_question = 0
  end

  #Метод_______Закончиен ли тест
  def finished?
    return @number_question >= @questions.size
  end

  #Метод_______Следующий вопрос
  def next_question
    puts @questions[@number_question]
    answer = 0
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
      @score = @score
    when 1
      @score += 2
    when 2
      @score += 1
    end
    puts "Набранные баллы:#{@score}".blue
    #Теперь можно увеличить счетчик вопросов
    @number_question += 1
  end

  #Аксессор(Геттер)___Общий бал
  def score
    return @score
  end
end