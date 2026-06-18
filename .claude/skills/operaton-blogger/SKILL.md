---
name: operaton-blogger
description: Use when the user wants to write, draft, or publish a blog post about Operaton — releases, features, community news, migration stories, commentary on LinkedIn posts mentioning @operaton, or a weekly community summary. Produces a Jekyll post in operaton/operaton.org and opens a PR.
---

# Writing Operaton Blog Posts

## Overview

Produce a publication-ready Jekyll blog post for the [operaton/operaton.org](https://github.com/operaton/operaton.org) site, matching the established voice of recent posts, and ship it as a Pull Request on a feature branch.

**Repository:** `/Users/kthoms/Development/git/operaton/operaton.org` (working dir is usually already this repo)

**Authoritative guideline reference:** `CONTRIBUTING.md` in that repo — re-read it if anything in this skill seems stale.

## When to Use

- "Write a blog post about [release / feature / news / LinkedIn post]"
- "Draft a post announcing Operaton X.Y"
- "Cover [LinkedIn URL] in a blog post"
- "Write up the d.velop / Ritense / nterra news"
- "Write a weekly community update" / "weekly summary post" / "what happened this week"

**Don't use for:** Hub entries, service-provider entries, roadmap edits, documentation pages — those are different templates/files.

## Workflow

1. **Gather source material** before drafting. Pick the relevant sources:
   - **Release posts** → fetch the release notes / CHANGELOG from `operaton/operaton` (use `gh release view vX.Y -R operaton/operaton` or `gh api repos/operaton/operaton/releases/tags/vX.Y`). Cross-check `https://docs.operaton.org/docs/documentation/reference/release-notes/X_Y/`.
   - **Feature / repo news** → list the relevant repo (`gh repo list operaton`) and read READMEs, recent commits, or PRs in the specific repo. Main repo: `operaton/operaton`. Others worth knowing: `operaton-mcp`, `operaton-bpm-platform`, `operaton.org`, `docs`.
   - **Community / migration stories** → use `WebFetch` on the LinkedIn URL provided. Look for posts from `@operaton` (the company page) and posts by others tagging `@operaton`. Quote sparingly, always link back, and credit the author by name.
   - **Always** verify version numbers, dates, names, and URLs from the primary source — never invent them.

2. **Read 2–3 recent posts in `_posts/`** before drafting to lock in tone. Good references:
   - `2026-04-24-operaton-2-1-released.md` — release announcement structure
   - `2026-03-27-introducing-operaton-mcp-server.md` — feature/product launch
   - `2026-01-09-dvelop-migrates-to-operaton.md` — community/migration story
   - `2026-02-03-sonarqube-static-analysis-99-percent-reduction.md` — technical deep dive

3. **Create a branch**: `git checkout -b blog/<short-slug>` from `main`.

4. **Write the post** (see Conventions below).

5. **Add images** to `assets/img/blog/` if used, named `YYYY-MM-DD-<slug>-<desc>.<ext>`.

6. **Build locally** if Jekyll is available: `bundle exec jekyll build` (or `docker-compose up -d`). Skip if env doesn't allow; mention it to the user.

7. **Show the draft to the user and wait for approval** before committing. Posts are public-facing — never auto-commit or auto-push.

8. **Commit & PR** after approval:
   - Commit message: `blog: <post title>` (matches style — see `git log --oneline -- _posts/`).
   - Push branch, then `gh pr create` with title `Blog: <post title>` and a body summarizing the post and listing sources.

## Weekly Summary Workflow

Trigger phrases: "weekly summary", "weekly community update", "week in review", "what happened this week/last week".

**Default window:** last 7 days. Accept an explicit number: "last 14 days" → use 14.

### Step 1 — Check for previous weekly post

```bash
.devenv/scripts/blogging/find-last-weekly-post.sh
```

If found, read it. Note its coverage period so this post picks up where it left off.

### Step 2 — Collect data in parallel

Run these concurrently (independent sources):

**GitHub activity** (script handles all Operaton repos):
```bash
.devenv/scripts/blogging/collect-github-activity.sh [days]
.devenv/scripts/blogging/collect-releases.sh [days]
```

**Slack** (use `mcp__claude_ai_Slack__slack_read_channel` for each public channel):
- `#general` — announcements, community chat
- `#dev` or `#development` — technical discussions, PR mentions
- `#releases` — release announcements (if it exists)
- Search for any other active channels: `mcp__claude_ai_Slack__slack_search_channels` with query `operaton`
- For threads with 3+ replies: fetch with `mcp__claude_ai_Slack__slack_read_thread`

**LinkedIn** (use `WebSearch` then `WebFetch`):
- Search: `site:linkedin.com "operaton" after:<SINCE_DATE>`
- Also search: `"@operaton" OR "#operaton" linkedin` with date filter
- Fetch any promising URLs found
- If WebFetch fails on a LinkedIn URL, note it and skip — don't block the post

### Step 3 — Synthesize and draft

Organize findings into these categories (omit empty ones):

1. **Releases** — any new versions shipped
2. **Notable merged work** — PRs with meaningful user impact (skip chores, typos, dependency bumps unless exceptional)
3. **Active discussions / in-progress** — hot PRs or issues worth watching
4. **Community highlights** — Slack conversations, LinkedIn posts, forum threads
5. **Looking ahead** — upcoming milestones visible from open PRs or issues

**Quality bar:** If a week was quiet, say so honestly in 1–2 sentences rather than padding. Don't inflate minor activity.

### Step 4 — Write and ship (same as standard workflow)

Follow steps 3–8 of the standard Workflow above. Branch name: `blog/weekly-<YYYY-MM-DD>`.

## File & Frontmatter Conventions

- **Path:** `_posts/YYYY-MM-DD-kebab-case-slug.md` — date is the intended publish date (use today unless told otherwise).
- **Frontmatter** (exactly these fields, nothing else unless asked):
  ```yaml
  ---
  layout: post
  author: The Operaton Team
  ---
  ```
  Use a personal name (e.g. `Karsten Thoms`) only for guest posts or first-person perspective pieces.

## Voice & Wording (match recent posts)

- **First person plural**: "We are happy to announce…", "We're thrilled to share…", "At Operaton, we believe…".
- **Opening**: one sentence stating the news in bold-name form: `**Operaton X.Y**`, `**Operaton MCP Server**`, etc.
- **Tone**: professional, senior-engineer-oriented, transparent. Concrete technical detail over marketing prose. No hype words ("revolutionary", "game-changing", "cutting-edge"). No emojis in headings.
- **Recurring vocabulary** to use naturally: *community-driven*, *open-source*, *technical transparency*, *sustainability*, *migration*, *Camunda 7 CE* (when relevant context), *BPMN engine*, *enterprise*, *production-ready*.
- **Headings**: `##` for the post title (yes, in body — see existing posts) and main sections; `###` for subsections; `####` for numbered feature items in release posts.
- **Lists** for release notes / key features. Bold the feature name then explain.
- **Code blocks** with language hints for config snippets (`json`, `yaml`, ` ` for plain).
- **Length**: 500–1,000 words. Quality over padding.

## Structural Templates

### Release post
```
## Operaton X.Y Released: <Theme line>

<1-paragraph summary of what's in it and who should care.>

<Compatibility note: schema version, breaking changes, drop-in or not.>

### Key Features & Improvements

#### 1. <Feature Name>
<2–4 sentences. Show config/code if relevant.>

#### 2. <Feature Name>
…

### Migration Notes
<What users need to do, or "drop-in upgrade".>

### Get Started Today!
- **Download:** [Downloads page](https://operaton.org/download)
- **Release notes:** [docs link](https://docs.operaton.org/docs/documentation/reference/release-notes/X_Y/)
- **Forum:** [forum link](https://forum.operaton.org)

Thank you to all contributors…

*The Operaton Team*
```

### Feature / product launch post
```
## <Hook>: Introducing <Thing>

### What is <Thing>?
### Key Features and Capabilities
### Why This Matters
### How to Get Started
### <Thing> in Action  (concrete examples)
### Join the Conversation
```

### Weekly community summary post
```
## Operaton Community Update — Week of <Month DD, YYYY>

<1-sentence framing: what kind of week it was — busy release week, quiet triage week, etc.>

### Releases
<bullet per release: version, one-line highlight, link to release notes>
— or omit section if none —

### Notable Merged Work
<bullet per meaningful PR: repo, PR title or paraphrase, link>

### In Progress
<bullet per hot open PR worth watching>
— or omit section if none —

### Community Highlights
<bullet per Slack thread, LinkedIn post, or forum topic worth mentioning — link + 1-sentence summary>
— or omit section if none —

### Looking Ahead
<1–3 bullets on what's coming based on open milestones or PRs>
— or omit section if nothing concrete —

*The Operaton Team*
```

### Community / migration / LinkedIn-sourced post
```
## <Company> <Action> Operaton…

<Lead paragraph linking the LinkedIn post(s) and naming people credited.>

### Why This Matters
### <Company>: <one-line about them>
### What This Means for the Operaton Community
### The Open Source Advantage   (optional)
### Looking Forward
```

## Using LinkedIn as a Source

- Use `WebFetch` on the LinkedIn URL. If the page isn't reachable, ask the user to paste the post text.
- Identify whether the post is from `@operaton` (company) or a third party tagging `@operaton`.
- **Always link** the original post inline: `[announced by <Name> on LinkedIn](<url>)`.
- Quote at most 1–2 short sentences; prefer paraphrase. Credit the author by full name.
- If multiple people posted about the same news, link each — see `2026-01-09-dvelop-migrates-to-operaton.md` for the pattern.
- Never republish images from LinkedIn without explicit permission.

## Standard Links to Reuse

- Downloads: `https://operaton.org/download`
- Docs: `https://docs.operaton.org/`
- Release notes: `https://docs.operaton.org/docs/documentation/reference/release-notes/<X_Y>/`
- Forum: `https://forum.operaton.org`
- Main repo: `https://github.com/operaton/operaton`
- Org: `https://github.com/operaton`

## Common Mistakes

| Mistake | Fix |
|---|---|
| Inventing version numbers, dates, or feature names | Verify from release notes / `gh release view` / CHANGELOG before writing |
| Adding extra frontmatter fields (title, tags, categories) | Only `layout` and `author` — title goes in the first `##` heading |
| Marketing tone ("revolutionary", "game-changing") | Strip it. Use concrete technical statements instead |
| Auto-committing or pushing without showing the draft | Always present the draft and wait for explicit approval |
| Forgetting the closing `*The Operaton Team*` line on team posts | Add it (only for team-authored posts; omit for guest/named-author posts) |
| Quoting large blocks of LinkedIn posts | Paraphrase + link; quote 1–2 sentences max |
| Using relative image paths | Use absolute: `/assets/img/blog/...` |
| Date in filename ≠ intended publish date | Use today's date unless user specifies |
| Including chore/dependency-bump PRs in weekly summary | Only list PRs with meaningful user-visible impact |
| Padding a quiet week with minor activity | Say "it was a quiet week for X" honestly |
| Skipping the find-last-weekly-post check | Always check — avoid duplicate coverage |
| Blocking on a failed LinkedIn WebFetch | Note it and skip; LinkedIn often blocks crawlers |

## Red Flags — STOP

- About to commit/push without showing draft → STOP, show draft first
- Don't have a primary source for a claimed fact → STOP, fetch it or ask user
- Tempted to write a 1,500+ word post → trim; target 500–1,000
- Using emoji in headings → remove
- Frontmatter has more than `layout` + `author` → remove extras
