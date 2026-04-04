# Skills.sh Recommended Stack Installer for Windows
# Usage: irm https://raw.githubusercontent.com/MarkChrisE2091/Agents-Skills/main/install.ps1 | iex

$skills = @(
  @{ repo = "https://github.com/vercel-labs/skills";                    skill = "find-skills" },
  @{ repo = "https://github.com/obra/superpowers";                      skill = "brainstorming" },
  @{ repo = "https://github.com/obra/superpowers";                      skill = "writing-plans" },
  @{ repo = "https://github.com/anthropics/skills";                     skill = "frontend-design" },
  @{ repo = "https://github.com/nextlevelbuilder/ui-ux-pro-max-skill"; skill = "ui-ux-pro-max" },
  @{ repo = "https://github.com/vercel-labs/agent-skills";              skill = "vercel-react-best-practices" },
  @{ repo = "https://github.com/obra/superpowers";                      skill = "test-driven-development" },
  @{ repo = "https://github.com/anthropics/skills";                     skill = "webapp-testing" },
  @{ repo = "https://github.com/obra/superpowers";                      skill = "requesting-code-review" },
  @{ repo = "https://github.com/obra/superpowers";                      skill = "receiving-code-review" },
  @{ repo = "https://github.com/github/awesome-copilot";                skill = "git-commit" }
)

Write-Host ""
Write-Host "Skills.sh Recommended Stack Installer" -ForegroundColor Cyan
Write-Host "--------------------------------------" -ForegroundColor Cyan
Write-Host ""

$total = $skills.Count
$current = 0

foreach ($item in $skills) {
  $current++
  Write-Host "[$current/$total] Installing $($item.skill)..." -ForegroundColor Yellow
  npx skills add $item.repo --skill $item.skill
  if ($LASTEXITCODE -ne 0) {
    Write-Host "  Warning: Failed to install $($item.skill)" -ForegroundColor Red
  } else {
    Write-Host "  Done." -ForegroundColor Green
  }
}

Write-Host ""
Write-Host "All done! Installed $total skills." -ForegroundColor Cyan
