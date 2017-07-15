function dn
	if count $argv > /dev/null
		switch $argv[1]
			case 'c'
				set arg 'clean'
			case 'b'
				set arg 'build'
			case 'r'
				set arg	'run'
			case 't'
				set arg 'test'
			case '*'
				set arg $argv[1]
		end
		if math (count $argv) "> 1" > /dev/null
			dotnet $arg $argv[2..-1]
		else
			dotnet $arg
		end
	else
		dotnet
	end
end
