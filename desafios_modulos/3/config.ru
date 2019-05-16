# config.ru
#encoding: utf-8
require 'rack'

class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> HOME </h1>']]
    elsif env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> WOW </h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Oshrá </h1>']]
    else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
end

run MiPrimeraWebApp.new
