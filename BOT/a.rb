require 'dxruby'
class Title

  def initialize()
    Window.width=1920
    @@width=1920
    Window.height=1080
    @@height=1080
    Window.windowed=false
    Window.caption="Blooming the background"


  end

  def initialize(w,h,i)
    Window.width=w
    @@width=w
    Window.height=h
    @@height=h
    Window.windowed=i
    Window.caption="Blooming the background"
    Window.fps=100000
  end

  def write()
    Window.draw_font(@@width/2,@@height/2,Window.fps.to_s,Font.new(32))
  end
end

T=Title.new(500,500,true)

Window.loop do
  T.write()
end
