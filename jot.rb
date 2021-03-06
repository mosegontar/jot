#!/usr/bin/env ruby

ENTRY_DIR = "~/.jot/entries"
EDITOR = 'vim'

def manage_entries(title)
    todays_entry = title + '.txt'
    launch_editor( todays_entry)
end

def launch_editor(entry)
    exec "#{EDITOR} #{ENTRY_DIR}/#{entry}"
end

if __FILE__ == $0
    title = ARGV[0]
    unless title
        title = Time.now.strftime("%Y-%m-%d")
    end
    manage_entries title
end
