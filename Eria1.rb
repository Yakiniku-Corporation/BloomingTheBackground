class Eria1 < Eria
  def initialize
    super()
    @goalblock=Block.new(1500,800,420,280)
    @b2=Block.new(900,900,300,20)
    @b1=Block.new(500,1000,300,20)
    @move_brock=Block.new(1000,500,100,200)
    @flag=Block.new(1700,700,50,100)
    @key=Block.new(1400,1030)
  end

  def draw_eria
    super()
    @goalblock.draw_box
    @b1.draw_box
    @b2.draw_box
    @key.draw_key


    def @flag.draw_Goal(flag)#メソッドの追加
        @top_Block.draw
        if($k.kyara===@top_Block)
          if(flag==true)
            p"鍵とったど"
          else
            p"ないど"
          end
        end
    end

    @flag.draw_Goal(@key.key_flag)


    @move_brock.draw_move_box(@b2,@goalblock)
  end
end
