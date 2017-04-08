#Метод помогающий извлекать контент .txt файла возращая массив из строк
def retrieve_content(path_file)
  current_path = File.dirname(__FILE__)
  full_path = current_path + "#{path_file}"
  content = File.new(full_path, "r:UTF-8")
  lines_content = content.readlines
  content.close
  return lines_content
end
