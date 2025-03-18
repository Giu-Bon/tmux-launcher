## Dependencies

### Required:
- **tmux**  
  Install using your distribution's package manager:
  - RHEL-based (Fedora, Oracle, etc.):
    ```bash
    sudo dnf install tmux
    ```
  - Debian-based (Ubuntu, etc.):
    ```bash
    sudo apt install tmux
    ```

- **bash**  obviously lol 

### Optional:
- **fastfetch**  
  For displaying system information before starting Tmux:  
  - RHEL-based:
    ```bash
    sudo dnf install fastfetch
    ```
  - Debian-based:
    ```bash
    sudo apt install fastfetch
    ```

- **fish** (if you prefer the Fish shell):  
  - RHEL-based:
    ```bash
    sudo dnf install fish
    ```
  - Debian-based:
    ```bash
    sudo apt install fish
    ```

---

## How to Setup

1. Place the script in a directory of your choice.  
2. Make the script executable if necessary:  
   ```bash
   chmod +x /path/to/tmux-create.sh
   ```
3. Execute the script:  
   ```bash
   bash /path/to/tmux-create.sh
   ```

---

## Optional/Extra: Custom Command

You can set up a custom command to easily run the script with additional features like `fastfetch`.  
If you don't have fastfetch then remove it. 

### For **Bash**:
Add the following function to your `~/.bashrc`:
```bash
tmux-loader() { 
    fastfetch 
    bash /path/to/tmux-create.sh 
}
```

Reload your shell or source the configuration file:
```bash
source ~/.bashrc
```

### For **Fish**:
Add the following function to your `~/.config/fish/config.fish`:
```fish
function tmux-loader
   fastfetch
   bash /path/to/tmux-create.sh
end
```

Reload your shell:
```fish
source ~/.config/fish/config.fish
```

---

Enjoy using `tmux-create`! Feel free to customize or extend it further to suit your needs.



---
*for my Obsidian:*
![[tmux-create.sh]]
