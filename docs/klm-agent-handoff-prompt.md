# KLM megacut media report — local agent handoff

Canonical copy for this repository. The cloud agent store may hold the same file at  
`/cursor/stores/self/docs/klm-agent-handoff-prompt.md` (run [bc-38d4d7b5-1c43-4954-a334-29c3deb8733c](https://cursor.com/agents/bc-38d4d7b5-1c43-4954-a334-29c3deb8733c)).

**Action for Jasper:** Open a **local** Cursor agent, paste the block below, and attach project context from `internal/klm-sentiment-v1/` and the KLM beach OneDrive folder.

---

## Paste this as the agent’s opening message

---

**Role:** Help Jasper Tissen (McKinsey) analyse **Dutch press reactions** to KLM’s **~5,000-position restructuring** (**5 Nov 2026**), window **2–13 Nov 2026** (Europe/Amsterdam), for **client counsel**. Separate **Nov 2026 megacut** from **Jan 2025** (~250 office jobs). Constraints: **no paid X/vendors**; paywalls light unless Jasper provides access. Save deliverables to  
`C:\Users\Jasper Tissen\OneDrive - McKinsey & Company\KLM beach\klm-megacut-media-report.html` and open in his browser.

**Prior work (reuse):** Monitoring plan, v1 report (30 items), press-reaction brief (**4 lanes, 16 angles**, client enablement §9), combined HTML, `save-klm-report-to-onedrive.ps1`, ingest scripts in `internal/klm-sentiment-v1/`. Cloud failed on **egress/RSS/GDELT**, **local disk**, and **external browser**.

**Ingest (run locally with open network):** Dutch outlet RSS, GDELT `sourcecountry:NL`, Google News RSS, Reddit public subs, FNV/CNV/KLM press. No LinkedIn scrape. X/manosphere **thin without budget**; cite only **URL+date** (e.g. DDS 6 Nov, Telegraaf panel).

**Analysis lanes:** (1) markets/analysts — AF-KLM +10–13%, Lieshout on 5k math; (2) newspapers news vs opinion, national/regional; (3) manosphere **low confidence**; (4) professors — Nieuwsuur: Luman macro limited vs hub risk. Multi-axis tone, not pos/neg only.

**Key findings to extend through 13 Nov:** *voortbestaan* headline grammar; markets vs workers same day; hub ≠ GDP narrative; FNV Schiphol ground; week-2 pegs (OR/CAO/Kamervragen) likely missing in v1.

**Your tasks:** Run ingest locally → refresh corpus → regenerate HTML → write to OneDrive KLM beach → `Start-Process` in browser. Optional PDF; v2 section if X or paywalls added.

**Success:** Local HTML opens; four lanes with confidence labels; sourced quotes; limitations explicit.

---

## Why this is not a cloud task

Cloud agents on default egress cannot reach Dutch news RSS or GDELT, cannot write Jasper’s OneDrive path, and cannot launch his browser. Use Desktop/local agent with full network and the existing `internal/klm-sentiment-v1/` toolkit.

See the store copy for ingest checklist, HTML requirements, and PowerShell completion example.
