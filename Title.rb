require 'dxruby'
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
    @@h=false
  end

  def write()
    Window.draw_font(1,1,Window.fps.to_s,Font.new(32))
  end

  def startButton()
    Window.draw_font(950,540,"Bloom",Font.new(30))
    if Input.key_down?(K_Q)
      @@h=true
    end
    if(@@h==true)
     if (@@i<1400)
      Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
      @@i+=1
    else
       Window.draw_line(940,570,@@i,570,[255, 255, 255, 255])
       @@h=false
     end
     if(@@h==false)
       @@i=940
     end
     end
   end
  end


t=Title.new()
Window.loop do
  t.write()
  t.startButton()
end
