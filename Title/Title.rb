require 'dxruby'
require './Fps'
class Title

  def initialize()
    Window.width=1920
    @@width=1920
    Window.height=1080
    @@height=1080
    Window.windowed=false
    Window.caption="Blooming the background"
    Window.fps=200
    @@i=940
  end
  def startButton()
    Window.draw_font(950,540,"Bloom",Font.new(30))

     if (@@i<1400)
      Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
      @@i+=1
    else
       Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
     end
     end
     end

t=Title.new()
f=Myfps.new()
Window.loop do
  t.startButton()
  f.rightUpFps()
end
