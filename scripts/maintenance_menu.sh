#!/bin/bash
# maintenance_menu.sh — Main menu for System Maintenance Suite

while true; do
    clear
    echo "==========================================="
    echo "   🧰 System Maintenance Bash Suite"
    echo "==========================================="
    echo "1. Backup Files"
    echo "2. System Update & Cleanup"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "-------------------------------------------"
    read -p "Choose an option (1-4): " choice

    case $choice in
        1)
            echo "Starting Backup..."
            bash "$(dirname "$0")/backup.sh"
            read -p "Press Enter to return to menu..."
            ;;
        2)
            echo "Starting System Update & Cleanup..."
            bash "$(dirname "$0")/update_cleanup.sh"
            read -p "Press Enter to return to menu..."
            ;;
        3)
            echo "Starting Log Monitoring..."
            bash "$(dirname "$0")/log_monitor.sh"
            read -p "Press Enter to return to menu..."
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Try again."
            sleep 1
            ;;
    esac
done

