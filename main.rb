require_relative 'source'
require 'pry'

def valid_ip_addresses(source_text)
  #Pattern\.Pattern\.Pattern\.Pattern
  valid_addresses = $source_text.scan(/(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)
end

def valid_mit_ip_addresses(source_text)
  valid_mit_addresses = $source_text.scan(/(?:(?:18?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)
end

def non_mit_ip_addresses(source_text)
  valid_addresses = $source_text.scan(/(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)
  valid_mit_addresses = $source_text.scan(/(?:(?:18?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)

  valid_non_mit_addresses = valid_addresses -valid_mit_addresses

  valid_non_mit_addresses
end

def valid_phone_numbers(source_text)
  $source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(source_text)
  valid_area_codes = $source_text.scan(/[2-9][0-8][0-9]/)
end

def email_addresses(source_text)
  valid_email_addresses = $source_text.scan()
end

def zip_codes(source_text)
  valid_zip_codes = $source_text.scan(/\b[0-9]{5}\b/)
end
def hex_colors(source_text)

  #A-F, 0-9
  valid_hex_colors = $source_text.scan(/(?<=#)[0-9a-f]{6}/)
end


