# KLM megacut media monitoring — team handover prompt

**Use this doc to onboard a McKinsey team (or local Cursor agents) with everything the cloud run produced.** Paste [§ Opening message](#opening-message-paste-as-is) into a new Desktop chat and attach the files in [§ Inputs to attach](#inputs-to-attach).

| | |
|---|---|
| **Client context** | KLM ~5,000-position restructuring announced **5 Nov 2026** |
| **Monitoring window** | **2–13 Nov 2026** (Europe/Amsterdam) |
| **Deliverable** | `klm-megacut-media-report.html` on OneDrive **KLM beach** |
| **Cloud run (reference)** | [bc-38d4d7b5-1c43-4954-a334-29c3deb8733c](https://cursor.com/agents/bc-38d4d7b5-1c43-4954-a334-29c3deb8733c) |
| **GitHub** | [PR #2](https://github.com/Jtissen01/Jasper-s-cursor-workspace/pull/2) on branch `cursor/klm-local-handoff-733c` |

---

## Opening message (paste as-is)

---

**Team handover — KLM megacut Dutch press monitoring (2–13 Nov 2026)**

You are picking up **client-counsel media monitoring** for KLM’s **~5,000 FTE restructuring** (announced **5 Nov 2026**). Treat the items below as **authoritative inputs**; your job is to **ingest, source, extend, and ship** the HTML report—not to restart framing from zero.

### Hard constraints

- **Timezone / window:** Europe/Amsterdam; coverage **2–13 Nov 2026**.
- **Separate events:** **Nov 2026 megacut** ≠ **Jan 2025** ~250 **office** roles (tag Jan 2025 separately; never blend counts).
- **Budget:** No paid X or media vendors; light paywall handling unless Jasper supplies full text.
- **No LinkedIn scrape.** X/manosphere: **URL + date only**; lane confidence **low**.
- **Output path:** `C:\Users\Jasper Tissen\OneDrive - McKinsey & Company\KLM beach\klm-megacut-media-report.html` — open in browser when done (`save-klm-report-to-onedrive.ps1` or `Start-Process`).

### Analysis model (from press-reaction brief)

**Four lanes** — each item gets a **confidence** label (high / medium / low):

| Lane | Focus | Week-1 pointers to preserve |
|------|--------|-----------------------------|
| **1 — Markets & analysts** | AF-KLM equity, sell-side, CEO math | **+10–13%** day-of reaction; **Lieshout** on **~5k FTE** (natural attrition, multi-year, FTE vs headcount) |
| **2 — Newspapers** | News vs opinion; national/regional; unions; KLM PR | ***Voortbestaan* headline grammar** vs **banenverlies**; **markets vs workers same day** (5–6 Nov); **FNV Schiphol ground** line |
| **3 — Social / manosphere** | X, DDS, Reddit, alt | **Low confidence**; example pointer: **Telegraaf DDS panel 6 Nov** (URL+date); no paid API |
| **4 — Professors / expert TV** | Macro vs hub | **Nieuwsuur — Luman:** macro/GDP effect **limited**; **hub risk / connectivity** more durable; **hub ≠ GDP** narrative |

**Tone:** Use **multi-axis** scoring (e.g. market confidence, worker anxiety, hub frame, opinion intensity)—**not** binary positive/negative. Client enablement logic is summarized in HTML §9 and the original brief **§9**.

### Pointers already in the cloud HTML scaffold (extend, don’t delete)

These **hypothesis-level findings** were carried into `KLM beach/klm-megacut-media-report.html`; replace placeholders with **sourced URLs and verbatim quotes** after ingest:

1. **Headline grammar:** Corporate *voortbestaan* vs social *banenverlies* — same fact, different stakeholder.
2. **Same-day split:** Markets rally vs worker/union anxiety on 5–6 Nov.
3. **Hub ≠ GDP:** Expert lane limits macro stories; policy tail = hub/Schiphol governance.
4. **FNV Schiphol ground:** Sharpest union line in week 1.
5. **Week-2 gaps (priority ingest):** **OR** leaks/statements, **CAO** negotiation detail, **Kamervragen** (def/infra/economie), paywalled **FD/NRC** follow-ups.

### Ingest (local network required)

Run tooling under **`internal/klm-sentiment-v1/`** (Jasper’s machine — not fully in GitHub yet):

- Dutch outlet **RSS**
- **GDELT** `sourcecountry:NL`
- **Google News** RSS
- **Reddit** (public subs)
- **FNV / CNV / KLM** press releases

Refresh corpus JSON → regenerate HTML (merge with scaffold structure) → copy to OneDrive → open in browser.

### Repo assets (GitHub — use as starting files)

| File | Role |
|------|------|
| `KLM beach/klm-megacut-media-report.html` | **Current scaffold** (~19 items + gap table + limitations) |
| `save-klm-report-to-onedrive.ps1` | Copy to OneDrive + `Start-Process` |
| `docs/klm-agent-handoff-prompt.md` | Original Jasper → local agent handoff |
| `docs/klm-team-handover-prompt.md` | This team prompt |
| `internal/klm-sentiment-v1/README.md` | Pointer to local ingest pipeline |

### Definition of done

- [ ] HTML opens locally from **KLM beach** (OneDrive or repo copy).
- [ ] **Four lanes** with confidence labels on every material item.
- [ ] **Sourced quotes** with outlet, **Amsterdam date**, working URL (or explicit paywall gap).
- [ ] **Limitations** section updated (ingest date, paywall/X gaps).
- [ ] Jan 2025 items **tagged separately** from Nov 2026 megacut.
- [ ] Optional: PDF export; **v2** subsection if X or paywall text added later.

### Suggested work split (team)

- **Analyst A:** Lane 1 + market data validation (5 Nov close, Lieshout transcript/FD).
- **Analyst B:** Lane 2 national + FNV/CNV/KLM primary sources.
- **Analyst C:** Lane 4 + week-2 OR/CAO/Kamervragen; regional papers if time.
- **Analyst D (optional):** Lane 3 thin pass; document **low confidence** honestly.

**QC:** One person checks *voortbestaan*/*banen* framing consistency and that **5k** numbers match Lieshout/KLM wording (FTE, horizon, natural attrition).

---

## Inputs to attach

When starting a team agent chat, attach or `@`-reference:

1. `KLM beach/klm-megacut-media-report.html` (scaffold)
2. `docs/klm-team-handover-prompt.md` (this file)
3. On Jasper’s machine: monitoring plan, v1 corpus (30 items), press-reaction brief (**16 angles**, §9), `internal/klm-sentiment-v1/*`
4. Optional: cloud agent store `docs/klm-agent-handoff-prompt.md` from run `bc-38d4d7b5-…`

---

## What cloud could not do (do not retry without setup)

- Dutch RSS / GDELT (egress allowlist)
- Write Jasper’s OneDrive directly
- Launch his browser

Use **Desktop / local** agents or team machines with open internet.

---

## Quick open commands (Windows)

```powershell
# Repo copy
Start-Process (Resolve-Path ".\KLM beach\klm-megacut-media-report.html")

# OneDrive after copy
.\save-klm-report-to-onedrive.ps1
```

---

*Last updated: 9 Nov 2026 (Europe/Amsterdam). Maintainer: Jasper Tissen / McKinsey client team.*
