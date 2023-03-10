@morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => 1,
  '..---' => 2,
  '...--' => 3,
  '....-' => 4,
  '.....' => 5,
  '-....' => 6,
  '--...' => 7,
  '---..' => 8,
  '----.' => 9,
  '-----' => 0
}

def decode_char(char)
  @morse_code[char]
end

def decode_word(string)
  word = []
  string.split.each do |char|
    word.push(decode_char(char))
  end
  word
end

def decode(sentence)
  message = []
  sentence.split.each do |word|
    words_in = message.push(decode_word(word))
    @joined_msg = words_in.join(' ')
  end
  @joined_msg
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
