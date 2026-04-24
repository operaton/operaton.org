---
layout: post
author: The Operaton Team
---

## Operaton 2.1 Released: Health Checks, SPI Factories, and Stability Improvements

We are happy to announce the release of **Operaton 2.1**! This minor release builds on the modernized foundation of Operaton 2.0 and brings a range of practical improvements: a new runtime-agnostic health check SPI, session cookie isolation for Spring Boot deployments, extensible configuration factories, and an important memory leak fix for GraalJS-based script tasks.

Again, there are **no changes to the database schema** (still version 7.24) and no breaking changes to the REST API, so upgrading from 2.0 should be straightforward for the vast majority of users.

### Key Features & Improvements

#### 1. Health SPI and `/health` Endpoint
Operaton 2.1 introduces a runtime-agnostic **Health SPI** that works across Spring Boot, Quarkus, and plain Java deployments. The new `HealthService` interface allows custom health checks to be plugged in, and the `HealthResult` record carries the `UP`/`DOWN` status together with details about the database connection, job executor, and frontend webapp availability.

- In **Spring Boot**, the result is exposed via the standard `/actuator/health` endpoint through a new `ProcessEngineHealthIndicator`.
- In **Quarkus**, a `@Readiness` MicroProfile Health check is registered automatically at `/q/health/ready`.
- In **Operaton Run**, a dedicated lightweight `/health` endpoint can be enabled for use with load balancers and uptime monitors — disabled by default.

#### 2. Session Cookie Path Isolation for Spring Boot
When running Operaton alongside other authentication providers (such as Keycloak) in the same Spring Boot application, concurrent requests could cause session cookie conflicts and unexpected logouts. Operaton 2.1 introduces a new property to scope the Operaton session cookie to `/operaton`, preventing it from interfering with other cookies set by the application:

```
operaton.bpm.webapp.session-cookie-path-enforcement=true
```

This defaults to `false`, so existing deployments remain unaffected.

#### 3. SPI Configuration Factories
Two new SPI factory interfaces have been added — `ProcessEngineConfigurationFactory` and `DmnEngineConfigurationFactory` — discovered via Java's `ServiceLoader` mechanism. These allow frameworks and embedding tools to supply custom configuration implementations without depending on internal classes. The existing factory methods on `ProcessEngineConfiguration` and `DmnEngineConfiguration` continue to work unchanged.

#### 4. Quarkus 3.33 LTS
The Operaton Quarkus extension is now based on the **Quarkus 3.33 LTS** release, moving from the previous non-LTS 3.32.0 release. The LTS stream provides a longer support window and more stable dependency versions. Operaton 2.x will track the latest 3.33 LTS patch releases going forward.

#### 5. GraalJS Memory Leak Fix
A progressive memory leak affecting JavaScript script tasks (for example, process variables transformed via Spin/JSON) under sustained load has been fixed. Previously, this could lead to `OutOfMemoryError` and container restarts over time. This fix is relevant for anyone running script-heavy process definitions under production load.

#### 6. Extensible History Level Setup
The `HistoryLevelSetupCommand` has been converted from a `final` concrete class to an interface, making it possible for engine plugins to override the history level setup behaviour. The previous implementation is preserved as `DefaultHistoryLevelSetupCommand`, and a new `HistoryLevelUtils` companion class provides shared helper methods for custom implementations. Existing setups are unaffected.

### Migration Notes

Operaton 2.1 is a drop-in upgrade for Operaton 2.0 users. A few internal (`.impl.`) APIs have changed as part of the SPI and health check work — if your code references these directly, please consult the full [release notes](https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/) for details. Public APIs are unchanged.

### Get Started Today!

You can find the full release notes and migration guide in our [documentation](https://docs.operaton.org/docs/documentation/reference/release-notes/2_1/).

*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all contributors and community members who continue to help shape Operaton. Every bug report, pull request, and forum discussion makes a difference!

*The Operaton Team*
