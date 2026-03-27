---
layout: post
author: The Operaton Team
---

## Operaton 2.0 Released: Modernizing for the Future

We are thrilled to announce the official release of **Operaton 2.0**! This major release marks a significant milestone in our journey, focusing on modernizing our technology stack and ensuring that Operaton remains a cutting-edge, community-driven BPMN engine for years to come.

While Operaton 1.x was about establishing the project and providing a stable fork of Camunda 7, **Version 2.0** is about the future. We have upgraded our core dependencies to the latest industry standards, giving you better performance, security, and developer experience.

### Key Features & Improvements

#### 1. Modernized Tech Stack
Operaton 2.0 is built for the modern Java ecosystem. We have upgraded to **Spring Boot 4.0** and **Spring Framework 7.0**, ensuring full compatibility with the latest enterprise standards. This also includes compatibility with **Jakarta EE 11**.

#### 2. Enhanced Testing Support
Testing is at the heart of reliable process automation. This release introduces support for **JUnit 6** and upgrades our integration testing suite to **Testcontainers 2.0**, making it easier than ever to write robust database and container-based tests for your processes.

#### 3. Updated Distributions
Our pre-packaged distributions have been updated to their latest stable versions:
*   **Tomcat distribution** is now based on **Tomcat 11**.
*   **Wildfly distribution** is now based on **Wildfly 38**.
*   The **Quarkus extension** has been updated to **Quarkus 3.32** (with 3.33 LTS support planned).

### Important Changes & Migration

As a major version release, Operaton 2.0 includes some breaking changes that you should be aware of:

- **Minimum Java Version:** Operaton 2.0 still requires **Java 17** or higher. We also fully support and test on Java 21 and Java 25.
- **Spring Dependency Upgrade:** Support for Spring Boot 3 and Spring Framework 6 has been dropped. If you are using our Spring integration, you must upgrade your application to Spring Boot 4 / Spring Framework 7.
- **JavaScript Engine Migration:** Since Nashorn is no longer supported, legacy scripts (especially those using ECMAScript 5) may need minor adjustments to run on GraalVM.
- **Database Compatibility:** Good news! There are **no changes to the database schema** (version 7.24) or the **REST API** since version 1.1. If your integration relies solely on these interfaces, your migration will be seamless.

### Continuing the Legacy

Operaton 2.0 remains **feature-complete and API-compatible** with Camunda 7.24. Our goal is to provide a clear, modern path forward for the community, combining the reliability of a battle-tested engine with the latest advancements in the Java ecosystem.

### Get Started Today!

You can find the full release notes and migration guide in our [documentation](https://docs.operaton.org/docs/documentation/reference/release-notes/2_0/).

*   **Download:** Get the latest binaries from our [Downloads page](https://operaton.org/download).
*   **Forum:** Have questions or feedback? Join the discussion on our [forum](https://forum.operaton.org).

Thank you to all our contributors and community members who helped make this release possible. Together, we are keeping open-source process automation alive and thriving!

*The Operaton Team*
