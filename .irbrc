def from_int(s)
  res = []
  s.chars.each_slice(2) do |slice|
    res << (slice.join.to_i(16).chr)
  end
  res
end

def filter_non_ascii(s)
  encoding_options = {
    :invalid           => :replace,  # Replace invalid byte sequences
    :undef             => :replace,  # Replace anything not defined in ASCII
    :replace           => '',        # Use a blank for those replacements
    :universal_newline => true       # Always break lines with \n
  }
  s.encode(Encoding.find('ASCII'), encoding_options).inspect
end
