# Sample Data for Tech Co-Founder Assignment

This document provides sample data to help you understand InvestLearn's data structures. All data is **synthetic and anonymized** - no real user information is included.

## Quick Start

**Want to use this data in your implementation?**

1. **SQL File:** [dummy-data.sql](./dummy-data.sql) - Run this SQL file to insert sample data into your database
2. **JSON File:** [dummy-data.json](./dummy-data.json) - Use this JSON file for API testing or frontend development

**To use the SQL file:**
```bash
# After setting up your database and running migrations
psql -d your_database_name -f docs/public-docs/dummy-data.sql

# Or copy/paste into your database client (pgAdmin, DBeaver, etc.)
```

**To use the JSON file:**
- Import into your application for testing
- Use as mock data for frontend development
- Reference for API response formats

---

## Sample User Data

### Example User Record

```json
{
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "display_name": "John Doe",
  "email": "john.doe@example.com",
  "phone": null,
  "profile_picture": null,
  "fuid": "firebase_uid_example_123",
  "provider_id": "google"
}
```

**Note:** 
- `fuid` is the Firebase User ID (used for authentication)
- `id` is the internal database UUID
- No real PII is included

---

## Sample Goals Data

### Example Goal Record

```json
{
  "id": "660e8400-e29b-41d4-a716-446655440001",
  "user_id": "550e8400-e29b-41d4-a716-446655440000",
  "goal_name": "Retirement Fund",
  "goal_type": "retirement",
  "target_amount": "1000000.00",
  "current_amount": "50000.00",
  "monthly_contribution": "1000.00",
  "investment_horizon": 20,
  "target_year": 2045,
  "primary_family_id": "770e8400-e29b-41d4-a716-446655440002",
  "state": "on_track",
  "priority": 1,
  "is_active": true,
  "is_from_assessment": true,
  "risk_level": "medium",
  "metadata": {
    "initial_investment": 0,
    "notes": "Primary retirement goal"
  },
  "created_at": "2024-01-15T10:00:00Z",
  "updated_at": "2024-01-15T10:00:00Z"
}
```

### Example Goal Progress Snapshot

```json
{
  "id": "880e8400-e29b-41d4-a716-446655440003",
  "goal_id": "660e8400-e29b-41d4-a716-446655440001",
  "user_id": "550e8400-e29b-41d4-a716-446655440000",
  "period_year": 2024,
  "period_month": 1,
  "current_amount": "50000.00",
  "monthly_contribution": "1000.00",
  "progress_percentage": 5.00,
  "remaining_amount": "950000.00",
  "projected_time_to_goal": 19.5,
  "achievability_score": 85.5,
  "created_at": "2024-01-31T23:59:59Z"
}
```

### Example Goal Family

```json
{
  "id": "770e8400-e29b-41d4-a716-446655440002",
  "slug": "invest-grow",
  "display_name": "Invest & Grow",
  "description": "Building long-term wealth through investing, retirement planning, and asset accumulation",
  "primary_metric_type": "progress_pct",
  "sort_order": 1
}
```

---

## Sample API Responses

### GET /api/v1/goals Response

```json
{
  "data": {
    "goals": [
      {
        "id": "660e8400-e29b-41d4-a716-446655440001",
        "goalName": "Retirement Fund",
        "goalType": "retirement",
        "targetAmount": "1000000.00",
        "currentAmount": "50000.00",
        "monthlyContribution": "1000.00",
        "investmentHorizon": 20,
        "targetYear": 2045,
        "progressPercentage": 5.0,
        "state": "on_track",
        "priority": 1,
        "isActive": true,
        "riskLevel": "medium"
      },
      {
        "id": "660e8400-e29b-41d4-a716-446655440004",
        "goalName": "House Down Payment",
        "goalType": "house",
        "targetAmount": "50000.00",
        "currentAmount": "10000.00",
        "monthlyContribution": "500.00",
        "investmentHorizon": 5,
        "targetYear": 2029,
        "progressPercentage": 20.0,
        "state": "on_track",
        "priority": 2,
        "isActive": true,
        "riskLevel": "low"
      }
    ],
    "summary": {
      "totalGoals": 2,
      "activeGoals": 2,
      "totalTargetAmount": "1050000.00",
      "totalCurrentAmount": "60000.00"
    }
  }
}
```

### GET /api/v1/assessment/user/{firebaseId}/latest Response

```json
{
  "data": {
    "responseGroupId": "990e8400-e29b-41d4-a716-446655440005",
    "riskProfile": {
      "riskTolerance": 0.6,
      "riskCapacity": 0.7,
      "overallRisk": "MODERATE"
    },
    "knowledgeLevel": "INTERMEDIATE",
    "investmentHorizon": 20,
    "financialGoal": "retirement",
    "monthlyIncome": "5000.00",
    "targetAmount": "1000000.00",
    "monthlyInvestable": "1000.00"
  }
}
```

### GET /api/v1/recommendation/response-group/{id} Response

```json
{
  "data": {
    "initialAllocations": {
      "EQUITIES": 60,
      "BONDS": 30,
      "REAL_ESTATE": 5,
      "CASH": 5
    },
    "adjustedAllocations": {
      "EQUITIES": 65,
      "BONDS": 25,
      "REAL_ESTATE": 5,
      "CASH": 5
    },
    "recommendedMetrics": [
      "historicalReturn",
      "volatility",
      "expenseRatio"
    ]
  }
}
```

---

## Sample Spending Data

### Example Spending Overview

```json
{
  "data": {
    "monthlySpending": "3000.00",
    "monthlyIncome": "5000.00",
    "savingsRate": 0.4,
    "emergencyFundMonths": 3,
    "categories": [
      {
        "category": "Housing",
        "amount": "1500.00",
        "percentage": 50.0
      },
      {
        "category": "Food",
        "amount": "600.00",
        "percentage": 20.0
      },
      {
        "category": "Transportation",
        "amount": "400.00",
        "percentage": 13.3
      }
    ]
  }
}
```

---

## Sample Response Group (Assessment Session)

### Example Response Group

```json
{
  "id": "990e8400-e29b-41d4-a716-446655440005",
  "user_id": "550e8400-e29b-41d4-a716-446655440000",
  "questionnaire_type": "ONBOARDING",
  "is_completed": true,
  "metadata": {
    "started_at": "2024-01-15T09:00:00Z",
    "completed_at": "2024-01-15T09:30:00Z"
  },
  "created_at": "2024-01-15T09:00:00Z",
  "updated_at": "2024-01-15T09:30:00Z"
}
```

---

## Sample Assessment Score

### Example Assessment Score

```json
{
  "id": "aa0e8400-e29b-41d4-a716-446655440006",
  "response_group_id": "990e8400-e29b-41d4-a716-446655440005",
  "score_data": {
    "riskProfile": {
      "riskTolerance": 0.6,
      "riskCapacity": 0.7,
      "overallRisk": "MODERATE"
    },
    "knowledgeLevel": "INTERMEDIATE",
    "behavioralPatterns": {
      "lossAversion": 0.5,
      "overconfidence": 0.3,
      "anchoring": 0.4
    },
    "financialHealth": {
      "savingsRate": 0.4,
      "debtToIncome": 0.2,
      "emergencyFundMonths": 3
    }
  },
  "created_at": "2024-01-15T09:30:00Z"
}
```

---

## Notes

- All UUIDs are examples - use your own UUIDs in your implementation
- All monetary amounts are in USD (or your preferred currency)
- All timestamps are in ISO 8601 format with timezone
- No real user data, emails, or PII is included
- These examples show the structure - actual data will vary

---

**Use Case:**
- **Option 1 (Multi-Tenancy):** Use user data examples to understand the user table structure
- **Option 2 (Mobile App):** Use API response examples to understand data formats for mobile integration

