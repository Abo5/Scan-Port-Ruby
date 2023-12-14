![IMG_7362](https://github.com/Abo5/Scan-Port-Ruby/assets/40110835/810ba8d7-ba4d-4569-aab6-3980f9c232c8)






Hello everyone on Git Hub! I'd like to introduce you to a new coding tool named "Barida". Now, you might be wondering, what's the story behind this name? Let's take a quick tour!

So, "Barida" is an Arabic word that translates to "cold" in English. But don't worry, the tool is anything but cold! It's actually hot as a chili pepper, efficiently performing network scans. Then why this name?

I guess everyone knows the feeling when you're worn out from work, and you just want something 'cold' to refresh yourself. That's what "Barida" does. When you feel that network scanning is getting too heated, you can use "Barida" to take the heat off you and make things seem cooler!

And in the end, could there be anything cooler than a network scanning tool that performs with high efficiency? I think the answer would be a 'No'!

I hope you enjoy using "Barida" as much as I enjoyed developing it. And remember, even in the hottest times, there's always some coolness waiting for you with "Barida"! 

Your description and instructions are quite comprehensive and accurate. Here is a slightly reworded version with additional instructions for installing Ruby on some other Linux distributions:

## Ruby Port Scanner

This tool is a Ruby script that conducts multithreaded port scanning to identify open ports on an IP address or domain. It checks well-known ports by default, but can be easily extended to include other ports as required.

## Features

1. **Multithreading:** Utilizes Ruby's threading capabilities to concurrently scan multiple ports, resulting in a faster operation than sequential port scanning.
2. **Domain and IP Address Input:** Accepts both IP addresses and domains. If a domain is given, it is resolved to an IP address using the `IPSocket.getaddress` method.
3. **Timeout:** Includes a one-second timeout for each port scan, preventing hang-ups on non-responsive ports.
4. **Thread-Safe Output:** Employs a Mutex object to ensure that console output is thread-safe.
5. **Well-Known Ports:** Includes a dictionary of well-known ports and their corresponding services for reference.

## Usage

To use the script, you need Ruby installed on your machine. You then pass the IP address or domain as a command-line argument:

```
ruby scan.rb <ip or domain>
```

The script will scan the specified IP or domain and report any open ports it finds.

## Setup

**1. Install Ruby:** The installation method for Ruby can vary depending on your operating system.

   - **Ubuntu:** Use the following command: ```sudo apt-get install ruby-full```
   - **Fedora:** Use the following command: ```sudo dnf install ruby```
   - **Arch Linux:** Use the following command: ```sudo pacman -S ruby```
   - **macOS:** Use Homebrew to install Ruby with: ```brew install ruby```
   - **Windows:** Use RubyInstaller available at https://rubyinstaller.org/

**2. Save the Script:** Copy the script into a file named `scan.rb` on your system.

**3. Run the Script:** Open a terminal, navigate to the directory containing `scan.rb`, and run: ```ruby scan.rb <ip or domain>``` replacing `<ip or domain>` with the IP address or domain you wish to scan.

**Note:** This script doesn't require any additional Ruby libraries/gems. It only uses built-in Ruby libraries (`socket`, `timeout`, and `thread`), so no other installations are necessary beyond Ruby itself.

Please be informed that port scanning can be interpreted as an aggressive act and may be illegal in some jurisdictions. Always obtain explicit permission before scanning networks that you do not own or have permission to scan.
