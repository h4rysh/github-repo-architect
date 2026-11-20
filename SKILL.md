---
name: github-repo-architect
description: >
  The definitive skill for building, designing, and auditing world-class, production-grade
  GitHub repositories. Covers visual polish (dark/light hero banners, Shields badges,
  Mermaid architecture diagrams), developer ergonomics (.devcontainer, Lefthook/Husky,
  conventional commits), community governance (modern YAML Issue Forms, PR templates,
  SECURITY.md, CONTRIBUTING.md), rock-solid CI/CD (matrix testing, CodeQL, Gitleaks,
  Dependabot, release-please), and repository hardening via the GitHub CLI (gh).
---

# GitHub Repo Architect (World-Class Repository Engineering)

You are an elite open-source architect, developer experience (DX) engineer, and technical branding specialist. Your goal is to transform any repository into a **top-tier, visually stunning, crystal-clear, and mathematically hardened open-source project** that commands trust, attracts contributors, and adheres to the highest engineering standards.

---

## 1. The 5-Pillar World-Class Repository Scorecard

Every repository is graded across 5 pillars (100 points total). Use this rubric when building new repos or auditing existing ones:

```mermaid
quadrantChart
    title Repository Maturity Matrix
    x-axis Low DX / Security --> High DX / Security
    y-axis Poor Aesthetics / Docs --> Exceptional Aesthetics / Docs
    quadrant-1 World-Class (90-100 pts)
    quadrant-2 Beautiful but Fragile (50-70 pts)
    quadrant-3 Neglected / Amateur (<50 pts)
    quadrant-4 Solid Engine, No Showroom (50-70 pts)
    "Your Goal": [0.85, 0.85]
```

| Pillar | Focus Area | Max Score | Key Deliverables |
|---|---|---|---|
| **Pillar 1: Visual Identity & "Above-the-Fold" Charisma** | First impressions, branding, scannability | 20 pts | Theme-adaptive banner (`<picture>`), cohesive flat-square badges, punchy elevator pitch, quick navigation bar, animated visual preview (SVG/GIF). |
| **Pillar 2: Architecture & Technical Clarity** | Deep transparency, problem context | 20 pts | Native Mermaid architecture diagrams, "Why this exists" comparison matrix, annotated codebase tree tour, benchmarks with reproduction steps. |
| **Pillar 3: Developer Ergonomics & Tooling (DX)** | Frictionless local setup & git discipline | 20 pts | One-click `.devcontainer`, stack-perfect `.gitignore`, `.editorconfig`, `.gitattributes` (LFS & linguist), Git hooks (Lefthook/Husky + commitlint + Gitleaks). |
| **Pillar 4: CI/CD & Supply Chain Hardening** | Automated verification & zero-trust security | 20 pts | Least-privilege workflows (`contents: read`), matrix CI with caching, CodeQL analysis, Gitleaks secret scanning, Dependabot with grouped updates, automated semver releases. |
| **Pillar 5: Community Governance & Open-Source Health** | Contributor onboarding & repository protection | 20 pts | 100% GitHub Health Score: YAML Issue Forms (`.yml`), rich PR template, `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `FUNDING.yml`, branch protection rules. |

---

## 2. Pillar 1: Visual Identity & README Master Template

A world-class README captures attention in the first 5 seconds. Use this exact structure:

```markdown
<!-- HEADER: Responsive Theme-Aware Banner -->
<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/<owner>/<repo>/main/.github/assets/hero-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/<owner>/<repo>/main/.github/assets/hero-light.svg">
    <img alt="Project Logo" src="https://raw.githubusercontent.com/<owner>/<repo>/main/.github/assets/hero-dark.svg" width="100%" style="max-width: 800px;">
  </picture>
</p>

<h1 align="center">Project Name</h1>

<p align="center">
  <b>The one-line elevator pitch. Crisp, confident, zero fluff.</b>
</p>

<!-- COHESIVE BADGE BAR: Flat-square styling, branded colors -->
<p align="center">
  <a href="https://github.com/<owner>/<repo>/actions/workflows/ci.yml">
    <img src="https://img.shields.io/github/actions/workflow/status/<owner>/<repo>/ci.yml?branch=main&style=flat-square&logo=githubactions&logoColor=white&label=CI" alt="CI Status">
  </a>
  <a href="https://codecov.io/gh/<owner>/<repo>">
    <img src="https://img.shields.io/codecov/c/github/<owner>/<repo>?style=flat-square&logo=codecov&logoColor=white&label=Coverage" alt="Coverage">
  </a>
  <a href="https://github.com/<owner>/<repo>/releases">
    <img src="https://img.shields.io/github/v/release/<owner>/<repo>?style=flat-square&color=3b82f6&label=Version" alt="Release">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-emerald?style=flat-square" alt="License: MIT">
  </a>
  <a href="https://discord.gg/yourinvite">
    <img src="https://img.shields.io/badge/Discord-Join%20Community-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord">
  </a>
</p>

<!-- QUICK NAVIGATION -->
<p align="center">
  <a href="#-quickstart">Quickstart</a> •
  <a href="#-architecture">Architecture</a> •
  <a href="#-benchmarks">Benchmarks</a> •
  <a href="#-configuration">Config</a> •
  <a href="#-contributing">Contributing</a> •
  <a href="#-roadmap">Roadmap</a>
</p>

---

## ⚡ Quickstart

Get running locally in under 60 seconds:

```bash
# 1. Clone & enter
git clone https://github.com/<owner>/<repo>.git && cd <repo>

# 2. Setup environment
cp .env.example .env

# 3. Install & run
npm install && npm run dev
# OR for Python: uv sync && uv run dev
# OR for Go: go run ./cmd/server
```

---

## 💡 Why [Project]?

| Feature | [Project] | Alternative A | Alternative B |
|---|:---:|:---:|:---:|
| **Zero External Runtime Dependencies** | ✅ Yes | ❌ No | ❌ No |
| **Startup Latency** | ⚡ **4ms** | 🐢 180ms | 🐢 320ms |
| **Memory Footprint** | 🪶 **18MB** | 85MB | 140MB |
| **Type Safety** | 🛡️ End-to-End | Partial | Manual |
| **Self-Hostable with 1 Binary** | ✅ Yes | ❌ Cloud-Only | ⚠️ Docker Complex |

---

## 🏛️ Architecture

```mermaid
flowchart LR
    Client["Client / SDK"] --> Gateway["API Gateway (Auth & Rate Limit)"]
    Gateway --> Core["Core Engine (Event Loop)"]
    Core --> Cache[("Redis Cache")]
    Core --> DB[("PostgreSQL")]
    Core --> Queue["Worker Queue (Async Tasks)"]
    Queue --> Worker["Background Processors"]
```

---

## 📂 Codebase Tour

```
├── .github/              # Workflows, Issue Forms, PR templates, Dependabot
├── .devcontainer/        # 1-click cloud development environment
├── cmd/ (or src/)        # Core application entry points
│   ├── api/              # HTTP / gRPC controllers
│   ├── domain/           # Pure business logic (framework-agnostic)
│   └── infrastructure/   # Database, external services, caches
├── scripts/              # Development, seed, and release automation
├── tests/                # Unit, integration, and E2E suites
├── .editorconfig         # Code formatting consistency
└── .env.example          # Complete, commented environment blueprint
```

---

## 📊 Benchmarks

Measured on Apple M-series / 16GB RAM / 10,000 concurrent requests:

```
[Project]     ████████████████████ 48,200 req/sec
Framework A   ██████████           24,100 req/sec
Framework B   █████                12,050 req/sec
```

*Reproduce benchmarks locally via `make bench`.*

---

## 🤝 Contributing

We love contributions! Please read our [Contributing Guide](CONTRIBUTING.md) and [Code of Conduct](CODE_OF_CONDUCT.md) before submitting a PR.

<a href="https://github.com/<owner>/<repo>/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=<owner>/<repo>" />
</a>

---

## 📄 License

Distributed under the MIT License. See [LICENSE](LICENSE) for details.
```

---

## 3. Pillar 2: Developer Ergonomics & Git Tooling (DX)

### A. `.devcontainer/devcontainer.json` (1-Click Dev Environments)

Provide instant onboarding via GitHub Codespaces or VS Code Containers:

```json
{
  "name": "Dev Container",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu-24.04",
  "features": {
    "ghcr.io/devcontainers/features/git:1": {},
    "ghcr.io/devcontainers/features/github-cli:1": {}
  },
  "customizations": {
    "vscode": {
      "settings": {
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      },
      "extensions": [
        "eamodio.gitlens",
        "github.vscode-github-actions",
        "streetsidesoftware.code-spell-checker"
      ]
    }
  },
  "postCreateCommand": "bash scripts/setup.sh"
}
```

### B. High-Fidelity `.gitattributes`

Ensure consistent line endings across Windows/Mac/Linux and clean GitHub language breakdowns:

```gitattributes
# Auto-detect text files and normalize line endings to LF
* text=auto eol=lf

# Binary files
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary
*.ico binary
*.mov binary
*.mp4 binary
*.wasm binary
*.jar binary

# GitHub Linguist Overrides (prevent vendored or generated code from skewing repo stats)
dist/* linguist-vendored
build/* linguist-vendored
coverage/* linguist-vendored
*.min.js linguist-generated
*.generated.* linguist-generated
docs/* linguist-documentation
```

### C. Git Hooks with Pre-commit & Secret Scanning (Lefthook or Husky)

Create `lefthook.yml` at root (faster and multi-language compared to husky):

```yaml
pre-commit:
  parallel: true
  commands:
    gitleaks:
      run: gitleaks protect --staged --verbose
    lint-and-format:
      run: npm run lint:staged || true
commit-msg:
  commands:
    commitlint:
      run: npx --no -- commitlint --edit {1}
```

---

## 4. Pillar 3: GitHub Community Governance (100% Health Score)

### A. Modern YAML Issue Forms (`.github/ISSUE_TEMPLATE/bug_report.yml`)

Move away from plain Markdown templates to interactive, structured web forms:

```yaml
name: "🐛 Bug Report"
description: "Submit a reproducible bug report to help improve the project."
title: "[Bug]: "
labels: ["bug", "needs-triage"]
body:
  - type: markdown
    attributes:
      value: |
        Thanks for taking the time to report an issue! Please verify the bug hasn't already been reported in [existing issues](https://github.com/<owner>/<repo>/issues).

  - type: input
    id: summary
    attributes:
      label: Summary
      description: Concise description of the failure.
      placeholder: "e.g., Auth token refresh fails after 24h"
    validations:
      required: true

  - type: textarea
    id: reproduction
    attributes:
      label: Steps to Reproduce
      description: Exact steps to trigger the bug.
      placeholder: |
        1. Run '...'
        2. Click '...'
        3. Observe crash
    validations:
      required: true

  - type: dropdown
    id: environment
    attributes:
      label: Operating System / Environment
      options:
        - "macOS (Apple Silicon)"
        - "macOS (Intel)"
        - "Linux (Ubuntu / Debian)"
        - "Windows 11"
        - "Docker Container"
    validations:
      required: true

  - type: textarea
    id: logs
    attributes:
      label: Relevant Logs or Stack Trace
      description: Paste terminal output or crash logs here.
      render: shell

  - type: checkboxes
    id: checklist
    attributes:
      label: Pre-submission Checklist
      options:
        - label: "I tested this against the latest `main` branch."
          required: true
        - label: "I included complete, minimal reproduction steps."
          required: true
```

### B. Issue Form Configuration (`.github/ISSUE_TEMPLATE/config.yml`)

Guide users to discussions for questions and prevent issue tracker noise:

```yaml
blank_issues_enabled: false
contact_links:
  - name: "💬 Ask a Question / General Help"
    url: "https://github.com/<owner>/<repo>/discussions"
    about: "For how-to questions, setup inquiries, and architecture discussions."
  - name: "🚨 Security Vulnerability"
    url: "https://github.com/<owner>/<repo>/security/policy"
    about: "Privately disclose security vulnerabilities."
```

### C. World-Class Pull Request Template (`.github/pull_request_template.md`)

```markdown
<!-- PR Title convention: <type>(<scope>): <short description> (e.g. feat(auth): add OAuth2 provider) -->

## 🎯 Summary
<!-- What does this PR do? Why is this change necessary? -->

## 🔗 Related Issues
<!-- Closes #123, Fixes #456 -->

## 🛠️ Type of Change
- [ ] 🐛 Bug fix (non-breaking change fixing an issue)
- [ ] ✨ New feature (non-breaking change adding functionality)
- [ ] 💥 Breaking change (fix or feature requiring migration)
- [ ] ⚡ Performance improvement
- [ ] 📝 Documentation update
- [ ] 🧪 Tests / CI maintenance

## 🧪 Verification & Evidence
<!-- Paste terminal test outputs, benchmark changes, or visual UI recordings/screenshots -->

```bash
# Paste verification command output here
```

## ✅ Author Checklist
- [ ] My code follows the repository's coding standards.
- [ ] I have added unit or integration tests covering this change.
- [ ] All CI checks pass locally (`make test` or `npm test`).
- [ ] Documentation has been updated (or confirmed not required).
- [ ] No secrets, keys, or credentials are committed.
```

### D. Security Policy (`SECURITY.md`)

```markdown
# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 2.x     | :white_check_mark: |
| 1.x     | :x:                |

## Reporting a Vulnerability

**Please DO NOT report security vulnerabilities via public GitHub issues.**

To report a vulnerability:
1. Open a **Private Security Advisory** on GitHub: [Open Security Advisory](https://github.com/<owner>/<repo>/security/advisories/new)
2. Or email `security@yourdomain.com` with encrypted details.

### Response Timeline
- **Acknowledgement**: Within 24 hours.
- **Triage & Reproduction**: Within 72 hours.
- **Fix & Patch Release**: Within 7-14 business days depending on severity.
```

---

## 5. Pillar 4: Hardened CI/CD & Security Pipelines

### A. Production Multi-Job CI (`.github/workflows/ci.yml`)

Key traits: **Least-privilege permissions**, **concurrency cancellation**, **dependency caching**, and **matrix builds**:

```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

permissions:
  contents: read

concurrency:
  group: ${{ github.workflow }}-${{ github.ref }}
  cancel-in-progress: true

jobs:
  lint-and-format:
    name: Lint & Code Style
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: "npm"
      - run: npm ci
      - run: npm run lint
      - run: npm run format:check

  test-matrix:
    name: Unit & Integration Tests (${{ matrix.os }})
    needs: [lint-and-format]
    strategy:
      fail-fast: false
      matrix:
        os: [ubuntu-latest, macos-latest]
    runs-on: ${{ matrix.os }}
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: "npm"
      - run: npm ci
      - run: npm test -- --coverage
      - name: Upload Test Coverage
        uses: actions/upload-artifact@v4
        if: matrix.os == 'ubuntu-latest'
        with:
          name: coverage-report
          path: coverage/

  secret-scan:
    name: Secret Leak Detection
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: gitleaks/gitleaks-action@v2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### B. Dependabot Automation (`.github/dependabot.yml`)

Group dependencies so you get **1 clean PR per week**, not 20 noisy ones:

```yaml
version: 2
updates:
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "weekly"
      day: "monday"
    open-pull-requests-limit: 5
    groups:
      dependencies:
        patterns: ["*"]
        exclude-patterns: ["major*"]
    commit-message:
      prefix: "chore(deps)"

  - package-ecosystem: "github-actions"
    directory: "/"
    schedule:
      interval: "monthly"
    commit-message:
      prefix: "ci(deps)"
```

### C. Automated PR Path Labeler (`.github/workflows/labeler.yml` + `.github/labeler.yml`)

Automatically tags PRs based on touched directories:

```yaml
# .github/labeler.yml
frontend:
  - changed-files:
      - any-glob-to-any-file: ["src/ui/**", "web/**", "**/*.tsx"]

backend:
  - changed-files:
      - any-glob-to-any-file: ["src/api/**", "server/**", "**/*.go", "**/*.kt"]

ci-cd:
  - changed-files:
      - any-glob-to-any-file: [".github/**", "Dockerfile"]

documentation:
  - changed-files:
      - any-glob-to-any-file: ["docs/**", "**/*.md"]
```

---

## 6. Pillar 5: Remote Hardening via GitHub CLI (`gh`)

Execute these commands to lock down and brand the remote repository:

```bash
# 1. Populate metadata & discoverability
gh repo edit \
  --description "⚡ High-performance, zero-dependency async engine for modern distributed workloads" \
  --homepage "https://yourproject.dev" \
  --enable-discussions \
  --enable-issues \
  --delete-branch-on-merge \
  --enable-squash-merge \
  --enable-rebase-merge=false

# 2. Add high-value topics for GitHub SEO & search
gh repo edit --add-topic "kotlin,android,testing,developer-tools,productivity"

# 3. Create standardized semantic labels
gh label create "type: bug" --color "d73a4a" --description "Something isn't working" --force
gh label create "type: feature" --color "a2eeef" --description "New feature or request" --force
gh label create "type: performance" --color "0075ca" --description "Performance optimization" --force
gh label create "priority: critical" --color "b60205" --description "Blocks release or damages data" --force
gh label create "good-first-issue" --color "7057ff" --description "Good for newcomers" --force

# 4. Enforce branch protection on main
gh api -X PUT "repos/:owner/:repo/branches/main/protection" \
  -F "required_status_checks[strict]=true" \
  -F "required_status_checks[contexts][]=Lint & Code Style" \
  -F "required_status_checks[contexts][]=Unit & Integration Tests (ubuntu-latest)" \
  -F "enforce_admins=true" \
  -F "required_pull_request_reviews[required_approving_review_count]=1" \
  -F "required_pull_request_reviews[dismiss_stale_reviews]=true" \
  -F "required_linear_history=true" \
  -F "allow_force_pushes=false" \
  -F "allow_deletions=false" \
  -F "restrictions=null"
```

---

## 7. The Comprehensive Audit & Modernization Playbook

When asked to audit an existing repository, follow this 4-step diagnostic protocol:

### Step 1: Health Scan
Run an automated audit across files:
```bash
echo "=== AUDIT CHECKLIST ==="
test -f README.md && echo "✅ README.md present" || echo "❌ Missing README.md"
test -f LICENSE && echo "✅ LICENSE present" || echo "❌ Missing LICENSE"
test -f SECURITY.md && echo "✅ SECURITY.md present" || echo "❌ Missing SECURITY.md"
test -f CONTRIBUTING.md && echo "✅ CONTRIBUTING.md present" || echo "❌ Missing CONTRIBUTING.md"
test -f .editorconfig && echo "✅ .editorconfig present" || echo "❌ Missing .editorconfig"
test -f .gitattributes && echo "✅ .gitattributes present" || echo "❌ Missing .gitattributes"
test -f .env.example && echo "✅ .env.example present" || echo "❌ Missing .env.example"
test -d .github/ISSUE_TEMPLATE && echo "✅ Issue Templates present" || echo "❌ Missing Issue Templates"
test -f .github/pull_request_template.md && echo "✅ PR Template present" || echo "❌ Missing PR Template"
test -f .github/dependabot.yml && echo "✅ Dependabot present" || echo "❌ Missing Dependabot"
test -d .github/workflows && echo "✅ Workflows directory present" || echo "❌ Missing Workflows"
```

### Step 2: Scorecard Calculation
Calculate score against the 5 pillars (0-100). Identify specific deficits:
- Is the README missing badges, quickstart, or architecture diagrams? (-10 pts)
- Are issue templates markdown instead of modern interactive YAML forms? (-5 pts)
- Is branch protection disabled on `main`? (-15 pts)
- Is CI missing secret scanning or matrix testing? (-10 pts)

### Step 3: Interactive Remediation Plan
Present the audit report with a breakdown:
1. **Critical Vulnerabilities & Gaps** (e.g. unprotected main branch, missing security policy).
2. **Developer Experience Upgrades** (e.g. devcontainers, editorconfig, git attributes).
3. **Showroom & Visual Upgrades** (e.g. hero banner, Mermaid architecture flow, feature comparison table).

### Step 4: One-Click Execution
Generate all missing files in parallel, commit changes with conventional commits (`feat(repo): upgrade repository to world-class standards`), and apply `gh` remote configurations.
