#!/usr/bin/env bash
# Skills.sh Recommended Stack Installer for macOS / Linux
# Usage: curl -fsSL https://raw.githubusercontent.com/MarkChrisE2091/Agents-Skills/main/install.sh | bash

set -e

SKILLS=(
  "https://github.com/vercel-labs/skills|find-skills"
  "https://github.com/obra/superpowers|brainstorming"
  "https://github.com/obra/superpowers|writing-plans"
  "https://github.com/mattpocock/skills|grilling"
  "https://github.com/anthropics/skills|frontend-design"
  "https://github.com/nextlevelbuilder/ui-ux-pro-max-skill|ui-ux-pro-max"
  "https://github.com/vercel-labs/agent-skills|vercel-react-best-practices"
  "https://github.com/obra/superpowers|test-driven-development"
  "https://github.com/anthropics/skills|webapp-testing"
  "https://github.com/obra/superpowers|requesting-code-review"
  "https://github.com/obra/superpowers|receiving-code-review"
  "https://github.com/github/awesome-copilot|git-commit"
)

echo ""
echo "Skills.sh Recommended Stack Installer"
echo "--------------------------------------"
echo ""

TOTAL=${#SKILLS[@]}
CURRENT=0

for entry in "${SKILLS[@]}"; do
  REPO="${entry%%|*}"
  SKILL="${entry##*|}"
  CURRENT=$((CURRENT + 1))
  echo "[$CURRENT/$TOTAL] Installing $SKILL..."
  if npx skills add "$REPO" --skill "$SKILL"; then
    echo "  Done."
  else
    echo "  Warning: Failed to install $SKILL"
  fi
done

echo ""
echo "All done! Installed $TOTAL skills."
