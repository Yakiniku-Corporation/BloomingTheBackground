class Option
  def initialize()
    @black             = Image.new(1920,1080,[0,0,0])
    @option_background = Image.load("image/material/option_back.png")

    @ESCkey_flag       = false
    @black_fade_flag   = false
    @fade_flag         = false
    @fade              = 0
    @rot               = -90
    @move              = 990
    @OB_Y              = -1005
  end

  def input_ESC
    if Input.key_push?(K_ESCAPE)
      flagman(1)
      flagman(2) if()
      @fade,@@rot=0,-90
      p(Input.mouse_x,Input.mouse_y)
    end
    option()
  end

  def flagman(type)
    case(type)

    when(1)
      if(@ESCkey_flag == false)
        @ESCkey_flag = true
      elsif(@ESCkey_flag == true)
        @ESCkey_flag = false
      end

    when(2)
      if(@fade_flag == false)
        @fade_flag = true
      elsif(@fade_flag == true)
        @fade_flag = false
      end

    when(3)
      if(@rot_flag == false)
        @rot_flag = true
      elsif(@rot_flag == true)
        @rot_flag = false
      end
    end
  end

  def option
    if(@ESCkey_flag==true)
      if(@fade_flag==false)
        Window.draw_alpha(0,0,@black,@fade+=5)
        flagman(2) if(@fade>=200)
      elsif(@fade_flag==true)
        Window.draw_alpha(0,0,@black,@fade)
      end

      Window.draw_rot(0,@OB_Y, @option_background,@rot)
    end
  end
end
