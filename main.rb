require_relative "test.rb"
require_relative "result_printer.rb"

#Спросим пользователя желает  ли он пройти тест
puts "Здравствуйте!"
puts "Желаешь ли ты пройти тест на общительность? \n" +
     "0-нет  1-да"
choice_user = STDIN.gets.chomp.to_i
#В зависимости от выбора нашего пользователя Тестируем его или выходим с программы попрощавшись с ним
case choice_user
when 0
  abort "Всего доброго! Очень жаль , что вы нас покидаете"
when 1
  #Экземпляр класса Тест
  new_test = Test.new
  #Экземпляр класса ВыводРезультатов
  result_of_test = ResultPrinter.new
  #У класса есть метод finish? он возращает true если тест завершен
  #До тех пор пока пользователь не ответит на все вопросы задвать вопросы.
  until new_test.finished?
    new_test.next_question
  end
  #Экземпляр класса ВыводРезультатов через свой метод выведет нам результат
  #В качестве параметра будем передавать экземпляр класса Тест
  result_of_test.print_result(new_test)
end
