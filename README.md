# 🧰 System Maintenance Bash Suite

A collection of **Bash scripts** that automate everyday Linux system-maintenance tasks — backups, updates, clean-ups, and log monitoring — wrapped in a simple interactive menu.

---

## 🚀 Features
- **Automated Backup** – Copies your chosen directory (e.g., `Documents/`) into timestamped folders for quick restoration.  
- **System Update & Cleanup** – Runs `apt update`, upgrades packages, removes leftovers, and logs everything.  
- **Log Monitoring** – Scans `/var/log/syslog` for recent errors or warnings and saves a summarized report.  
- **Interactive Menu** – One menu to launch all maintenance actions.

---

## ⚙️ How to Run
```bash
# 1. Clone the repository
git clone https://github.com/rishi99138/System-Maintenance-Bash-Suite.git
cd System-Maintenance-Bash-Suite/scripts

# 2. Make sure scripts are executable
chmod +x *.sh

# 3. Launch the suite
./maintenance_menu.sh

To exit the menu → press 4 or Ctrl + C.

📁 Project Structure

System-Maintenance-Bash-Suite/
│
├── scripts/
│   ├── backup.sh
│   ├── update_cleanup.sh
│   ├── log_monitor.sh
│   └── maintenance_menu.sh
│
├── Backups/            # created automatically during backups
├── screenshots/        # proof screenshots
├── README.md
└── .gitignore


Screenshots
Main Menu
Backup Script in Action
System Update & Cleanup Output


What I Learned
Writing modular Bash scripts for automation
Using Linux utilities (cp, apt, grep, etc.) effectively
Implementing logging and error handling in shell scripts
Working with Git & GitHub for real-world project deployment

Future Improvements
Add email notifications after backups
Support multiple source directories
Integrate with cron for automatic scheduling

👨‍💻 Author

Rishi Mandal
