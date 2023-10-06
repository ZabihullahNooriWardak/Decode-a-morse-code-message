# Hash that maps Morse code representations
MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze # hash is immutable and cannot be modified after its creation.

# Method that returns corresponding alphabet letter if found.  If not found, it returns a space.
def decode_char(morse_char)
  MORSE_CODE[morse_char] || ' '
end

# Method that splits 'morse_word' into individual Morse code characters and concatenate them a single word.
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Method that splits 'morse_word' into individual Morse code words and concatenate them a message.
def decode_message(morse_message)
  morse_words = morse_message.split('   ')
  morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
end

# Variable that stores a string of Morse code.
morse_code_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
# Variable that stores the result of decoding the Morse code message.
decoded_message = decode_message(morse_code_message)
# Printing the decoded message to the console.
puts decoded_message
