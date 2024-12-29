import sys
import socket

# Get the URL passed from the Shell script
url = sys.argv[1]

def get_ip_address(url):
    try:
        ip = socket.gethostbyname(url)
        print(f"Website: {url}, IP Address: {ip}")
    except socket.gaierror:
       
        print(f"Error: Could not resolve IP address for {url}")
      
get_ip_address(url)
