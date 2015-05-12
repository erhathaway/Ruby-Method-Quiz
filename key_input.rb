def key_input
	begin
		system("stty raw -echo")
		input = STDIN.getc
		ensure
		system("stty -raw echo")
	end
	return input
end
