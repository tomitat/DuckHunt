# coding: iso-8859-1
require 'ruby2d'


set width: 1920
set height: 1080
set title: "Coding Club @ Paris"

tick = 0 # compteur pour le nombre d'image affiché à l'écran

score = ""

Image.new('background.jpg', x: 0, y: 0)

bird = Sprite.new('birdsheet.png', clip_width: 100, time: 50, loop: true, x: 150, y: 150)
bird.play
speed = 50
Text.new('score:', x: 10, y: 10, size: 20, color: 'black')
score_bar = Text.new(score, x: 70, y: 10, size: 20, color: 'black')

on :mouse_down do |e| # si l'utilisateur appuie, alors ..                                                    
  mouse_X = get :mouse_x
  mouse_Y = get :mouse_y
  if mouse_X <= bird.x + 100 && mouse_X >= bird.x && mouse_Y <= bird.y + 100 && mouse_Y >= bird.y
    bird.x = 0
    bird.y = rand(500)
    score_bar.text += "|"
  end
end
update do # update permet de rafraichir la fenêtre                                 
  if tick % 10 == 0 # on vérifie qu'il y a eu 10 images d'affiché avant d'actuali                                                                                 
    bird.x += speed
    if bird.x > 1920
      bird.x = 0
      bird.y = rand(500)
    end
  end # fin du if                                                                   
  tick += 1 # on incremente le nombre d'image affiché
end # fin du do     

show
