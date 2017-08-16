Namespace al

#Import "<libc>"
#Import "<allegro5>"

Using allegro5..

Function Main()
	
	'// Allegro Version
	Local version:= al_get_allegro_version()
	Print "[INFO] : Allegro Version : " + (version Shr 24)+"."+((version Shr 16) & 255)+"."+((version Shr 8) & 255)+"."+(version & 255) + " (Major.Minor.Revision.Release)"
	
	'// Install Allegro
	If Not al_install_system( ALLEGRO_VERSION_INT , libc.atexit )
		Print  "[ERROR] : Allegro install error"
	Else
		Print "[SUCCESS] : Allegro is installed"
	End
	
	'// Install Keyboard
	If Not al_install_keyboard()
		Print "[ERROR] : Keyboard install error"
	Else
		Print "[SUCCESS] : Keyboard is installed"
	End
	
	'// Install Mouse
	If Not al_install_mouse()
		Print "[ERROR] : Mouse install error"
	Else
		Print "[SUCCESS] : Mouse is installed"
	End
	
	'// Initialize Primitives add-on
	If Not al_init_primitives_addon()
		Print  "[ERROR] : Primitives Add-on install error"
	Else
		Print "[SUCCESS] : Primitives Add-on is installed"
	End
	
	'// Create new Display
	al_set_new_display_flags( ALLEGRO_RESIZABLE )
	Local display:ALLEGRO_DISPLAY Ptr = al_create_display( 800, 600 )
	al_set_window_title( display, "Allegro Test" )
	
	If Not display
		Print "[ERROR] : Failed to create display"
		If al_is_system_installed() Then al_uninstall_system()
	Else
		Print "[SUCCESS] : Display created"
	Endif
	
	'// Create Timer
	Const AppFPS:=60
	Local timer:ALLEGRO_TIMER Ptr = al_create_timer( 1.0 / AppFPS )
	If Not timer
		Print "[ERROR] : Failed to create timer"
		If display Then al_destroy_display(display)
		If al_is_system_installed() Then al_uninstall_system()
	Else
		Print "[SUCCESS] : Timer created"
	Endif
	'// Create new Event queue and registry event sources
	Local eventqueue:ALLEGRO_EVENT_QUEUE Ptr = al_create_event_queue()
	If Not eventqueue
		Print "[ERROR] : Failed to create event queue"
		If al_is_system_installed() Then 
			al_destroy_display(display) '// destroy display
			al_uninstall_system()
		End
	Else
		Print "[SUCCESS] : Event queue created"
	Endif
	
	al_register_event_source( eventqueue, al_get_keyboard_event_source())
	al_register_event_source( eventqueue, al_get_mouse_event_source())
	al_register_event_source( eventqueue, al_get_display_event_source( display ) )
	al_register_event_source( eventqueue, al_get_timer_event_source( timer ) )
	
	'// Ball
	Local x:=0.0, y:=0.0, r:=20.0
	Local dirX:=1, dirY:=1
	Local speed:Int = 10.0
	
	'// Loop
	Local done:= False, redraw:= True
	al_start_timer( timer )
	
	'//-----------------------------------
	'// Main loop
	'//-----------------------------------
	While Not done
		
		'// Events
		Local e:ALLEGRO_EVENT
		
		al_wait_for_event( eventqueue, Varptr e )

		Select e.type
			'// Display events
			Case ALLEGRO_EVENT_DISPLAY_CLOSE
				done = True
			Case ALLEGRO_EVENT_DISPLAY_RESIZE
				al_acknowledge_resize(display)
			
			'//-----------------------------------
			'// Update input
			'//-----------------------------------
			
			'// Keyboard events
			Case ALLEGRO_EVENT_KEY_UP
			Case ALLEGRO_EVENT_KEY_DOWN
				
				Select e.keyboard.keycode
					Case ALLEGRO_KEY_ESCAPE
						done = True
				End
				
			'// Mouse events
			Case ALLEGRO_EVENT_MOUSE_BUTTON_UP
			Case ALLEGRO_EVENT_MOUSE_BUTTON_DOWN
			Case ALLEGRO_EVENT_MOUSE_ENTER_DISPLAY
			Case ALLEGRO_EVENT_MOUSE_LEAVE_DISPLAY
				
			'// Timer events
			Case ALLEGRO_EVENT_TIMER
				redraw = True
				
				'//-----------------------------------
				'// Update logic
				'//-----------------------------------
				
				Local w:= al_get_display_width( display )
				Local h:= al_get_display_height( display )
				
				'// Vertical bounds
				If ( x > w-r ) 
					dirX = -speed
				Elseif ( x < r )
					dirX = speed
				End
				
				'// Horizontal bounds
				If ( y > h-r )
					dirY = -speed
				Elseif ( y < r )
					dirY = speed
				End
				
				'// Move a ball
				x+= dirX
				y+= dirY
		End
		
		'// Begin render
		If (redraw And al_is_event_queue_empty(eventqueue)) Then
			
			'//-----------------------------------
			'// Update graphics
			'//-----------------------------------
			
			al_clear_to_color( al_map_rgb( 50, 60, 80 ) )

			'// Draw a ball
			al_draw_filled_ellipse( x, y, r, r, al_map_rgb( 255, 0, 0 ) )
			
			al_flip_display()
		End
		'// End render
		
	Wend
	
	'// Destroy a display
	al_destroy_display( display )
	
	'// Destroy event queue
	al_destroy_event_queue( eventqueue )

	'// Uninstall Allegro
	al_uninstall_system()
	
	Print "[INFO] : Application terminated"
	
End
