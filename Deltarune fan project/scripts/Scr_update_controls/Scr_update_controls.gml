function Scr_update_controls(){
if file_exists("controls.ini"){
	ini_open("controls.ini")
	Obj_title.selectkey = ini_read_string("Save", "Select", "Z")
	Obj_title.cancelkey = ini_read_string("Save", "Cancel", "X")
	Obj_title.sprintkey = ini_read_string("Save", "Sprint", "X")
	Obj_title.menukey = ini_read_string("Save", "Menu", "C")
	Obj_title.upkey = ini_read_string("Save", "Up", "W")
	Obj_title.downkey = ini_read_string("Save", "Down", "S")
	Obj_title.leftkey = ini_read_string("Save", "Left", "A")
	Obj_title.rightkey = ini_read_string("Save", "Right", "D")	
}

global.selectbutton = ord(Obj_title.selectkey)
global.cancelbutton = ord(Obj_title.cancelkey)
global.sprintbutton = ord(Obj_title.sprintkey)
global.menubutton = ord(Obj_title.menukey)
global.upbutton = ord(Obj_title.upkey)
global.downbutton = ord(Obj_title.downkey)
global.leftbutton = ord(Obj_title.leftkey)
global.rightbutton = ord(Obj_title.rightkey)

}