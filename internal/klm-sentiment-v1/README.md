# KLM sentiment / megacut media ingest (local)

Prior ingest scripts, corpus, and HTML generator live here on Jasper’s **local workspace** (not yet mirrored in this GitHub repo).

**Local agent:** Follow [docs/klm-agent-handoff-prompt.md](../../docs/klm-agent-handoff-prompt.md).

**Expected contents (local):**

- Ingest runners (RSS, GDELT, Google News, Reddit, union/KLM press)
- `corpus/` or equivalent JSON for the 2–13 Nov 2026 window
- Report generator producing `klm-megacut-media-report.html`
- `save-klm-report-to-onedrive.ps1` at repo or project root

Commit or push this folder when ready to version-control the pipeline.
