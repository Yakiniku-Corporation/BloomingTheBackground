class Kyara
  attr_accessor:kyara,:jump,:jump_y
  def initialize
    @kyara=Sprite.new(100,100,Image.load("./image/kyara1.png"))
    @jump_y=0
    @jump=0    #1ジャンプしている,0床に当たっている,2ジャンプした後
  end

  def draw_kyara()
    @kyara.y+=2
    if(Input.key_down?(K_D))#右移動
      @kyara.x+=3
    end

    if(Input.key_down?(K_A))#左移動
      @kyara.x-=3
    end

    if(Input.key_push?(K_SPACE))#ジャンプ
      if(@jump==0)
        @jump=1
      end
    end

    if(@jump==1)
      @kyara.y-=7#常に重力がかかるため-2
      @jump_y+=1
      if(@jump_y==30)
        @jump_y=0
        @jump=2
      end
    end

    @kyara.draw
  end
end
