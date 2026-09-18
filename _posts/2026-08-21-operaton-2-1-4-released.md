---
layout: post
author: The Operaton Team
---

## Operaton 2.1.4 Released — Plus a 2.2.0-M3 Preview

We've published a new maintenance release today, **Operaton 2.1.4**, alongside an early preview build of the upcoming 2.2 line, **Operaton 2.2.0-M3**.

### Operaton 2.1.4 — dependency maintenance

2.1.4 bumps the Spring Boot baseline from `4.0.7` to `4.0.8` and Spring Framework from `7.0.8` to `7.0.9`, picking up upstream fixes on the 4.0.x/7.0.x maintenance lines.

There are **no database schema changes** and no REST API changes, so upgrading from 2.1.x is a drop-in replacement. We recommend all 2.1.x users update.

Release notes: <https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/>
GitHub release: <https://github.com/operaton/operaton/releases/tag/v2.1.4>

### Preview: Operaton 2.2.0-M3 — new web applications and SKIP LOCKED job acquisition

A **2.2.0-M3** milestone build is available for early testing of the upcoming 2.2 line, with two preview features we'd like your feedback on before they land in a final release.

**New web applications (`webapps-neo`).** A new, Preact-based implementation of the web applications is now integrated into the main repository alongside the existing legacy web apps. It reuses the same backend Java logic as the legacy webapps and ships a first administrator setup screen for initial deployment. The initial integration was followed up with fixes to make the packaged distribution usable end to end and to close several security defects found while reviewing it against a real build.

**`SKIP LOCKED` job acquisition.** The job executor can now acquire jobs using `FOR UPDATE SKIP LOCKED`, so that parallel nodes skip rows another node has already locked instead of blocking on them. In clustered setups this removes contention that previously showed up as rejected job executions when many nodes polled the same due jobs. It's opt-in via `ProcessEngineConfiguration#setJobExecutorAcquireWithSkipLocked(true)` (or `operaton.bpm.job-executor-acquire-with-skip-locked: true` in Spring Boot) — existing installations keep the current behavior until you set it. As with any preview feature, the config property, API, and behavior may still change before the final release, so try it and tell us how it goes.

Also in this milestone: the WildFly distribution moves to **WildFly 41**, and the Quarkus extension moves to **Quarkus 3.33.3.1**.

Release notes (draft): <https://docs.operaton.org/docs/documentation/reference/release-notes/2_2/>
Prerelease: <https://github.com/operaton/operaton/releases/tag/v2.2.0-M3>

### Get Started Today!

You can find the full release notes and migration guide in our [documentation](https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/).

*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all contributors and community members who continue to help shape Operaton. Every bug report, pull request, and forum discussion makes a difference!

*The Operaton Team*
