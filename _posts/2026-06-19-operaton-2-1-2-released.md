---
layout: post
author: The Operaton Team
---

## Operaton 2.1.2 and 1.1.4 Released

Today we are releasing two patch releases: **Operaton 2.1.2** and **Operaton 1.1.4**. Both releases contain important security updates through updated Spring and Spring Boot dependencies and are recommended upgrades for all users on the 2.1.x and 1.1.x lines respectively.

### Key Changes in 2.1.2

#### Security & Dependency Updates

Spring Framework and Spring Boot have been updated to their latest patch versions, addressing known vulnerabilities. Many further dependencies across the engine, REST API, and web applications have been updated as well.

#### Bug Fixes

- **Date form field values** — date values from one task form can now be safely reused as defaults in a subsequent task without a conversion error.
- **Attachment delete NPE** — a null pointer exception when deleting attachments is resolved; attachment management is now reliable in all cases.
- **MDC process definition key** — the process definition key is now read directly from the execution entity, avoiding an unnecessary database lookup during logging setup.

### Operaton 1.1.4

Operaton 1.1.4 is a maintenance patch for the 1.1.x line, delivering the same Spring and Spring Boot security updates along with general dependency maintenance. No functional changes are included.

### Migration Notes

Both releases are drop-in upgrades — no schema or REST API changes. Simply update the version in your dependency declaration.

### Get Started Today!

You can find the full release notes in our [documentation](https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/).

*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all contributors and community members who continue to help shape Operaton. Every bug report, pull request, and forum discussion makes a difference!

*The Operaton Team*
