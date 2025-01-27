---
layout: post
---

## 🏗️ Beta Today, Better Tomorrow: Our Release Approach

You might be wondering: **Why are we still releasing beta versions?** Here’s why:

---

### 🛠️ Heavy Refactoring

To ensure that **Operaton** is truly open and community-driven, we’ve been working hard to remove trademarks and address licensing concerns.

This wasn’t just a cosmetic change—it required modifying the codebase to:
- Remove trademarks.
- Eliminate potential risks and errors introduced during this process.

Most importantly, we’re committed to ensuring there are **no breaking changes in the Java API** after our first final release. This dedication to stability is why we’re proceeding cautiously.

---

### ⚙️ Modernizing for the Future

We’ve made the decision to **drop compatibility with outdated Java and Spring versions**.

Why? Supporting legacy technology:
- Slows us down.
- Holds the community back.

By focusing on supported versions, we’re building a **future-proof foundation** for your BPMN needs.

---

### 🧪 Testing Challenges

Integration tests are essential for stable releases, but we faced a unique challenge:
- Some tests relied on a **non-open Jenkins pipeline** and **non-public Docker images**.

To uphold our commitment to openness, we’re transitioning these tests to **public infrastructure**. This change will:
- Allow everyone—not just us—to run and verify them.
- Foster greater transparency and collaboration.

---

### ✅ Stability, Thanks to the Community

Thanks to the support from **early adopters** in our community, we’re confident in the stability of Operaton.

But "pretty sure" isn’t good enough. That’s why we’re committed to **rigorous testing and verification** to ensure our first stable release is rock-solid and ready for everyone.

---

### 🔜 What’s Next?

We’re working hard to:
- Port all integration tests to public infrastructure.
- Provide various distributions as **Docker images**, making it easier for users to test and integrate Operaton.

Once these steps are complete, you’ll hear about our **first stable release**—a version that’s tested, verified, and truly open for the community.

---

Together, we can make this the BPMN engine that **truly belongs to everyone**. 🚀  