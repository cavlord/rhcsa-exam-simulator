# RHCSA Exam Simulator

Interactive RHCSA (Red Hat Certified System Administrator) exam practice environment with 17 real exam questions.

## 🚀 Quick Start with GitHub Codespaces

### Option 1: Use This Repository

1. **Fork this repository** to your GitHub account
2. Click the green **"Code"** button
3. Select **"Codespaces"** tab
4. Click **"Create codespace on main"**
5. Wait for environment to build (2-3 minutes)
6. In the terminal, run: `start-rhcsa`
7. Click the popup to open port 7681 in browser
8. Start practicing!

### Option 2: Direct Access

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new)

## 📋 Features

- ✅ **17 RHCSA Exam Questions** - Complete practice set
- ✅ **2-Hour Timer** - Simulates real exam conditions
- ✅ **Interactive Menu** - Navigate questions easily
- ✅ **Progress Tracking** - Resume where you left off
- ✅ **Question-by-Question** - Focus on one task at a time
- ✅ **Validation Script** - Check your solutions
- ✅ **Full Linux Environment** - Ubuntu with all RHCSA tools

## 📚 Exam Topics Covered

1. Network configuration (nmcli)
2. Repository management
3. Service troubleshooting (httpd)
4. User and group management
5. File permissions and SGID
6. Cron job scheduling
7. Autofs configuration
8. Archive creation (tar)
9. Time synchronization (chrony)
10. File searching (find)
11. Text processing (grep)
12. Root password reset
13. LVM management
14. Swap partition
15. Logical volume resizing
16. Tuned profiles

## 🎯 How to Use

### Starting the Exam

```bash
# Option 1: Web terminal (recommended)
start-rhcsa

# Option 2: Direct in terminal
cd /root
./rhcsa_exam_menu.sh
```

### Menu Options

1. **Start/Continue Exam** - Shows next question
2. **Jump to Specific Question** - Select any question 1-17
3. **View All Questions** - See complete question list
4. **Validate Progress** - Check your solutions
5. **Reset Progress** - Start over
6. **Finish Exam** - Complete and see results
7. **Exit to Shell** - Work on tasks

### Working on Tasks

1. Select a question from the menu
2. Choose "Exit to Shell" (option 7)
3. Complete the task in the terminal
4. Type `rhcsa-exam` to return to menu
5. Validate or continue to next question

## 📁 Files Included

- `rhcsa_exam_menu.sh` - Interactive exam interface
- `setup_lab_ubuntu.sh` - Lab environment setup
- `questions.txt` - All exam questions
- `validate_lab.sh` - Solution validation
- `.devcontainer/` - Codespaces configuration

## 🔧 Manual Setup (Without Codespaces)

If you want to run locally:

```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/rhcsa-simulator.git
cd rhcsa-simulator

# Make scripts executable
chmod +x *.sh

# Run setup
sudo ./setup_lab_ubuntu.sh

# Start exam
./rhcsa_exam_menu.sh
```

## 🌐 Sharing with Students

### Method 1: Share Codespace URL
1. Create a Codespace
2. Click "Share" in Codespaces
3. Make it public
4. Share the URL

### Method 2: Fork and Share Repository
1. Students fork your repository
2. They create their own Codespace
3. Each gets their own environment

### Method 3: Web Terminal
1. Run `start-rhcsa` in Codespace
2. Port 7681 will be forwarded
3. Share the forwarded URL
4. Students access via browser

## ⏱️ Exam Duration

- **Standard**: 2 hours (7200 seconds)
- Timer starts automatically
- Shows elapsed and remaining time
- Can finish early or continue after time

## 🎓 Tips for Success

1. **Read questions carefully** - Understand requirements
2. **Test your work** - Use `systemctl status`, `ls -l`, etc.
3. **Use man pages** - `man nmcli`, `man useradd`, etc.
4. **Validate often** - Check your progress regularly
5. **Manage time** - Don't spend too long on one question
6. **Practice regularly** - Repetition builds confidence

## 🔍 Validation

Run validation anytime:

```bash
./validate_lab.sh
```

Shows:
- ✅ PASS - Task completed correctly
- ❌ FAIL - Task needs work
- Score summary

## 🆓 Cost

**GitHub Codespaces Free Tier:**
- 60 hours/month free
- No payment info required
- Perfect for RHCSA practice

## 🐛 Troubleshooting

### Scripts not found
```bash
cd /root
ls -la *.sh
chmod +x *.sh
```

### Web terminal not starting
```bash
# Check if ttyd is installed
which ttyd

# Start manually
ttyd -p 7681 bash
```

### Packages missing
```bash
# Re-run setup
sudo ./setup_lab_ubuntu.sh
```

## 📝 Notes

- Environment is Ubuntu-based (RHEL-compatible)
- Some commands adapted for Ubuntu (httpd→apache2, dnf→apt)
- Core RHCSA concepts remain the same
- Perfect for exam preparation

## 🤝 Contributing

Feel free to:
- Report issues
- Suggest improvements
- Add more questions
- Share your experience

## 📄 License

Free to use for RHCSA exam preparation.

## 🎉 Good Luck!

Practice makes perfect. Use this simulator regularly to build confidence for your RHCSA exam!

---

**Questions?** Open an issue or discussion in this repository.

**Ready to start?** Click the Codespaces button above! 🚀