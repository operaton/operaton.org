---
layout: post
author: The Operaton Team
---

## Learning by Example: Introducing the Operaton Examples repository

We are happy to announce **Operaton Examples** - a curated catalog of minimal, production-quality
example projects for the Operaton BPMN engine. Whether
you are just getting started with process automation or exploring advanced engine features,
**Operaton Examples** gives you a clean, working foundation to
build from.

The repository is available now
at [github.com/operaton/operaton-examples](https://github.com/operaton/operaton-examples).

### What Makes These Examples Different

Every example in the catalog is built to a consistent quality bar:

- **Dual build systems** — each project builds with both Maven Wrapper and Gradle Wrapper out of the
  box.
- **Testcontainers integration tests** — building an example means testing it against a real
  PostgreSQL database and, where applicable, real external
  systems. There are no mocked containers pretending to be the real thing.
- **Docker Compose for local exploration** — spin up the full stack with a single command and
  explore the process in Cockpit and Tasklist.

```bash
  cd examples/getting-started
  docker compose up -d --wait   # start PostgreSQL
  ./mvnw spring-boot:run        # or: ./gradlew bootRun
  # Cockpit/Tasklist: http://localhost:8080  (demo/demo)
  ./mvnw verify                 # runs Testcontainers ITs
```

### What's in the Catalog

The catalog is organized into four areas:

**Core Examples** cover the everyday building blocks of BPMN development: service tasks, user tasks and
forms, DMN decision tables, message and timer events,
error compensation (the saga pattern), multi-instance activities, external-task workers, and
REST/mail/Kafka integrations — 17 examples in total currently.

**Advanced Engine Features** go deeper: custom engine plugins with parse listeners, CommandInterceptor
for cross-cutting concerns, process migration between
definition versions, multi-tenancy with tenant identifiers, and the BPMN Model API for both reading
and generating process models programmatically.

**Platform Integration** examples demonstrate running Operaton outside of Spring Boot — embedded in
Quarkus/CDI, or as a process-application WAR deployed into
the shared operaton/tomcat or operaton/wildfly distribution images.

**Use Cases** are end-to-end scenario examples that combine multiple features into realistic workflows:
an employee leave-request process with timer
escalation, a loan-application process using DMN risk assessment and Spring Mail, an IT
incident-management process with signal and timer boundary events,
and an order-fulfillment process with error boundaries, async continuation, and compensation.

### Why This Matters for the Community

One of the most common questions from teams evaluating Operaton — or migrating from Camunda 7 CE —
is: "Where do I start?" Until now, the answer required
assembling pieces from documentation, blog posts, and older community examples that may not reflect
the current API.

operaton-examples closes that gap. Every example is verified against the current release (2.1.1) and
maintained as part of the project's CI pipeline, so
they stay current as Operaton evolves.

### Get Started

- Repository: https://github.com/operaton/operaton-examples
- Operaton docs: docs.operaton.org (https://docs.operaton.org/)
- Downloads: https://operaton.org/download
- Forum: https://forum.operaton.org

The Operaton Team
