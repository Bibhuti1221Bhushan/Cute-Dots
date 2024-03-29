{ config, lib, ... }:

{
	programs.kitty = {
		enable = true;
		theme = "Catppuccin-Mocha";

		extraConfig = ''
			
#	██╗  ██╗██╗████████╗████████╗██╗   ██╗
#	██║ ██╔╝██║╚══██╔══╝╚══██╔══╝╚██╗ ██╔╝
#	█████╔╝ ██║   ██║      ██║    ╚████╔╝ 
#	██╔═██╗ ██║   ██║      ██║     ╚██╔╝  
#	██║  ██╗██║   ██║      ██║      ██║   
#	╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝      ╚═╝   

                                      
# COLOR SCHEME
background_opacity 1.0

# GLOBAL
term xterm-kitty
allow_remote_control no
shell_integration no-cursor

# FONTS
font_family monospace
bold_font auto
italic_font auto
bold_italic_font auto
font_size 9.5
disable_ligatures never
text_composition_strategy legacy

# CURSOR CUSTOMIZATION
cursor_shape beam
cursor_beam_thickness 1.5
cursor_blink_interval 0.5
cursor_stop_blinking_after 15.0

# SCROLLBACK
scrollback_lines 2000
scrollback_pager less +G -R
wheel_scroll_multiplier 5.0

# MOUSE
mouse_hide_wait 0.0
copy_on_select yes
detect_urls yes
url_style dashed
open_url_with default
show_hyperlink_targets yes
select_by_word_characters @-./_~?&=%+#
url_prefixes file ftp ftps gemini git gopher http https irc ircs kitty mailto news sftp ssh

# TERMINAL BELL
enable_audio_bell yes

# WINDOW LAYOUT
remember_window_size yes
initial_window_width  640
initial_window_height 400
window_border_width 0.5pt
window_padding_width 7 10 10 10 
window_margin_width 0
confirm_os_window_close 0
hide_window_decorations no

# TAB BAR
tab_bar_edge bottom
tab_bar_style powerline        
tab_powerline_style round    
tab_bar_margin_width 5.0
tab_bar_margin_height 0.0 0.0
active_tab_font_style bold-italic
inactive_tab_font_style normal

# KEYBOARD SHORTCUT
kitty_mod ctrl+shift

# CLIPBOARD
map ctrl+shift+c              copy_to_clipboard
map ctrl+shift+v              paste_from_clipboard
map ctrl+v                    paste_from_selection

# SCROLLING
map ctrl+shift+up        	  scroll_line_up
map ctrl+shift+down      	  scroll_line_down
map ctrl+shift+k         	  scroll_line_up
map ctrl+shift+j         	  scroll_line_down
map ctrl+shift+page_up   	  scroll_page_up
map ctrl+shift+page_down 	  scroll_page_down
map ctrl+shift+home      	  scroll_home
map ctrl+shift+end       	  scroll_end

# WINDOW MANAGEMENT
map ctrl+shift+n              new_os_window
map ctrl+shift+q              close_window
map ctrl+shift+enter          new_window
map ctrl+shift+]              next_window
map ctrl+shift+[              previous_window
map ctrl+shift+.              move_window_forward
map ctrl+shift+,              move_window_backward

# TAB MANAGEMENT
map ctrl+shift+right          next_tab
map ctrl+shift+left           previous_tab
map ctrl+enter                new_tab
map ctrl+shift+q              close_tab
map ctrl+shift+l              next_layout
map ctrl+shift+.              move_tab_forward
map ctrl+shift+,              move_tab_backward

# MISCELLANEOUS
map ctrl+shift+up             increase_font_size
map ctrl+shift+down           decrease_font_size
map ctrl+shift+backspace      restore_font_size

		'';
	};
}
