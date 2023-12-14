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

   - **Ubuntu:** Use the following command: `sudo apt-get install ruby-full`
   - **Fedora:** Use the following command: `sudo dnf install ruby`
   - **Arch Linux:** Use the following command: `sudo pacman -S ruby`
   - **macOS:** Use Homebrew to install Ruby with: `brew install ruby`
   - **Windows:** Use RubyInstaller available at https://rubyinstaller.org/

**2. Save the Script:** Copy the script into a file named `scan.rb` on your system.

**3. Run the Script:** Open a terminal, navigate to the directory containing `scan.rb`, and run: `ruby scan.rb <ip or domain>`, replacing `<ip or domain>` with the IP address or domain you wish to scan.

**Note:** This script doesn't require any additional Ruby libraries/gems. It only uses built-in Ruby libraries (`socket`, `timeout`, and `thread`), so no other installations are necessary beyond Ruby itself.

Please be informed that port scanning can be interpreted as an aggressive act and may be illegal in some jurisdictions. Always obtain explicit permission before scanning networks that you do not own or have permission to scan.
