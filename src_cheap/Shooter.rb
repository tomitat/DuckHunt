require 'ruby2d'
# set borderless: true

#! Globales
tick = 0
hits = 0
start_time_pt = Time.now
width = 1280
height = 720

#! Dimensionnement de la fenêtre
set width: width
set height: height

#! Creation des elements à l'écran
pigeon = Image.new(
	"pig.png",
	x: width / 2, y: height / 2
)
gun = Image.new(
	"cobra.png",
	x: width / 2, y: height / 2,
)
score = Text.new(
	"Hits: 0",
	x: 0, y: 0,
	size: 20,
	font: "display.ttf",
	color: 'white'
)


#! Ce qu'il faut faire en cas de clic
on :mouse_down do |e|
	if pigeon.contains?(e.x, e.y)
		pigeon.x = rand(width)
		pigeon.y = rand(height)
		hits += 1
		score.text = "Hits: #{hits}"
		# Si l'on a touché 10 fois la cible, on arrête tout.
		if hits == 10
			close
		end
	end
end

#! Ce qu'il faut faire quand la souris bouge
on :mouse_move do |e|
	gun.x = e.x - gun.width / 2
	gun.y = e.y - gun.height / 2
end

#! Boucle principale
update do
	# Tout les 3 ticks
	# Faire se déplacer aléatoirement le pigeon en x ou en y
	# en negatif ou en positif et de 0 à 45 pixels
	if tick % 3 == 0
		if rand(2) == 0
			if rand(2) == 0
				pigeon.x += rand(45)
			end
			if rand(2) == 1
				pigeon.x -= rand(45)
			end
		else
			if rand(2) == 0
				pigeon.y += rand(45)
			end
			if rand(2) == 1
				pigeon.y -= rand(45)
			end
		end
	end

	# Faire en sorte que le pigeon revienne vers
	# le milieu de l'écran s'il en dépasse en
	# x ou en y.
	if pigeon.x >= width
		pigeon.x -= rand(45)
	end
	if pigeon.x <= 100
		pigeon.x += rand(45)
	end
	if pigeon.y >= height
		pigeon.y -= rand(45)
	end
	if pigeon.y <= 0
		pigeon.y += rand(45)
	end

	# Incrément à donner
	tick += 1;
	if tick >= 1000
		tick = 0
	end
end

#! Start the display and the main loop
show

#! Save the end timepoint
time_end = Time.now

#! Average calculation
minutes_end = time_end.strftime "%M"
seconds_end = time_end.strftime "%S"
int_minutes_end = minutes_end.to_i * 60
int_seconds_end = seconds_end.to_i + int_minutes_end

minutes_begin = start_time_pt.strftime "%M"
seconds_begin = start_time_pt.strftime "%S"
int_minuntes_begin = minutes_begin.to_i * 60
int_seconds_begin = seconds_begin.to_i + int_minuntes_begin

#! Display the
puts "Complete in #{int_seconds_end - int_seconds_begin} seconds !"
puts "(Lower is better.)"
