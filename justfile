# CI contract. Agents, the pre-push hook and `ship` all run `just check`.
# Kit: .ci/ (vendored with ci-sync; `just ci-drift` shows drift).
# No taste check: jcc-* client brands are exempt from design-guard.
set shell := ["bash", "-euo", "pipefail", "-c"]

check:
    .ci/bin/ci-par gitleaks

# The repo has no build or tests, so this is the secret scan: branch commits
# plus uncommitted and staged changes.
check-fast:
    .ci/bin/ci-gitleaks
    gitleaks protect --no-banner --redact
    gitleaks protect --staged --no-banner --redact

# No formatter is configured.
fix:
    @echo "fix: no autofixers in this repo"

# The repo has no tests (static brand assets and docs).
test:
    @echo "test: no tests in this repo"

# Branch commits. `gitleaks-full` scans the whole history.
gitleaks:
    .ci/bin/ci-gitleaks

ci-drift:
    .ci/bin/ci-sync --check .

# Whole history (nightly).
gitleaks-full:
    .ci/bin/ci-gitleaks --full
