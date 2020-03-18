class Eria
  def initialize()
    NotImplementedError
    $yuka=Sprite.new(1,1070,Image.new(1920,10)) #床
    @yuka_visual=Image.load("./image/yuka.png")
    @kabe_Left=Sprite.new(1,1,Image.new(1,1080)) #壁1
    @kabe_Right=Sprite.new(1919,1,Image.new(1,1080))#壁2
    @top=Sprite.new(1,1,Image.new(1920,1))   #天井
    $k=Kyara.new()#kyaraのインスタンス
  end

  def draw_eria()
    NotImplementedError
    $k.draw_kyara()

    if($k.kyara===$yuka)  #床に当たる
      $k.kyara.y-=2
      $k.jump=0
    end

    if($k.kyara===@kabe_Left) #壁
      $k.kyara.x+=3
    end

    if($k.kyara===@kabe_Right)
      $k.kyara.x-=3
    end

    if($k.kyara===@top) #天井
      $k.kyara.y+=3
    end
      @top.draw
      $yuka.draw
      Window.draw(1,1073,@yuka_visual)
      @kabe_Left.draw
      @kabe_Right.draw
    end
  end
