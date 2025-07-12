#!/data/data/com.termux/files/usr/bin/bash

clear
echo -e "\e[91m\n🔐 HCO Gmail Recovery Assistant\e[0m"
echo "Educational tool to help recover your Gmail without access to phone or email"
echo "-----------------------------------------------------------"

# Step 1: Open Google Recovery Page
echo -e "\n📲 Opening Gmail Recovery Page..."
termux-open-url "https://accounts.google.com/signin/recovery"
echo -e "\n✅ Gmail Recovery Page opened in your default browser."

# Step 2: Ask user for recovery-related info
read -p $'\n📅 Approximate account creation date (e.g., Jan 2018): ' created
read -p $'📨 Frequently emailed contacts (comma-separated): ' contacts
read -p $'🏷️ Labels you created (e.g., Work, Personal): ' labels
read -p $'📍 Last login location (City/Country): ' location
read -p $'🧠 Google services used (e.g., Drive, YouTube): ' services
read -p $'💡 Any other notes (devices, IP, old passwords): ' notes

# Step 3: Save answers to a file
mkdir -p saved
echo "==== HCO Gmail Recovery Assistant - Saved Info ====" > saved/recovery.txt
echo "Creation Date: $created" >> saved/recovery.txt
echo "Frequent Contacts: $contacts" >> saved/recovery.txt
echo "Labels: $labels" >> saved/recovery.txt
echo "Last Login Location: $location" >> saved/recovery.txt
echo "Google Services Used: $services" >> saved/recovery.txt
echo "Other Notes: $notes" >> saved/recovery.txt

# Final Message
echo -e "\n📄 Your recovery info has been saved to: \e[92msaved/recovery.txt\e[0m"
echo "Use this information when answering Google's recovery questions."
echo -e "\n🛡️ Tip: Always use the same device/location you've used for Gmail before."