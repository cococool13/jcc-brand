# CI contract. Agents, the pre-push hook and `ship` all run `just check`.
# Kit: .ci/ (vendored with ci-sync; `just ci-drift` shows drift).
# GitHub Actions still run here too (public repo): gitleaks.yml runs the same scan.
# No taste check: jcc-* client brands are exempt from design-guard.
set shell := ["bash", "-euo", "pipefail", "-c"]

check:
    .ci/bin/ci-par gitleaks

# The repo has no build or tests, so this is the secret scan: full history
# (well under a second) plus uncommitted and staged changes.
check-fast:
    gitleaks git --no-banner --redact .
    gitleaks protect --no-banner --redact
    gitleaks protect --staged --no-banner --redact

# No formatter is configured.
fix:
    @echo "fix: no autofixers in this repo"

# The repo has no tests (static brand assets and docs).
test:
    @echo "test: no tests in this repo"

# From gitleaks.yml: full history.
gitleaks:
    gitleaks git --no-banner --redact .

ci-drift:
    .ci/bin/ci-sync --check .
