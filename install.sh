#!/usr/bin/env bash
# music-taste-skill installer
# Usage: curl -fsSL https://raw.githubusercontent.com/nexora-fe/music-taste-skill/main/install.sh | bash

set -e

SKILL_NAME="music-taste-skill"
SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
SKILL_DIR="$SKILLS_DIR/$SKILL_NAME"
REPO="https://github.com/nexora-fe/music-taste-skill"
RAW="https://raw.githubusercontent.com/nexora-fe/music-taste-skill/main"

echo "🎵 Installing $SKILL_NAME..."

# Check for git or curl
if command -v git &>/dev/null; then
  INSTALL_METHOD="git"
elif command -v curl &>/dev/null; then
  INSTALL_METHOD="curl"
else
  echo "❌ Error: git or curl is required to install this skill."
  exit 1
fi

# Create skills directory if needed
mkdir -p "$SKILLS_DIR"

# Remove existing installation
if [ -d "$SKILL_DIR" ]; then
  echo "   Removing existing installation..."
  rm -rf "$SKILL_DIR"
fi

if [ "$INSTALL_METHOD" = "git" ]; then
  git clone --depth=1 "$REPO.git" "$SKILL_DIR" 2>/dev/null
  # Remove installer/dev files from cloned copy
  rm -f "$SKILL_DIR/install.sh" "$SKILL_DIR/README.md"
else
  # Fallback: download individual files via curl
  mkdir -p "$SKILL_DIR/references"
  curl -fsSL "$RAW/SKILL.md" -o "$SKILL_DIR/SKILL.md"
  curl -fsSL "$RAW/references/world-music.md" -o "$SKILL_DIR/references/world-music.md"
  curl -fsSL "$RAW/references/decades.md" -o "$SKILL_DIR/references/decades.md"
fi

echo ""
echo "✅ $SKILL_NAME installed to $SKILL_DIR"
echo ""
echo "   Trigger examples:"
echo "   • \"sabah koşusu için playlist yap\""
echo "   • \"yağmurlu akşam için melankoli\""
echo "   • \"Brezilya tatili vibes\""
echo "   • \"1970'ler Türkiye nostaljisi\""
echo ""
echo "   Restart Claude Code to activate."
