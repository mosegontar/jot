class Directory
	attr_accessor :cwd
	def initialize
		self.cwd = Dir.getwd
	end
        def get_entries
		entry_dir = self.cwd + '/entries/'
		Dir.entries(entry_dir)
	end
end

# def create_entry(dir, entry)
# File.open(dir+'/entries/'+entry, "w") {|f| f.write("some_text")}
# puts "entries/%s created" % [entry]
# end

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
