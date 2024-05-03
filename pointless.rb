#!/usr/bin/env ruby

puts "
 ██▓███   ▒█████   ██▓ ███▄    █ ▄▄▄█████▓ ██▓    ▓█████   ██████   ██████ 
▓██░  ██▒▒██▒  ██▒▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒▓██▒    ▓█   ▀ ▒██    ▒ ▒██    ▒ 
▓██░ ██▓▒▒██░  ██▒▒██▒▓██  ▀█ ██▒▒ ▓██░ ▒░▒██░    ▒███   ░ ▓██▄   ░ ▓██▄   
▒██▄█▓▒ ▒▒██   ██░░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ▒██░    ▒▓█  ▄   ▒   ██▒  ▒   ██▒
▒██▒ ░  ░░ ████▓▒░░██░▒██░   ▓██░  ▒██▒ ░ ░██████▒░▒████▒▒██████▒▒▒██████▒▒
▒▓▒░ ░  ░░ ▒░▒░▒░ ░▓  ░ ▒░   ▒ ▒   ▒ ░░   ░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░
░▒ ░       ░ ▒ ▒░  ▒ ░░ ░░   ░ ▒░    ░    ░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░░ ░▒  ░ ░
░░       ░ ░ ░ ▒   ▒ ░   ░   ░ ░   ░        ░ ░      ░   ░  ░  ░  ░  ░  ░  
             ░ ░   ░           ░              ░  ░   ░  ░      ░        ░  
                                                                           
  ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓                          
▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒                          
░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░                          
  ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░                           
▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░                           
▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░                             
░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░                              
░  ░  ░  ░          ░░   ░  ▒ ░░░         ░                                
      ░  ░ ░         ░      ░                                              
         ░                                                                 "

         puts 
         puts "https://github.com/the-universal-linux-society"
puts
puts
# Function to generate a random string
def generate_random_string(length)
characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
random_string = Array.new(length) { characters.sample }.join
return random_string
end

# Function to generate a random number
def generate_random_number(min, max)
return rand(min..max)
end

# Function to generate a random date
def generate_random_date()
year = generate_random_number(1970, 2022)
month = generate_random_number(1, 12)
day = generate_random_number(1, 28) # Assuming all months have 28 days for simplicity
return "#{year}-#{format('%02d', month)}-#{format('%02d', day)}"
end

# Function to generate a random IP address
def generate_random_ip()
return "#{generate_random_number(0, 255)}.#{generate_random_number(0, 255)}.#{generate_random_number(0, 255)}.#{generate_random_number(0, 255)}"
end

# Function to generate a random MAC address
def generate_random_mac()
mac_address = Array.new(6) { '%02X' % generate_random_number(0, 255) }.join(':')
return mac_address
end

# Function to generate a random UUID
def generate_random_uuid()
return "#{generate_random_string(8)}-#{generate_random_string(4)}-#{generate_random_string(4)}-#{generate_random_string(4)}-#{generate_random_string(12)}"
end

# Function to generate a random timestamp
def generate_random_timestamp()
return generate_random_number(0, 2147483647)
end

# Function to print text with underlines
def print_with_underline(text)
underline = '-' * text.length
puts underline
puts text
puts underline
end

# Function to print all random information
def print_all_information()
print_with_underline('Random String:')
puts generate_random_string(10)
print_with_underline('Random Number:')
puts generate_random_number(1, 100)
print_with_underline('Random Date:')
puts generate_random_date()
print_with_underline('Random IP Address:')
puts generate_random_ip()
print_with_underline('Random MAC Address:')
puts generate_random_mac()
print_with_underline('Random UUID:')
puts generate_random_uuid()
print_with_underline('Random Timestamp:')
puts generate_random_timestamp()
end

# Function to display main menu
def display_menu()
puts 
puts "CHOOSE YOUR RANDOM TASK"
puts 
puts "1. Random String"
puts 
puts "2. Random Number"
puts 
puts "3. Random Date"
puts
puts "4. Random IP Address"
puts
puts "5. Random MAC Address"
puts
puts "6. Random UUID"
puts
puts "7. Random Timestamp"
puts
puts "8. Generate all of the Random Information"
puts 
puts "9. Exit"
puts
end

# Main program
loop do
display_menu()
print "Enter your choice: "
choice = gets.chomp.to_i

case choice
when 1
print_with_underline('Random String:')
puts generate_random_string(10)
when 2
print_with_underline('Random Number:')
puts generate_random_number(1, 100)
when 3
print_with_underline('Random Date:')
puts generate_random_date()
when 4
print_with_underline('Random IP Address:')
puts generate_random_ip()
when 5
print_with_underline('Random MAC Address:')
puts generate_random_mac()
when 6
print_with_underline('Random UUID:')
puts generate_random_uuid()
when 7
print_with_underline('Random Timestamp:')
puts generate_random_timestamp()
when 8
print_all_information()
when 9
puts "Exiting!"
break
else
puts "Invalid choice. Please enter a number from 1 to 9."
end
end