
require 'dxruby'
require './Carsoru'


class SquareButton
  attr_accessor:x,:y
  def initialize
    @c=Carsoru.new()
  end

  def draw_square_Button(x,y,moji)   #(x座標,y座標,文字1つ)
    if((moji.length) != 1)
       p "error:draw_square_Button:文字数は1つに限られます"
    else
     @c.draw_carsoru()
     @SquareButton=Sprite.new(x+2,y+3,Image.new(38,35,))
     @SquareButton.draw
     if(@c.carsoru===@SquareButton)
      Window.draw_scale(self.x=x-90,self.y=y-30,Image.load('./image/button2.png'),0.2,0.5)
      Window.draw_font_ex(self.x+103,self.y+35,moji,Font.new(30),color:C_BLACK)
    else
      Window.draw_scale(self.x=x-90,self.y=y-30,Image.load('./image/button.png'),0.2,0.5)
      Window.draw_font_ex(self.x+103,self.y+35,moji,Font.new(30))
     end
   end

  end
end
