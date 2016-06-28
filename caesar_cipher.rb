def caesar_cipher(plaintext, key)
	chars = plaintext.split("")
	asciis = []
	key = key % 26
	i = 0
	chars.each do |char|
		if /[A-Z]/ === char
			cipher = char.ord + key
			if cipher < 65
				ascii = 91 - (65 - cipher)
			elsif cipher > 90
				ascii = 64 + (cipher - 90)
			else
				ascii = cipher
			end
			asciis[i] = ascii.chr

		elsif /[a-z]/ === char
			cipher = char.ord + key
			if cipher < 97
				ascii = 123 - (97 - cipher)
			elsif cipher > 122
				ascii = 96 + (cipher - 122)
			else
				ascii = cipher
			end
			asciis[i] = ascii.chr

		else
			asciis[i] = char
		end
		i += 1
	end
	return asciis.join
end

puts "****************************"
puts "* Caesar cipher encryption *"
puts "****************************"
print "Please enter a text: "
text = gets.chomp
print "Please enter a key: "
key = gets.chomp.to_i
cipher = caesar_cipher(text, key)
puts "Cipher: #{cipher}"