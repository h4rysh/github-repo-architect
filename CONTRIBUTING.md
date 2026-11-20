# Contributing to GitHub Repo Architect

Thank you for your interest in improving GitHub Repo Architect! We welcome contributions from the community to help make repository scaffolding and auditing better for everyone.

---

## Getting Started

1. **Fork the repository** on GitHub.
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/<your-username>/github-repo-architect.git
   cd github-repo-architect
   ```
3. **Create a descriptive feature branch**:
   ```bash
   git checkout -b feat/add-new-pattern
   ```

---

## Contribution Workflow

### Making Changes
- If updating `SKILL.md`, ensure all code examples, YAML configurations, and shell commands are verified and accurate.
- If adding new GitHub Actions templates, ensure least-privilege permissions (`permissions: contents: read`) and concurrency controls are included.
- Maintain consistent formatting across all Markdown and YAML files.

### Submitting a Pull Request
1. Commit your changes using conventional commit messages (e.g., `feat(ci): add codeql scanning template`, `docs: clarify branch protection rules`).
2. Push your branch to your fork.
3. Open a Pull Request against the `main` branch.
4. Fill out the provided Pull Request template completely.

---

## Code of Conduct

All contributors are expected to uphold a welcoming, respectful, and inclusive community environment.
