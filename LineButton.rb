require 'dxruby'
require './Carsoru'

class LineButton

  def initialize(m,u,x,y,ux,uy,lx,ly,endl)   #(文字,薄文字,文字.x,文字.y,薄文字.x,薄文字.y, Line.x, Line.y,endLine.x)

    @moji=m
    @moji1=u
    @x=x
    @y=y
    @ux=ux
    @uy=uy

    @lx=lx
    @ly=ly
    @endl=endl

    @c=Carsoru.new()
    @Button=Sprite.new(@x,@y,Image.new(100,25))

    @i=940
    @a=0

  end

  def draw_Button()

    @Button.draw
    @c.draw_carsoru()

    Window.draw_font_ex(@ux,@uy,@moji1,Font.new(30),{angle:180,alpha:@a})     #薄文字
    Window.draw_font_ex(@x,@y,@moji,Font.new(30))                             #文字
    if (@Button===@c.carsoru)
     if (@i<@endl)
      Window.draw_line(@lx,@ly,@i,@ly,[255, 255, 255, 255])
       @i+=5
       @a+=0.5
     else
       Window.draw_line(@lx,@ly,@i,@ly,[255, 255, 255, 255])
     end

    else
     @i=@lx
     @a=0
    end
  end
end
