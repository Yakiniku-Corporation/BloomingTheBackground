class Block
  attr_accessor:top_Block,:left_Block,:right_Block,:bottom_Block,:key_flag
  def initialize(x=0,y=0,x1=300,y1=2)
    #line_Block
    @block=Sprite.new(x,y,Image.new(x1,y1,C_RED))
    #draw_box
    @top_Block=Sprite.new(x+1,y,Image.new(x1,y1,C_WHITE))
    @left_Block=Sprite.new(x-2,y,Image.new(2,y1,C_RED))
    @right_Block=Sprite.new(x+x1+2,y,Image.new(2,y1,C_RED))
    @bottom_Block=Sprite.new(x,y+y1+2,Image.new(x1,2,C_RED))
    #vertical
    @verticalblock=Sprite.new(x,y,Image.new(x1,y1,C_RED))
    #key
    @key_Block=Sprite.new(x,y,Image.new(50,50,C_BLUE))
    @key_flag=false
  end

  def draw_Line
    @block.draw
  end

  def draw_vertical_Line
    @verticalblock.draw
  end

  def draw_move_box(*b)
    @top_Block.y+=2
    @left_Block.y+=2
    @right_Block.y+=2
    @bottom_Block.y+=2


    if(@top_Block===$k.kyara)
      $k.kyara.y-=2
      $k.jump=0
      $k.jump_y=0
    end
    if(@left_Block===$k.kyara)
      $k.kyara.x-=3
      @top_Block.x+=1
      @left_Block.x+=1
      @right_Block.x+=1
      @bottom_Block.x+=1
      $k.jump=2
    end

    if(@right_Block===$k.kyara)
      $k.kyara.x+=3
      @top_Block.x-=1
      @left_Block.x-=1
      @right_Block.x-=1
      @bottom_Block.x-=1
      $k.jump=2
    end

    if(@bottom_Block===$k.kyara)
      $k.kyara.y+=3
      $k.jump=2
      $k.jump_y=0
    end

    if(@bottom_Block===b[0].top_Block||@bottom_Block===b[1].top_Block)
      @top_Block.y-=2
      @left_Block.y-=2
      @right_Block.y-=2
      @bottom_Block.y-=2
    end
    if(@left_Block===b[0].right_Block||@left_Block===b[1].right_Block)
      @top_Block.x+=1
      @left_Block.x+=1
      @right_Block.x+=1
      @bottom_Block.x+=1
    end
    if(@right_Block===b[0].left_Block || @right_Block===b[1].left_Block)
      @top_Block.x-=1
      @left_Block.x-=1
      @right_Block.x-=1
      @bottom_Block.x-=1
    end


    if(@bottom_Block===$yuka)
      @top_Block.y-=2
      @left_Block.y-=2
      @right_Block.y-=2
      @bottom_Block.y-=2
    end
    @top_Block.draw
    @left_Block.draw
    @right_Block.draw
    @bottom_Block.draw
  end

  def draw_key
    if(@key_Block===$k.kyara)
      @key_flag=true
    end
    if(@key_flag==true)
    else
      @key_Block.draw
    end
  end

  def draw_box
    if(@top_Block===$k.kyara)
      $k.kyara.y-=2
      $k.jump=0
      $k.jump_y=0
    end
    if(@left_Block===$k.kyara)
      $k.kyara.x-=3
      $k.jump_y=2
      $k.jump=2
    end
    if(@right_Block===$k.kyara)
      $k.kyara.x+=3
      $k.jump_y=2
      $k.jump=2
    end
    if(@bottom_Block===$k.kyara)
      $k.kyara.y+=4
      $k.jump=2
      $k.jump_y=0
    end
    @top_Block.draw
    @left_Block.draw
    @right_Block.draw
    @bottom_Block.draw
  end

end
