#!/usr/bin/env ruby

ENTRY_DIR = "~/.jot/entries"

def manage_entries(date)
	todays_entry = date + '.txt'
    launch_editor('vim', todays_entry)
end

def launch_editor(editor, entry)
    exec "#{editor} #{ENTRY_DIR}/#{entry}"
    # exec '%s %s/%s' % [editor, ENTRY_DIR, entry]
end

if __FILE__ == $0
    today = Time.now.strftime("%Y-%m-%d")
	manage_entries today	
end
