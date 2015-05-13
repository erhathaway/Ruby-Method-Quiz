def key_input(*valid_responses)
	begin
		system("stty raw -echo")
		input = STDIN.getc
	ensure
		system("stty -raw echo")
	end
	unless valid_responses.include?(input) || valid_responses == []
		input = key_input(*valid_responses)
	end
	input
end
