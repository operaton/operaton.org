---
layout: post
author: The Operaton Team
---

## Migrating Operaton to JUnit 5

At the Operaton Project, our mission goes beyond merely keeping software alive—we ensure it thrives, remains maintainable, and continues to empower developers today and into the future. A significant step in this journey is our ambitious project of migrating our extensive test suite from JUnit 4 to JUnit 5.

### Why Move Away from JUnit 4?

Firstly, let’s clear up a common misunderstanding: JUnit 4 is robust, reliable, and has served the Java community exceptionally well. In fact, there's a popular saying:

> "New projects start with JUnit 5, existing stable projects stay on JUnit 4."

This reflects a widely held respect for the reliability of JUnit 4. However, at Operaton, we're thinking strategically for the long term.

### Embracing Developer Experience

Modern developers overwhelmingly prefer JUnit 5. Its intuitive structure, enhanced readability, and better annotations significantly boost developer productivity and happiness. A positive developer experience makes Operaton attractive for current and future contributors, enriching our community and ensuring our software remains vibrant.

### Shaping Operaton’s Future

The migration to JUnit 5 isn't merely an upgrade—it's a clear signal that we're committed to forward-thinking sustainability. By moving beyond the JUnit Vintage Engine (which enables running JUnit 4 tests), we distance ourselves from legacy technology. This aligns with our evolving identity as an independent, forward-looking BPMN engine, distinct from our origins based on the Camunda 7 CE codebase.

Indeed, Operaton is no longer simply a fork or copy of Camunda 7 CE. We've extensively refactored and removed legacy JavaEE components, crafting a distinctly modern and maintainable engine. Migrating to JUnit 5 reinforces this identity and supports our long-term vision.

### Migration Isn’t Easy—But It’s Worth It

Switching test frameworks involves far more than just changing annotations. Our migration journey includes:

- Comprehensive migration of all tests from JUnit 4 to JUnit 5.
- Revisiting and improving test visibility, naming conventions, and readability.
- Reassessing disabled tests and standardizing our testing strategies.
- Enhancing our overall test coverage to ensure robustness and quality.

Yes, it's extensive and demanding—but the rewards are significant. Our developers grow deeply familiar with the Operaton engine by actively rewriting and refining tests. It's a win-win for individual skill development and collective project health.

### Progress Check: How Are We Doing?

As of now:

- Roughly **70%** of test directories have undergone initial migration.
- Key modules such as the core engine and integration tests, crucial to Operaton’s functionality, are under active migration.
- Our progress is steady, structured, and achievable.

### Fully Committed to Completion

Migration projects often begin with enthusiasm but stall midway—not this one. Our commitment is firm: we're set on completing the initial migration fully by this autumn. It's essential for us to deliver a clear success story, showcasing what’s possible when the community is determined and collaborative.

### Join Our Journey

We invite you to follow along, contribute ideas, or even better—join our growing community. Help shape Operaton's future and be part of our shared success.
