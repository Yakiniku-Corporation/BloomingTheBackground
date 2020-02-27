require 'dxruby'

class Title

  def initialize()
    Window.width=1920
    @width=1920
    Window.height=1080
    @height=1080
    Window.windowed=false
    Window.caption="Blooming the background"
    Window.fps=200
    @carsoru = Sprite.new(200, 200, Image.new(10,15))
    @startfont=Sprite.new(950,540,Image.new(100,25))
    @endfont=Sprite.new(980,640,Image.new(100,25))

    @i_start=940    #startButtonの変数
    @a_start=0

    @i_end=970      #endButtonの変数
    @a_end=0


  end

  def startButton()

    Window.draw_font_ex(1300,571,"Bloom",Font.new(30),{angle:180,alpha:@a_start})
    Window.draw_font_ex(950,540,"Bloom",Font.new(30))
   @@startfont.draw
    if (@startfont===@carsoru)
     if (@i_start<1400)
      Window.draw_line(940,570,@i_start,570,[255, 255, 255, 255])
       @i_start+=3
       @a_start+=0.5
     else
       Window.draw_line(940,570,@i_start,570,[255, 255, 255, 255])
     end
    else
     @i_start=940
     @a_start=0
   end
  end

  def endButton()

    Window.draw_font_ex(1300,671,"Wither",Font.new(30),{angle:180,alpha:@a_end})
    Window.draw_font_ex(980,640,"Wither",Font.new(30))
    @endfont.draw
    if (@endfont===@carsoru)
     if (@i_end<1400)
      Window.draw_line(970,670,@i_end,670,[255, 255, 255, 255])
      @i_end+=3
      @a_end+=0.5
    else
       Window.draw_line(970,670,@i_end,670,[255, 255, 255, 255])
     end
   else
     @i_end=970
     @a_end=0
   end
  end

  def carsoru()

    @carsoru.x = Input.mouse_pos_x
    @carsoru.y = Input.mouse_pos_y
    @carsoru.draw
  end

  def close()
    if Input.key_push?(K_Q)
      Window.close
    end
  end
end
