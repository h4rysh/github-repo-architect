#!/usr/bin/env bash
# ==============================================================================
# GitHub Repo Architect Skill Installer
# https://github.com/h4rysh/github-repo-architect
# ==============================================================================
set -euo pipefail

SKILL_NAME="github-repo-architect"
REPO_URL="https://raw.githubusercontent.com/h4rysh/github-repo-architect/main/SKILL.md"

BOLD="\033[1m"
GREEN="\033[38;5;82m"
BLUE="\033[38;5;75m"
PURPLE="\033[38;5;141m"
RESET="\033[0m"

echo -e "${PURPLE}"
cat << "EOF"
   ____ _ _   _   _       _       ____                      
  / ___(_) |_| | | |_   _| |__   |  _ \ ___ _ __   ___      
 | |  _| | __| |_| | | | | '_ \  | |_) / _ \ '_ \ / _ \     
 | |_| | | |_|  _  | |_| | |_) | |  _ <  __/ |_) | (_) |    
  \____|_|\__|_| |_|\__,_|_.__/  |_| \_\___| .__/ \___/     
    _             _     _ _            |_|                 
   / \   _ __ ___| |__ (_) |_ ___  ___| |_                 
  / _ \ | '__/ __| '_ \| | __/ _ \/ __| __|                
 / ___ \| | | (__| | | | | ||  __/ (__| |_                 
/_/   \_\_|  \___|_| |_|_|\__\___|\___|\__|                
EOF
echo -e "${RESET}"
echo -e "${BOLD}Installing ${BLUE}${SKILL_NAME}${RESET}${BOLD} for your AI Coding Assistant...${RESET}\n"

# Target directories to search and install to
INSTALLED_COUNT=0

# 1. Antigravity Custom Skills directory
if [ -d "$HOME/.gemini/config/skills" ]; then
  DEST="$HOME/.gemini/config/skills/$SKILL_NAME"
  mkdir -p "$DEST"
  curl -fsSL "$REPO_URL" -o "$DEST/SKILL.md"
  echo -e " ${GREEN}✔${RESET} Installed into Antigravity config: ${BLUE}$DEST/SKILL.md${RESET}"
  INSTALLED_COUNT=$((INSTALLED_COUNT + 1))
fi

# 2. Universal Agent Skills (~/.agents/skills)
if [ -d "$HOME/.agents/skills" ]; then
  DEST="$HOME/.agents/skills/$SKILL_NAME"
  mkdir -p "$DEST"
  curl -fsSL "$REPO_URL" -o "$DEST/SKILL.md"
  echo -e " ${GREEN}✔${RESET} Installed into Universal Agent Skills: ${BLUE}$DEST/SKILL.md${RESET}"
  INSTALLED_COUNT=$((INSTALLED_COUNT + 1))
fi

# 3. Claude Code config directory
if [ -d "$HOME/.claude/skills" ]; then
  DEST="$HOME/.claude/skills/$SKILL_NAME"
  mkdir -p "$DEST"
  curl -fsSL "$REPO_URL" -o "$DEST/SKILL.md"
  echo -e " ${GREEN}✔${RESET} Installed into Claude Code skills: ${BLUE}$DEST/SKILL.md${RESET}"
  INSTALLED_COUNT=$((INSTALLED_COUNT + 1))
fi

# 4. Fallback if none of the above exist
if [ "$INSTALLED_COUNT" -eq 0 ]; then
  DEST="$HOME/.agents/skills/$SKILL_NAME"
  mkdir -p "$DEST"
  curl -fsSL "$REPO_URL" -o "$DEST/SKILL.md"
  echo -e " ${GREEN}✔${RESET} Created and installed into: ${BLUE}$DEST/SKILL.md${RESET}"
fi

echo -e "\n${GREEN}${BOLD}Successfully installed!${RESET}"
echo -e "You can now invoke ${BOLD}/github-repo-architect${RESET} in Antigravity, Claude Code, or Cursor.\n"
