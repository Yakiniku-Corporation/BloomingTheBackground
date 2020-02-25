require 'dxruby'
require './MyFps'
class Title

  def initialize()
    Window.width=1920
    @@width=1920
    Window.height=1080
    @@height=1080
    Window.windowed=false
    Window.caption="Blooming the background"
    Window.fps=200
    @@carsoru = Sprite.new(200, 200, Image.new(10,15))
    @@startfont=Sprite.new(950,540,Image.new(100,25))
    @@i=940
  end
  def startButton()
    Window.draw_font_ex(1300,570,"Bloom",Font.new(30),{angle:180})
    Window.draw_font_ex(950,540,"Bloom",Font.new(30))
    @@startfont.draw
    if (@@startfont===@@carsoru)
     if (@@i<1400)
      Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
      @@i+=3
    else
       Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
     end
   else
     @@i=940
   end
  end
  def carsoru()

    @@carsoru.x = Input.mouse_pos_x
    @@carsoru.y = Input.mouse_pos_y
    @@carsoru.draw
  end

  def close()
    if Input.key_push?(K_Q)
      Window.close
    end
  end
end

t=Title.new()
f=Myfps.new()

Window.loop do
  f.rightUpFps()
  t.close()
  t.startButton()
  t.carsoru()




end
