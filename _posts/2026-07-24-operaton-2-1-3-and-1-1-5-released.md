---
layout: post
author: The Operaton Team
---

## Operaton 2.1.3 and 1.1.5 Released — Security Fixes, and 1.1.x Reaches End of Life

We've published two maintenance releases today: **Operaton 2.1.3** and **Operaton 1.1.5**.

### Operaton 2.1.3 — security fixes

2.1.3 pins two vulnerable transitive dependencies that reached Operaton through
Spring Boot 4 and the Quarkus extension:

- **Netty** → `4.2.16.Final` (fixes CVE-2026-56745 and related advisories)
- **Jackson** → `3.1.5` (fixes CVE-2026-59889)

There are **no database schema changes** and no REST API changes, so upgrading
from 2.1.x is a drop-in replacement. We recommend all 2.1.x users update.

Release notes: <https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/>

### Operaton 1.1.5 — final 1.1.x release (End of Life)

1.1.5 is a maintenance release with dependency updates, and it is the **last
release of the 1.1.x line** — 1.1.x is now **end of life** and will receive no
further updates, including security fixes. Users still on 1.1.x should plan to
move to **2.1.x**, which is fully maintained.

Release notes: <https://docs.operaton.org/docs/documentation/reference/release-notes/1_1/>

### Coming next: 2.2.0-M2 preview

A **2.2.0-M2** milestone build is available for early testing of the upcoming
2.2 line. It's a preview — **not intended for production**.
Prerelease: <https://github.com/operaton/operaton/releases/tag/v2.2.0-M2>
