#!/usr/bin/env ruby

def manage_entries(date)
	todays_entry = date + '.txt'
    launch_editor('vim', todays_entry)
end

def launch_editor(editor, entry)
    exec '%s entries/%s' % [editor, entry]
end

if __FILE__ == $0
    today = Time.now.strftime("%Y-%m-%d")
	manage_entries today	
end
