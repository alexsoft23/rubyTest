class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    mas=[6,2,3,1,4,5]
    k = p(mas.index(mas.min))
    
    b = Array.new
    b = mas.collect{ |x| x*10 }
    srt = b.sort

    row ="!dlrow oleH"

    render html: "Hello, our index is: #{k}; New sort mas multiplied 10: #{srt}, Reverse row: #{row.reverse}"
  end
end
