---
layout: post
author: The Operaton Team
---

## Operaton 2.1.5 Released, and 2.2.0-RC1 Preview Available

We've published a maintenance release today, **Operaton 2.1.5**, alongside the first release candidate for the upcoming 2.2 line, **Operaton 2.2.0-RC1**.

### Operaton 2.1.5 — maintenance release

2.1.5 is a routine maintenance release: dependency updates across the Maven and npm dependency tree, a fix for German-language password-related UI text in the web apps, and CI/build stability improvements.

There are **no database schema changes** and no REST API changes, so upgrading from 2.1.x is a drop-in replacement. We recommend all 2.1.x users update.

Release notes: <https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/>

### Operaton 2.2.0-RC1 — release candidate preview

**Operaton 2.2.0-RC1** is the first release candidate for the 2.2 line. It's a preview build for early testing — **not intended for production**. Highlights:

#### 1. Spring Boot 4.1 Upgrade
Operaton 2.2 upgrades the Spring Boot baseline from 4.0.x to **Spring Boot 4.1**, bringing in the latest Spring Framework improvements and dependency baselines. Existing Spring Boot applications built on Operaton 2.1 should migrate smoothly.

#### 2. WildFly 40 Upgrade & CDI 4.1 Compatibility
The WildFly distribution moves to **WildFly 40**, adapting the CDI integration to the Jakarta CDI 4.1 standard API. As a result, process application WARs no longer need a `jboss-deployment-structure.xml` to control module visibility on WildFly 39+.

#### 3. Nullability Declarations in the Engine API
Operaton 2.2 begins annotating engine internals with [JSpecify](https://jspecify.dev/) `@Nullable`/`@NonNull` annotations, making the nullability contract of engine APIs explicit and tool-checkable. This is an incremental, non-breaking effort. Read more in our forum announcement: [Introducing declaration of nullability in the API](https://forum.operaton.org/t/introducing-declaration-of-nullability-in-the-api/445).

#### 4. FEEL Engine Switched to the Unshaded Artifact
The FEEL engine now uses the plain, unshaded `feel-engine` artifact instead of the shaded one, resolving duplicate-class conflicts between the engine's bundled Jackson/Scala classes and an application's own dependencies.

#### 5. Security: Pinned Vulnerable Transitive Dependencies
Operaton 2.2 pins `netty-bom` and adds a `jackson-bom` import, overriding vulnerable transitive versions still managed by the current Quarkus and Spring Boot dependency platforms.

#### 6. Task Authorization Query Performance
Task list and task count queries using authorization checks now use an `EXISTS` subquery instead of joining the authorization table into the main result set, avoiding inflated intermediate result sets under high load.

Full release notes (kept up to date as the 2.2 line progresses toward GA): <https://docs.operaton.org/docs/documentation/reference/release-notes/2_2/>

Prerelease: <https://github.com/operaton/operaton/releases/tag/v2.2.0-RC1>

### Get Started Today!

You can find the full release notes and migration guides in our [documentation](https://docs.operaton.org/docs/documentation/reference/release-notes/).

*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all contributors and community members who continue to help shape Operaton. Every bug report, pull request, and forum discussion makes a difference!

*The Operaton Team*
