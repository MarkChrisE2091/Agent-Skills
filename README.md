# Skills.sh Install Guide

A reference for installing AI agent skills via `npx skills add`. This guide only contains some top skills from [skills.sh](https://skills.sh).

## Quick Install

Install the recommended skill stack with a single command.

**Windows (PowerShell):**

```powershell
irm https://raw.githubusercontent.com/MarkChrisE2091/Agents-Skills/main/install.ps1 | iex
```

**macOS / Linux:**

```bash
curl -fsSL https://raw.githubusercontent.com/MarkChrisE2091/Agents-Skills/main/install.sh | bash
```

---

## Recommended Stack (Full Stack Software Development)

> **Tip:** When installing, you can ask your AI agent to "install all of these for claude-code and Codex at project scope."

```bash
# 1. Find Skills
npx skills add https://github.com/vercel-labs/skills --skill find-skills

# 2. Brainstorm & Planning
npx skills add https://github.com/obra/superpowers --skill brainstorming
npx skills add https://github.com/obra/superpowers --skill writing-plans

# 3. Design
npx skills add https://github.com/anthropics/skills --skill frontend-design
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max

# 4. Implementation
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices

# 5. Testing
npx skills add https://github.com/obra/superpowers --skill test-driven-development
npx skills add https://github.com/anthropics/skills --skill webapp-testing

# 6. Code Review
npx skills add https://github.com/obra/superpowers --skill requesting-code-review
npx skills add https://github.com/obra/superpowers --skill receiving-code-review

# 7. Commits
npx skills add https://github.com/github/awesome-copilot --skill git-commit
```

---

## Top Skill Collections

| Provider | Repo | Browse |
| --- | --- | --- |
| Vercel Labs | `vercel-labs/skills` | [skills.sh](https://skills.sh/vercel-labs/skills) |
| Vercel Labs | `vercel-labs/agent-skills` | [skills.sh](https://skills.sh/vercel-labs/agent-skills) |
| Vercel Labs | `vercel-labs/agent-browser` | [skills.sh](https://skills.sh/vercel-labs/agent-browser) |
| Anthropic | `anthropics/skills` | [skills.sh](https://skills.sh/anthropics/skills) |
| Anthropic | `anthropics/claude-code` | [skills.sh](https://skills.sh/anthropics/claude-code) |
| Obra | `obra/superpowers` | [skills.sh](https://skills.sh/obra/superpowers) |
| Next Level Builder | `nextlevelbuilder/ui-ux-pro-max-skill` | [skills.sh](https://skills.sh/nextlevelbuilder/ui-ux-pro-max-skill/ui-ux-pro-max) |
| Unicodeveloper | `unicodeveloper/shannon` | [skills.sh](https://skills.sh/unicodeveloper/shannon) |
| Corey Haines | `coreyhaines31/marketingskills` | [skills.sh](https://skills.sh/coreyhaines31/marketingskills) |

---

## Bulk Install (All Collections)

Replace `<agent>` with your target agent (`claude-code`, `codex`, etc.).

**PowerShell (Windows):**

```powershell
@(
  "vercel-labs/skills",
  "vercel-labs/agent-skills",
  "vercel-labs/agent-browser",
  "anthropics/skills",
  "anthropics/claude-code",
  "obra/superpowers",
  "nextlevelbuilder/ui-ux-pro-max-skill",
  "unicodeveloper/shannon",
  "coreyhaines31/marketingskills"
) | ForEach-Object { npx skills add $_ --skill '*' -a <agent> -y }
```

**Bash (macOS / Linux):**

```bash
repos=(
  "vercel-labs/skills"
  "vercel-labs/agent-skills"
  "vercel-labs/agent-browser"
  "anthropics/skills"
  "anthropics/claude-code"
  "obra/superpowers"
  "nextlevelbuilder/ui-ux-pro-max-skill"
  "unicodeveloper/shannon"
  "coreyhaines31/marketingskills"
)

for repo in "${repos[@]}"; do
  npx skills add "$repo" --skill '*' -a <agent> -y
done
```

**Individual:**

```powershell
# Vercel Labs
npx skills add vercel-labs/skills        --skill '*' -a <agent> -y
npx skills add vercel-labs/agent-skills  --skill '*' -a <agent> -y
npx skills add vercel-labs/agent-browser --skill '*' -a <agent> -y

# Anthropic
npx skills add anthropics/skills         --skill '*' -a <agent> -y
npx skills add anthropics/claude-code    --skill '*' -a <agent> -y

# Community
npx skills add obra/superpowers                     --skill '*'     -a <agent> -y
npx skills add nextlevelbuilder/ui-ux-pro-max-skill --skill '*'     -a <agent> -y
npx skills add unicodeveloper/shannon               --skill shannon -a <agent> -y
npx skills add coreyhaines31/marketingskills        --skill '*'     -a <agent> -y
```

> **Note:** `unicodeveloper/shannon` uses `--skill shannon` (named skill) instead of `--skill '*'` (wildcard).
