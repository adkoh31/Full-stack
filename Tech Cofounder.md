# Tech Co-Founder Assignment - InvestLearn

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

Pick **ONE** of the following challenges that interests you most. Each tests different skills:

### Option 1: Multi-Tenancy System for Bank Partnerships

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
   - Scalability considerations

**Why This Matters:**
This is critical for our B2B bank partnerships. We need to support multiple banks securely and scalably.

---

### Option 2: Your Own Idea 💡 **CREATIVE**

**The Challenge:**
If you have a better idea that addresses a real need for InvestLearn, propose it! 

**Requirements:**
- Must be a substantial feature/system (not just a small improvement)
- Must address a real user or business need
- Must demonstrate full-stack capabilities
- Must include system design documentation

**What to Include:**
- Problem statement (why this matters)
- Proposed solution
- System design
- Implementation plan
- How it fits into InvestLearn's vision

**Why This Matters:**
We value creative thinking and initiative. If you see a problem we haven't identified, that's valuable!

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

### Option A: Work with Our Codebase

If you want to integrate with our existing codebase:
1. Fork our repository: [Insert GitHub Repo Link]
2. Set up the project locally (see README)
3. Build your feature as part of the existing system
4. Submit a PR with your changes

**Pros:** Shows integration skills, works with real codebase  
**Cons:** Requires understanding existing codebase structure

### Option B: Build Independently

If you prefer to build independently:
1. Create a new repository
2. Build your feature as a standalone system
3. Document how it would integrate with InvestLearn
4. Submit the repository link

**Pros:** More freedom, can use your preferred stack  
**Cons:** Need to explain integration approach

**We recommend Option A** if you're comfortable with our stack (Node.js/TypeScript/PostgreSQL), but **Option B is fine** if you prefer a different stack and can explain how it would integrate.

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

4. **Email Submission** to [investlearn@gmail.com] with:
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
- [Our API Documentation](link-if-available)
- [Our Database Schema](link-if-available)
- [Architecture Overview](link-if-available)

### Questions?
Feel free to reach out with questions:
- Technical questions about our codebase
- Clarifications on requirements
- Questions about InvestLearn's vision
- Any other concerns

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

**Questions?** Email us at [investlearn@gmail.com]

**Ready to start?** Pick a challenge and dive in!
