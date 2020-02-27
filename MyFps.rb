require 'dxruby'
class Myfps
  def initialize()
  end
  def leftUpFps()
      Window.draw_font(1,1,Window.fps.to_s,Font.new(32))
  end
  
  def rightUpFps()
     Window.draw_font(1865,1,Window.fps.to_s,Font.new(32))
  end
end
