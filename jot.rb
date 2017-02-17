#!/usr/bin/env ruby

ENTRY_DIR = "~/.jot/entries"
EDITOR = 'vim'

def manage_entries(date)
    todays_entry = date + '.txt'
    launch_editor( todays_entry)
end

def launch_editor(entry)
    exec "#{EDITOR} #{ENTRY_DIR}/#{entry}"
end

if __FILE__ == $0
    today = Time.now.strftime("%Y-%m-%d")
    manage_entries today
end
