require 'dxruby'

class Carsoru
  attr_accessor:carsoru      #@carsoruを外部からif文などで使用するため

  def initialize
    @carsoru = Sprite.new(200, 200, Image.new(10,15))
  end

  def draw_carsoru()

    @carsoru.x = Input.mouse_pos_x
    @carsoru.y = Input.mouse_pos_y
    @carsoru.draw

  end

end
