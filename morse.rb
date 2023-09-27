Morse_alphabet = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

  #change to charaters
def morse_to_character(morse_code)
  Morse_alphabet[morse_code]
end

  #change the word
def morse_to_worlds(morse_code)
  characters = morse_code.split(' ')
  characters.map { |char| Morse_alphabet[char] }.join('')
end

    #change to words
def morse_to_sentences(morse_code)
    words = morse_code.split('  ')
    result = words.map do |word|
      characters = word.split(' ')
      characters.map { |char| Morse_alphabet[char] }.join('')
    end
    result.join(' ')
  end

 message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
    puts morse_to_sentences(message)