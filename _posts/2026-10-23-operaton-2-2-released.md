---
layout: post
author: The Operaton Team
---

## Operaton 2.2 Released, and 2.1.6 Closes the 2.1 Line

We are happy to announce **Operaton 2.2**. This minor release ships the first technical preview of the new web applications, adds optional `SKIP LOCKED` job acquisition for clustered setups, and moves the platform to Spring Boot 4.1, WildFly 41 and Quarkus 3.40 LTS.

The database schema version moves from 7.24 to **7.25**, but the tables themselves do not change: the upgrade script only records the new version. There are no REST API contract changes, so upgrading from 2.1 should be straightforward.

On the same day we published **Operaton 2.1.6**, the final patch release of the 2.1 line.

### Key Features & Improvements

#### 1. New Web Applications (Technical Preview)
Operaton 2.2 includes a new, Preact-based implementation of the web applications (`webapps-neo`) as a technical preview next to the existing web apps. It uses the same backend logic and comes with a first administrator setup screen.

The Tomcat and WildFly distributions ship the new web apps **disabled by default**. Enable them with the system property `operaton.bpm.webapp.neo.enabled=true` or the environment variable `OPERATON_BPM_WEBAPP_NEO_ENABLED=true`. They are then served at the server root, while the existing web apps stay at `/operaton/`. In the Tomcat distribution the new web apps are deployed as `webapps/ROOT`, so if you deploy your own `ROOT` application, replace the shipped one when upgrading.

#### 2. `SKIP LOCKED` Job Acquisition (Preview)
The job executor can now acquire jobs with `FOR UPDATE SKIP LOCKED`, so that cluster nodes skip rows another node has already locked instead of waiting for them. This reduces contention when many nodes poll the same due jobs. It also puts more load on the database, so measure before you switch it on in production:

```yaml
operaton:
  bpm:
    job-executor-acquire-with-skip-locked: true
```

Exclusive jobs keep their previous semantics. This is a preview feature: properties and behaviour may still change, and we are looking forward to your feedback.

#### 3. Spring Boot 4.1, WildFly 41 and Quarkus 3.40 LTS
- **Spring Boot** moves from 4.0.x to **4.1** (4.1.2 at release).
- The **WildFly** distribution moves to **WildFly 41**. The CDI integration now uses the Jakarta CDI 4.1 standard API, so process application WARs no longer need a `jboss-deployment-structure.xml`.
- The **Quarkus** extension moves to the **Quarkus 3.40 LTS** line.

#### 4. Docker Images for Java 17, 21 and 25
The [Docker images](https://hub.docker.com/r/operaton/operaton) are now available for Java 17, 21 and 25. Images for Java 21 and 25 use the `-jdk21` and `-jdk25` tag suffixes. Java 17 stays the default, so existing tags keep their content.

#### 5. Nullability Declarations in the Engine API
We started annotating the engine with [JSpecify](https://jspecify.dev/) `@Nullable`/`@NullMarked`, so IDEs and static analysis can check nullability contracts. This is an incremental, non-breaking effort; see the [forum announcement](https://forum.operaton.org/t/introducing-declaration-of-nullability-in-the-api/445) for the plan.

#### 6. Performance, Logging and Dependency Fixes
- Task queries with authorization checks use an `EXISTS` subquery instead of a join, which keeps them fast with large authorization tables.
- The MDC now contains the `rootProcessInstanceId`, which makes it easier to follow log output across call activities.
- The FEEL engine now uses the unshaded `feel-engine` artifact, which removes duplicate Jackson classes on the application classpath.
- Vulnerable transitive Netty and Jackson versions are pinned to fixed releases.

### Operaton 2.1.6: Final Patch of the 2.1 Line

2.1.6 brings security fixes for vulnerable transitive dependencies (`httpcore5-h2`, `jakarta.mail`, DOMPurify in the REST API docs), Spring Boot 4.0.9, and a fix for DMN decisions with the `Collect` hit policy that returned a mutable list when rules matched.

**2.1.6 is the last release of the 2.1 line.** We recommend that 2.1 users plan their upgrade to 2.2.

Release notes: <https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/>

### Migration Notes

Operaton 2.2 is a drop-in upgrade for most Operaton 2.1 users. Run the `7.24_to_7.25` upgrade script for your database (or apply the Liquibase changelog) so the schema log shows version 7.25. Check the Spring Boot 4.1 and Quarkus 3.40 upgrade notes for your own application code, and the note on `webapps/ROOT` if you use the Tomcat distribution. See the [release notes](https://docs.operaton.org/docs/documentation/reference/release-notes/2_2/) for details.

### Get Started Today!

*   **Release notes:** [Operaton 2.2](https://docs.operaton.org/docs/documentation/reference/release-notes/2_2/)
*   **GitHub:** [v2.2.0](https://github.com/operaton/operaton/releases/tag/v2.2.0) · [v2.1.6](https://github.com/operaton/operaton/releases/tag/v2.1.6)
*   **Helm:** chart `1.2.0` for Operaton 2.2.0 in our [Helm repository](https://operaton.github.io/operaton-helm/)
*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all contributors and community members who continue to help shape Operaton. Every bug report, pull request, and forum discussion makes a difference!

*The Operaton Team*
