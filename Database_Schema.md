# InvestLearn Database Schema Overview

**Last Updated:** 2025  
**Purpose:** High-level database schema for technical reference  
**Note:** This is a sanitized overview - no production data or credentials included

---

## Database Technology

- **Database:** PostgreSQL
- **ORM:** Drizzle ORM
- **Migrations:** Drizzle Kit

---

## Core Tables

### 1. **user**
User accounts and authentication.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `display_name` | text | User's display name |
| `email` | text | User email (unique) |
| `phone` | varchar(50) | Optional phone number |
| `profile_picture` | text | Profile picture URL |
| `fuid` | text | Firebase UID (for authentication) |
| `provider_id` | text | Auth provider (google, email, etc.) |

**Relationships:**
- One-to-many with `response_groups`
- One-to-many with `user_responses`
- One-to-many with `chat_messages`
- One-to-many with `user_recommendations`

---

### 2. **question_categories**
Assessment question categories.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `name` | text | Category name |
| `description` | text | Category description |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- One-to-many with `questions`

---

### 3. **questions**
Assessment questions.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `category_id` | uuid | Foreign key to `question_categories` |
| `question_text` | text | Question content |
| `why_we_ask` | text | Explanation of why question is asked |
| `question_type` | varchar(50) | Type (multiple_choice, slider, etc.) |
| `sliderConfig` | jsonb | Slider configuration (if applicable) |
| `visibilityRules` | jsonb | Rules for showing question (by knowledge level) |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `question_categories`
- One-to-many with `question_options`
- One-to-many with `user_responses`

---

### 4. **question_options**
Answer options for questions.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `question_id` | uuid | Foreign key to `questions` |
| `option_label` | text | Option text |
| `optionMetadata` | jsonb | Metadata (scores, values, etc.) |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `questions`
- One-to-many with `user_responses`

---

### 5. **response_groups**
User assessment sessions.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` |
| `questionnaire_type` | text | Type of questionnaire |
| `is_completed` | boolean | Completion status |
| `metadata` | jsonb | Additional session metadata |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `user`
- One-to-many with `user_responses`
- One-to-one with `assessment_scores`
- One-to-one with `user_recommendations`

---

### 6. **user_responses**
Individual question answers.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` |
| `question_id` | uuid | Foreign key to `questions` |
| `option_id` | uuid | Foreign key to `question_options` (if applicable) |
| `response_group_id` | uuid | Foreign key to `response_groups` |
| `answer_text` | text | Text answer (if applicable) |
| `answer_number` | numeric | Numeric answer (if applicable) |
| `answer_boolean` | boolean | Boolean answer (if applicable) |
| `answer_metadata` | jsonb | Additional answer metadata |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `user`
- Many-to-one with `questions`
- Many-to-one with `question_options` (optional)
- Many-to-one with `response_groups`

---

### 7. **assessment_scores**
Calculated assessment scores.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `response_group_id` | uuid | Foreign key to `response_groups` |
| `score_data` | jsonb | Score calculations and breakdown |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- One-to-one with `response_groups`
- One-to-many with `user_recommendations`

---

### 8. **user_recommendations**
Investment recommendations for users.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `response_group_id` | uuid | Foreign key to `response_groups` |
| `assessment_score_id` | uuid | Foreign key to `assessment_scores` |
| `recommendation_calculation_data` | jsonb | Calculation inputs |
| `initial_allocations` | jsonb | Initial portfolio allocations |
| `adjusted_allocations` | jsonb | Adjusted allocations (after adjustments) |
| `recommended_metrics` | jsonb | Recommended metrics to track |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- One-to-one with `response_groups`
- Many-to-one with `assessment_scores`

---

### 9. **chat_messages**
AI chat conversation history.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` |
| `response_group_id` | uuid | Foreign key to `response_groups` (optional) |
| `content` | text | Message content |
| `is_ai_response` | boolean | Whether message is from AI |
| `metadata` | jsonb | Additional message metadata |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `user`
- Many-to-one with `response_groups` (optional)

---

### 10. **user_spending_data**
User spending information.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` |
| `monthly_spending` | numeric | Monthly spending amount |
| `month` | date | Month for spending data |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `user`
- One-to-many with `user_spending_categories`

---

### 11. **user_spending_categories**
Spending breakdown by category.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `spending_data_id` | uuid | Foreign key to `user_spending_data` |
| `category` | text | Spending category |
| `amount` | numeric | Amount spent in category |
| `created_at` | timestamp | Creation timestamp |
| `updated_at` | timestamp | Last update timestamp |

**Relationships:**
- Many-to-one with `user_spending_data`

---

### 12. **user_sessions**
User session management.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` |
| `token` | text | Session token |
| `expires_at` | timestamp | Token expiration |
| `created_at` | timestamp | Creation timestamp |

**Relationships:**
- Many-to-one with `user`

---

### 13. **audit_logs**
System audit logging.

| Column | Type | Description |
|--------|------|-------------|
| `id` | uuid | Primary key |
| `user_id` | uuid | Foreign key to `user` (optional) |
| `action` | text | Action performed |
| `resource` | text | Resource affected |
| `metadata` | jsonb | Additional audit information |
| `created_at` | timestamp | Creation timestamp |

**Relationships:**
- Many-to-one with `user` (optional)

---

## Custom Types

### **investor_level**
Enum for user knowledge levels:
- `ALL`
- `BEGINNER`
- `INTERMEDIATE`
- `ADVANCED`

---

## Key Relationships Summary

```
user
├── response_groups (one-to-many)
│   ├── user_responses (one-to-many)
│   ├── assessment_scores (one-to-one)
│   └── user_recommendations (one-to-one)
├── chat_messages (one-to-many)
├── user_spending_data (one-to-many)
│   └── user_spending_categories (one-to-many)
└── user_sessions (one-to-many)

question_categories
└── questions (one-to-many)
    ├── question_options (one-to-many)
    └── user_responses (one-to-many)
```

---

## Notes

- All tables use UUID primary keys
- Timestamps are stored as `timestamp with time zone`
- JSONB is used for flexible metadata storage
- Foreign key constraints enforce referential integrity
- No production data or credentials are included in this document

---

**For detailed migration files, see:** `migrations/` directory  
**For ORM models, see:** `src/models/` directory


