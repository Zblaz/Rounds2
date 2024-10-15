extends AudioStreamPlayer

const Menu_Music = preload("res://Audio/Global/RoundsMenu.wav")

func _play_music(music: AudioStream, volume = 0.0) :
		if stream == music :
			return
		
		stream = music
		volume_db = volume
		play()

func play_music_level() :
	_play_music(Menu_Music)
	
