---
layout: post
author: The Operaton Team
---
### Time to Clean Up Operaton

At Operaton, our fork of Camunda 7 Community Edition, we are fully committed to modernization. A significant step forward is removing legacy support for outdated environments, particularly Java EE application servers still using the older `javax` namespace. Although Camunda 7 CE impressively supported both Java EE and Jakarta EE simultaneously, this dual support added substantial complexity.

Our vision for Operaton is clear: we aim for a leaner, more modern, and maintainable platform, ensuring a smooth transition path for existing Camunda 7 CE users. The notable exception here is legacy Java EE servers, as migrating these servers typically requires broader modernization efforts.

This week, we reached an important milestone: after extensive cleanup and optimization, Operaton's core engine successfully passed multiple integration tests on both Tomcat and WildFly within our CI pipeline. These tests are crucial, as they guarantee that the Operaton BPMN engine runs reliably on modern application servers and diverse database environments.

Our next step is to fully remove the legacy burden and streamline the codebase. The benefits of this cleanup will include:

- Faster upgrades in the future
- Enhanced clarity and easier onboarding for new contributors
- Reduced legacy bloat, enabling greater focus on essential features

By the release of version `1.0.0-beta-4`, this cleanup process will be finalized, all while maintaining robust stability. Our comprehensive integration tests provide the safety net needed to advance confidently.
