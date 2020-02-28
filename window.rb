require'dxruby'
require'./option.rb'
#shift_jis
Window.caption     = "Blooming the background"
Window.width       = @window_width  = 1920
Window.height      = @window_height = 1080
Window.full_screen = true

$option_draw = Option.new()
$white       = Image.new(1920,1080,[255,255,255])

Window.loop do

  Window.draw(0,0,$white)

  $option_draw.input_ESC

  break if Input.key_down?(K_Q)
end
