# Tech Co-Founder Assignment - InvestLearn

> **Note:** If you're just getting started, check out the [README.md](README.md) first for an overview of the role and opportunity.

We're excited that you're interested in joining InvestLearn as a technical co-founder! This assignment is designed to give us both a sense of how we'd work together, your technical capabilities, and your product thinking. It's structured as a substantial project that mirrors real challenges we face building the platform.

## About InvestLearn

InvestLearn is a personalized financial education platform that helps users understand their investment risk profile, receive tailored recommendations, and learn investing through AI-powered guidance. We're building tools that make complex financial concepts accessible and engaging for users at all knowledge levels (beginner, intermediate, advanced).

**Our Current State:**
- ✅ Core platform with risk assessment, recommendations, AI chat, spending tracking
- ✅ Backend API (Node.js/TypeScript, PostgreSQL, Express)
- ✅ Bank extension features (analytics dashboards for Relationship Managers)
- ⚠️ Need to scale: multi-tenancy, better integrations, improved UX

**Our Vision:**
- Make financial education accessible and engaging
- Help users connect their spending, goals, and investments
- Empower banks' Relationship Managers with customer insights
- Build a platform that users actually want to use and learn from

## Assignment Overview

This is a **1-2 week project** (depending on your availability) that tests:
1. **System Design & Architecture** - Can you design scalable, maintainable systems?
2. **Full-Stack Development** - Can you build end-to-end features?
3. **Product Thinking** - Do you understand users and business needs?
4. **Code Quality** - Is your code maintainable and well-documented?
5. **Technical Leadership** - Can you make good technical decisions independently?

## Choose Your Challenge

Pick **ONE** of the following challenges that interests you most. Each tests different skills and aligns with different parts of our business:

### Option 1: Multi-Tenancy System for Bank Partnerships 🔴 **B2B FOCUS**

**The Challenge:**
We need to support multiple banks as partners, where each bank:
- Has their own branded instance of the platform
- Sees only their customers (data isolation)
- Can invite customers via referral codes
- Has access to analytics about their customers

**What to Build:**
1. **Backend System:**
   - Organizations/tenants management
   - Data isolation (each bank only sees their customers)
   - Referral code system (banks generate codes, customers sign up with codes)
   - Multi-tenant database schema design

2. **API Endpoints:**
   - Create/manage organizations
   - Generate referral codes
   - Link customers to organizations
   - Organization-scoped analytics endpoints

3. **Frontend (Optional but Recommended):**
   - Bank admin dashboard for managing referral codes
   - Customer signup flow with referral code
   - Organization-branded experience

4. **Documentation:**
   - System architecture design
   - Database schema decisions
   - Security considerations (data isolation)
   - Scalability considerations (how to handle 100+ banks)

**Why This Matters:**
This is critical for our B2B bank partnerships. We need to support multiple banks securely and scalably. This enables our B2B revenue stream and allows us to serve financial institutions at scale.

**What This Tests:**
- System design and architecture
- Security and data isolation
- Multi-tenant patterns
- Full-stack implementation
- B2B product thinking

**Key Resources:**
- Review [Database Schema](Database_Schema.md) to understand user table structure
- Use [dummy-data.sql](dummy-data.sql) to test with sample users
- Reference [API Documentation](Api_Endpoints.md) for endpoint patterns

---

### Option 2: Mobile App Architecture & API Design 🚀 **B2C FOCUS**

**The Challenge:**
Design and build the architecture for a mobile app (iOS/Android) that works with InvestLearn's API. This includes offline support, push notifications, mobile-optimized data flows, and a modern mobile user experience.

**What to Build:**
1. **API Design:**
   - Mobile-optimized endpoints (reduced payload, efficient pagination)
   - Offline-first data sync strategy
   - Push notification infrastructure design
   - Mobile authentication flow

2. **Mobile Architecture:**
   - App architecture (React Native, Flutter, or native - your choice)
   - State management strategy
   - Offline data storage and sync
   - Conflict resolution for offline edits

3. **Prototype/Demo:**
   - Working mobile app (or key screens demonstrating core flows)
   - API integration with InvestLearn backend
   - Offline functionality demo
   - Push notification demo (if implemented)

4. **Documentation:**
   - Mobile architecture design document
   - API design decisions and rationale
   - Offline sync strategy
   - Scalability considerations (how to handle 10K+ mobile users)
   - User experience design rationale

**Why This Matters:**
Mobile is critical for B2C growth. Users expect to access financial tools on their phones, and a great mobile experience is essential for user engagement and retention. This enables our B2C expansion and makes InvestLearn accessible to users on-the-go.

**What This Tests:**
- System architecture and API design
- Mobile development skills
- Offline-first thinking
- Product and UX thinking
- Technical leadership and decision-making

**Key Features to Consider:**
- Assessment flow (mobile-optimized questionnaire)
- Portfolio recommendations view
- AI chat interface
- Spending tracking
- Goal progress tracking

**Key Resources:**
- Review [API Documentation](Api_Endpoints.md) for all available endpoints
- Use [dummy-data.json](dummy-data.json) for mock API responses
- Reference [Sample Data](SAMPLE_DATA.md) for API response formats
- Check [Frontend Tech Stack](Frontend_Techstack.md) for mobile patterns

---

## Technical Requirements

Regardless of which option you choose, your solution must demonstrate:

### 1. **System Design & Architecture**
- Thoughtful database schema design
- API design (RESTful, clear endpoints)
- Scalability considerations (how would this handle 10x users?)
- Security considerations (data isolation, authentication, authorization)
- Error handling and edge cases

### 2. **Code Quality**
- Clean, maintainable code
- TypeScript (if working with our stack) or well-typed code
- Proper error handling
- Code organization and structure
- Comments where needed (but code should be self-documenting)

### 3. **Documentation**
- **System Design Document**: Architecture, database schema, API design, decisions made
- **README**: How to run the project, setup instructions, API documentation
- **Code Comments**: Where necessary for complex logic

### 4. **Testing (Optional but Valued)**
- Unit tests for critical logic
- Integration tests for API endpoints
- Test coverage documentation

### 5. **Deployment (Optional but Valued)**
- Deployed somewhere we can access (Vercel, Render, AWS, etc.)
- Environment variables properly configured
- Database migrations (if applicable)

---

## Evaluation Criteria

We'll evaluate your submission on:

### 1. **Technical Execution** (40%)
- Code quality and organization
- System design and architecture
- Database schema design
- API design
- Error handling

### 2. **Product Thinking** (30%)
- Understanding of user needs
- UX considerations (if frontend included)
- Business value of the feature
- How it fits into InvestLearn's vision

### 3. **Documentation** (20%)
- System design documentation
- Code documentation
- README quality
- Decision rationale

### 4. **Bonus Points** (10%)
- Testing
- Deployment
- Performance optimization
- Security considerations
- Creative solutions

---

## Getting Started

### Build Independently

**Important:** We're not sharing our codebase for this assignment. Build your solution independently.

**Approach:**
1. Create a new repository for your solution
2. Build your feature/system as a standalone implementation
3. Document how it would integrate with InvestLearn's existing system
4. Submit the repository link

**Why This Approach:**
- Tests your ability to work independently
- Shows your system design thinking
- Allows you to use your preferred stack
- Focuses on architecture and implementation, not codebase navigation

**Integration Documentation:**
Your solution should include clear documentation on:
- How it integrates with InvestLearn's API (for Option 2)
- How it integrates with InvestLearn's database schema (for Option 1)
- API contracts and data flows
- Authentication and security considerations

---

## Submission Requirements

Please submit:

1. **GitHub Repository** with:
   - Your code
   - README with setup instructions
   - System design document
   - API documentation

2. **System Design Document** (PDF or Markdown) covering:
   - Architecture overview
   - Database schema design
   - API design
   - Key technical decisions and rationale
   - Scalability considerations
   - Security considerations
   - Integration approach (if built independently)

3. **Video Walkthrough** (5-10 minutes):
   - Show your solution working
   - Walk through the codebase
   - Explain key design decisions
   - Discuss trade-offs and alternatives considered

4. **Email Submission** to **investlearnco@gmail.com** with:
   - Subject: "Tech Co-Founder Assignment Submission - [Your Name]"
   - Link to GitHub repository
   - Link to deployed version (if applicable)
   - Link to video walkthrough
   - Brief summary of what you built and why

---

## Timeline

- **Recommended Time:** 1-2 weeks (depending on your availability)
- **Minimum Time:** 3-4 days of focused work
- **Maximum Time:** 3 weeks (we want to respect your time)

We understand you may have other commitments. The timeline is flexible - what matters is the quality of your work and your thought process.

---

## Resources

### Our Tech Stack
- **Backend:** Node.js, TypeScript, Express, PostgreSQL, Drizzle ORM
- **Frontend:** (You can use React, Next.js, or your preferred framework)
- **Deployment:** Render, AWS, Vercel (your choice)
- **Other:** Firebase Auth, OpenAI API, Redis (optional)

### Helpful Resources

We've prepared comprehensive documentation to help you understand our system. All documents are sanitized and contain no sensitive information (no API keys, credentials, or production data).

**📚 All Available Documentation:**

#### Core Documentation
- **[Database Schema](Database_Schema.md)** - Complete database structure with all tables, relationships, and data types
- **[API Documentation](Api_Endpoints.md)** - Full API reference with all endpoints, request/response formats, and authentication
- **[Backend Tech Stack](Backend_Techstack.md)** - Technology stack, architecture patterns, and design decisions
- **[Frontend Tech Stack](Frontend_Techstack.md)** - Frontend patterns and integration approaches

#### Sample Data & Testing
- **[Sample Data](SAMPLE_DATA.md)** - Documentation explaining data structures with examples
- **[dummy-data.sql](dummy-data.sql)** - Ready-to-use SQL file with INSERT statements (import directly into PostgreSQL)
- **[dummy-data.json](dummy-data.json)** - Ready-to-use JSON file with sample API responses (use for testing/mocking)

**📋 Recommended Reading by Option:**

**For Option 1 (Multi-Tenancy):**
1. ✅ **[Database Schema](Database_Schema.md)** - Essential: Understand user table structure and relationships
2. ✅ **[dummy-data.sql](dummy-data.sql)** - Essential: Test your implementation with real data
3. ⚠️ **[API Documentation](Api_Endpoints.md)** - Helpful: Understand endpoint patterns for organization-scoped APIs
4. ⚠️ **[Sample Data](SAMPLE_DATA.md)** - Helpful: See example user records and data structures
5. ⚠️ **[Backend Tech Stack](Backend_Techstack.md)** - Optional: Understand our current stack (you can use your own)

**For Option 2 (Mobile App):**
1. ✅ **[API Documentation](Api_Endpoints.md)** - Essential: All endpoints you need for mobile integration
2. ✅ **[dummy-data.json](dummy-data.json)** - Essential: Mock API responses for development
3. ✅ **[Sample Data](SAMPLE_DATA.md)** - Essential: Understand API response formats and data structures
4. ⚠️ **[Database Schema](Database_Schema.md)** - Helpful: Understand data model (optional)
5. ⚠️ **[Frontend Tech Stack](Frontend_Techstack.md)** - Optional: See our frontend patterns (you can use your own)
6. ⚠️ **[Backend Tech Stack](Backend_Techstack.md)** - Optional: Understand backend architecture (optional)

**💡 Quick Tips:**
- Start with the essential docs for your chosen option
- Use the dummy data files to save time (no need to manually create test data)
- The optional docs are there if you want to understand our patterns, but you're free to design your own approach
- All documentation is in this repository - just click the links above

### Questions?
Feel free to reach out with questions:
- Technical questions about our codebase
- Clarifications on requirements
- Questions about InvestLearn's vision
- Any other concerns

Email: investlearnco@gmail.com

---

## What Happens Next?

After you submit:
1. We'll review your submission (within 1 week)
2. We'll schedule a technical discussion (1-2 hours)
   - Deep dive into your solution
   - Discuss technical decisions
   - Explore how we'd work together
3. We'll make a decision and get back to you

---

## Why This Assignment?

This assignment helps us both:
- **For You:** See what it's like to work on InvestLearn, understand our challenges, demonstrate your skills
- **For Us:** Evaluate your technical capabilities, product thinking, and how we'd collaborate

We're not looking for perfection - we're looking for:
- **Thoughtful problem-solving**
- **Good technical judgment**
- **Product thinking**
- **Ability to work independently**
- **Clear communication**

---

## Final Notes

- **Quality over speed:** Take the time to do it well
- **Ask questions:** We're here to help
- **Be creative:** If you have a better approach, go for it
- **Document your thinking:** We want to understand your decision-making process
- **Have fun:** This should be interesting, not stressful

We're excited to see what you build!

---

**Questions?** Email us at **investlearnco@gmail.com**

**Ready to start?** Pick a challenge and dive in!

