# WitheredFoxyLinux
Inspired by the mod "1/10000 Chance for Withered Foxy Jumpscare Every Second", this is a adaptation of the mod to the whole XFCE/Gnome (Tested) Window managers. Once you execute foxy.sh, every second you'll hace a chance of 1/10000 every second for Withered Foxy to jumpscare you

# Dependences
 - Python3 and PyQt6 (foxy.sh will try to cover these dependences if they aren't found, then execute itself)
 - XFCE or Gnome (Only tested these two, could work with other window managers)

# Install
```bash
git clone https://github.com/gomgo-github/WitheredFoxyLinux.git
cd WitheredFoxyLinux/
chmod a+x ./foxy.sh
chmod a+x ./6am.sh
./foxy.sh
```

/!\ foxy.sh will create a venv automatically, install dependences and then launch, you cant Ctrl+C to Stop the program.
# Features
  - Jumpscare over your apps, happening on top, so it won't close anything, it will just jump over your current opened app
  - Jumpscare sound
  - Audio automatically set to 100% and then back to original %
  - 1/10000 chances of happening every second
  - Auto cover dependences

  - You can force the jumpscare by doing `./foxy.sh -now`
  - You might need to `chmod a+x ./foxy.sh` to get it working

# Stop the Program
 - You can use `6am.sh` to stop `foxy.sh` process, just execute it.

# Personal Recomendation
  - Make foxy.sh start with the session, so every time you power on your PC, Withered Foxy can Jumpscare you or whoever you install this to without even remembering it was installed

# Screenshots
 ![Screenshot1 on Ubuntu Gnome](/Screenshots/Screenshot1.png)
 ![Screenshot2 on Ubuntu Gnome](/Screenshots/Screenshot2.png)

 ## Legal Disclaimer

This project is a non-profit, fan-made creation. 

* **Audio and Imagery:** The sound files and character references (FNAF/Foxy) used in this project are the property of **Scott Cawthon** and **Steel Wool Studios**. No copyright infringement is intended. 
* **Purpose:** This software is intended for educational and entertainment purposes only.
* **Usage:** I do not claim ownership of any assets associated with the *Five Nights at Freddy's* franchise. Please support the official releases of the series.
* **Original Idea:** This program is based on the ymy mod !(1/10000 Chance for Withered Foxy Jumpscare Every Second)[https://steamcommunity.com/sharedfiles/filedetails/?id=3481943642]
