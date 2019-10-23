# coding: utf-8
require 'ruby2d'
set width: 1280
set height: 720
set title: "Coding Club @ Paris"
vie = 3
# images 
background = './background.jpg'
Image.new(background, x: 0, y: 0)

pigeon = './pig.png'
birdSize = 100
bird = Image.new(pigeon,
                 x: rand(1280),
                 y: rand(720),
                 width: birdSize,
                 height: birdSize)

#text
scoreResult = 0
score = Text.new(
  'Score : 0',
  x: 0,
  y: 680,
  size: 30,
  color: 'black',
  font: 'display.ttf'
)

#movement
tick = 0
update do
  if tick % 10 == 0
    bird.x += 10
  end

  if bird.x >= 1280
    bird.x = 0
    bird.y = rand(720)
  end
  
  tick += 1
end


#verify position
on :mouse_down do |e|
  mouse_X = get :mouse_x
  mouse_Y = get :mouse_y

  bird_X = bird.x
  bird_Y = bird.y

  if (mouse_X >= bird.x && mouse_X <= bird.x + birdSize) && (mouse_Y >= bird.y && mouse_Y <= bird.y + birdSize)
    bird.x = 0
    bird.y = rand(720)
    scoreResult = scoreResult + 1
    score.text = "Score : " + scoreResult.to_s
  else
    vie = vie - 1
    if vie == 0
      Text.new(
        'GAME OVER',
        x: 640,
        y: 360,
        size: 40,
        color: 'black',
        font: 'display.ttf',
      )
      sleep(5)
      close
      
    end
  end
end
show
