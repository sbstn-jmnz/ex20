# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    url = env['REQUEST_PATH']
    case url
      when '/index'
        [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
      when '/otros'
        [202, { 'Content-Type' => 'text/html' }, ['<h1> OTROS </h1>']]
      else
        [404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
      end
    end
end
run MiPrimeraWebApp.new
