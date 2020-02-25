require'dxruby'
class Option
  def initialize()
    @@black       = Image.new(1920,1080,[0,0,0])
    @@option_back = Image.load("image/material/option_back.png")
  end
  def option()
    Window.draw(0,0,@white)
  end
end
