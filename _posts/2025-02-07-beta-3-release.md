---
layout: post
author: The Operaton Team
---

We are excited to announce the release of **Operaton Beta-3**, bringing us one step closer to a powerful, community-driven BPMN engine.

### Key Updates

- **Three Distributions** – Beta-3 is available in three variants:
    - **Standalone** (AKA "Operaton")
    - **Tomcat 10**
    - **WildFly 33**

- **Docker Images** – All distributions are now published as Docker images on [DockerHub](https://hub.docker.com/r/operaton/operaton).

- **Comment API Enhancements** – Added support for updating and deleting comments via Java/REST APIs.

- **Improved Error Logging** – Unhandled BPMN errors now provide more informative log messages.

### Bug Fixes & Improvements

- **Parent POM Restructuring** – Cleaner and more maintainable builds.
- **Obsolete Tests Removed** – Removed outdated Swagger UI tests.
- **SQL & API Fixes** – Various improvements to SQL script tests and API page size handling.
- **WildFly Module Fixes** – Improved compatibility and stability.
- **Code Quality Boost** – Reduced issues by over **40%** compared to Beta-2.
- **OpenAPI, OAuth2, and Identity Testing** – Fixes and improvements for a more robust authentication and API experience.

### Dependency & Build Updates

- **JReleaser Automation** – Nightly builds are now handled automatically.
- **Spring Boot Upgrade** – Enhanced security and performance.
- **JUnit 5 Enhancements** – Resolved deprecations and improved testing coverage.
- **Code Cleanup** – Removed unused private members and reduced technical debt.

### Acknowledging Our Contributors

A huge thank you to everyone who contributed to this release!

**Contributors**  
Andreas Klein, Andreas Zill, Alena Geduldig, Arne Deutsch, Christoph Borowski, Christopher Möllerherm, Dirk Olmes, Javad Malaquti, Julian Haupt, Karsten Thoms, Mikhail Golubev, Paul Hempel, Prajwol Bhandari, Tales Paiva, Tim Zöller, Wolfgang Schmoller.

### Try it Out Now!

[Download](https://github.com/operaton/operaton/releases/tag/v1.0.0-beta-3) the latest release and let us know your thoughts in the comments!
