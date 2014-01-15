require_relative 'source'
require 'pry'

def valid_ip_addresses(source_text)
  #Pattern\.Pattern\.Pattern\.Pattern
  valid_addresses = $source_text.scan(/(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)
  valid_addresses
end

def valid_mit_ip_addresses(source_text)
  valid_mit_addresses = $source_text.scan(/(?:(?:18?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/)
  valid_mit_addresses
end

def non_mit_ip_addresses(source_text)
  valid_non_mit_addresses = $source_text.scan

def valid_phone_numbers(source_text)
  $source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes
end

def email_addresses
end

def zip_codes
end

def hex_colors
end
