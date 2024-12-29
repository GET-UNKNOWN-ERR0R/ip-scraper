# Website IP Scraper

## Description

The **Website IP Scraper** project is a Python and Shell-based program that allows you to resolve the IP address of multiple websites. The program fetches URLs from a file (`urls.txt`), uses a Shell script to automate the process, and uses Python's built-in `socket` library to resolve and print the IP addresses of the websites.

This is a simple tool that can be used to check the IP addresses of websites, useful for network diagnostics, monitoring, and educational purposes.

---

![image](ip_img.png)

## Features

- Fetches a list of websites from a text file (`urls.txt`).
- Uses **Shell scripting** to automate the process of passing each URL to a Python script.
- Resolves the IP address for each URL using Python's **`socket`** library.
- Displays the website along with its corresponding IP address.
- Handles errors if a website cannot be resolved.

---

## Prerequisites

- **Python 3.x** installed on your system.
- **No external libraries** are needed; the program uses Python's built-in **`socket`** library.
- **Shell** (for running the Shell script on Linux/Mac, or Windows Subsystem for Linux).

---

## Installation & Setup

### 1.Clone the Repository

If you're using a Git repository, clone the project to your local machine:

```bash
git clone https://github.com/GET-UNKNOWN-ERR0R/ip-scraper.git
cd ip-scraper
```
### 2.Executable cmds
```bash
chmod +x fetch_urls.sh
```
### 3.Run
```bash
./fetch_urls.sh
```

## License 
