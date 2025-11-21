-- Dummy Data for Tech Co-Founder Assignment
-- This file contains sample data you can use to test your implementation
-- All data is synthetic and anonymized - no real user information

-- ============================================
-- SAMPLE USERS
-- ============================================

INSERT INTO "user" (id, display_name, email, phone, fuid, provider_id) VALUES
  ('550e8400-e29b-41d4-a716-446655440000', 'John Doe', 'john.doe@example.com', NULL, 'firebase_uid_001', 'google'),
  ('550e8400-e29b-41d4-a716-446655440001', 'Jane Smith', 'jane.smith@example.com', '+1234567890', 'firebase_uid_002', 'google'),
  ('550e8400-e29b-41d4-a716-446655440002', 'Bob Johnson', 'bob.johnson@example.com', NULL, 'firebase_uid_003', 'email'),
  ('550e8400-e29b-41d4-a716-446655440003', 'Alice Williams', 'alice.williams@example.com', '+1987654321', 'firebase_uid_004', 'google'),
  ('550e8400-e29b-41d4-a716-446655440004', 'Charlie Brown', 'charlie.brown@example.com', NULL, 'firebase_uid_005', 'email')
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- SAMPLE GOAL FAMILIES (if table exists)
-- ============================================

INSERT INTO goal_families (id, slug, display_name, description, primary_metric_type, sort_order) VALUES
  ('770e8400-e29b-41d4-a716-446655440000', 'invest-grow', 'Invest & Grow', 'Building long-term wealth through investing, retirement planning, and asset accumulation', 'progress_pct', 1),
  ('770e8400-e29b-41d4-a716-446655440001', 'debt-obligations', 'Debt & Obligations', 'Paying down debt and managing liabilities', 'payoff_pct', 2),
  ('770e8400-e29b-41d4-a716-446655440002', 'liquidity-resilience', 'Liquidity & Resilience', 'Building emergency funds and cash reserves', 'buffer_months', 3),
  ('770e8400-e29b-41d4-a716-446655440003', 'risk-protection', 'Risk & Protection', 'Insurance coverage and risk management', 'coverage_adequacy', 4),
  ('770e8400-e29b-41d4-a716-446655440004', 'lifestyle-milestones', 'Lifestyle & Milestones', 'Major life purchases and experiences', 'progress_pct', 5),
  ('770e8400-e29b-41d4-a716-446655440005', 'values-legacy', 'Values & Legacy', 'Giving, estate planning, and values-based goals', 'giving_pct', 6)
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SAMPLE USER GOALS
-- ============================================

INSERT INTO user_goals (
  id, user_id, goal_name, goal_type, target_amount, current_amount, 
  monthly_contribution, investment_horizon, target_year, primary_family_id,
  state, priority, is_active, is_from_assessment, risk_level, metadata
) VALUES
  -- User 1: John Doe - Retirement Goal
  (
    '660e8400-e29b-41d4-a716-446655440000',
    '550e8400-e29b-41d4-a716-446655440000',
    'Retirement Fund',
    'retirement',
    1000000.00,
    50000.00,
    1000.00,
    20,
    2045,
    '770e8400-e29b-41d4-a716-446655440000',
    'on_track',
    1,
    true,
    true,
    'medium',
    '{"initial_investment": 0, "notes": "Primary retirement goal"}'::jsonb
  ),
  -- User 1: John Doe - House Goal
  (
    '660e8400-e29b-41d4-a716-446655440001',
    '550e8400-e29b-41d4-a716-446655440000',
    'House Down Payment',
    'house',
    50000.00,
    10000.00,
    500.00,
    5,
    2029,
    '770e8400-e29b-41d4-a716-446655440004',
    'on_track',
    2,
    true,
    true,
    'low',
    '{"notes": "First home purchase"}'::jsonb
  ),
  -- User 2: Jane Smith - Emergency Fund
  (
    '660e8400-e29b-41d4-a716-446655440002',
    '550e8400-e29b-41d4-a716-446655440001',
    'Emergency Fund',
    'emergency_fund',
    30000.00,
    15000.00,
    500.00,
    2,
    2026,
    '770e8400-e29b-41d4-a716-446655440002',
    'on_track',
    1,
    true,
    true,
    'low',
    '{"target_months": 6}'::jsonb
  ),
  -- User 3: Bob Johnson - Retirement Goal
  (
    '660e8400-e29b-41d4-a716-446655440003',
    '550e8400-e29b-41d4-a716-446655440002',
    'Retirement Savings',
    'retirement',
    2000000.00,
    200000.00,
    2000.00,
    25,
    2050,
    '770e8400-e29b-41d4-a716-446655440000',
    'on_track',
    1,
    true,
    true,
    'high',
    '{"notes": "Aggressive retirement plan"}'::jsonb
  )
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- SAMPLE GOAL PROGRESS SNAPSHOTS
-- ============================================

INSERT INTO user_goal_progress_snapshots (
  id, goal_id, user_id, period_year, period_month,
  current_amount, monthly_contribution, progress_percentage,
  remaining_amount, projected_time_to_goal, achievability_score
) VALUES
  -- Goal 1: January 2024
  (
    '880e8400-e29b-41d4-a716-446655440000',
    '660e8400-e29b-41d4-a716-446655440000',
    '550e8400-e29b-41d4-a716-446655440000',
    2024, 1,
    50000.00,
    1000.00,
    5.00,
    950000.00,
    19.5,
    85.5
  ),
  -- Goal 1: February 2024
  (
    '880e8400-e29b-41d4-a716-446655440001',
    '660e8400-e29b-41d4-a716-446655440000',
    '550e8400-e29b-41d4-a716-446655440000',
    2024, 2,
    51000.00,
    1000.00,
    5.10,
    949000.00,
    19.4,
    85.8
  ),
  -- Goal 2: January 2024
  (
    '880e8400-e29b-41d4-a716-446655440002',
    '660e8400-e29b-41d4-a716-446655440001',
    '550e8400-e29b-41d4-a716-446655440000',
    2024, 1,
    10000.00,
    500.00,
    20.00,
    40000.00,
    4.8,
    90.0
  )
ON CONFLICT (goal_id, period_year, period_month) DO NOTHING;

-- ============================================
-- SAMPLE RESPONSE GROUPS (Assessment Sessions)
-- ============================================

INSERT INTO response_groups (
  id, user_id, questionnaire_type, is_completed, metadata
) VALUES
  (
    '990e8400-e29b-41d4-a716-446655440000',
    '550e8400-e29b-41d4-a716-446655440000',
    'ONBOARDING',
    true,
    '{"started_at": "2024-01-15T09:00:00Z", "completed_at": "2024-01-15T09:30:00Z"}'::jsonb
  ),
  (
    '990e8400-e29b-41d4-a716-446655440001',
    '550e8400-e29b-41d4-a716-446655440001',
    'ONBOARDING',
    true,
    '{"started_at": "2024-01-20T10:00:00Z", "completed_at": "2024-01-20T10:25:00Z"}'::jsonb
  ),
  (
    '990e8400-e29b-41d4-a716-446655440002',
    '550e8400-e29b-41d4-a716-446655440002',
    'ONBOARDING',
    true,
    '{"started_at": "2024-02-01T14:00:00Z", "completed_at": "2024-02-01T14:35:00Z"}'::jsonb
  )
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- SAMPLE ASSESSMENT SCORES
-- ============================================

INSERT INTO assessment_scores (
  id, response_group_id, score_data
) VALUES
  (
    'aa0e8400-e29b-41d4-a716-446655440000',
    '990e8400-e29b-41d4-a716-446655440000',
    '{
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
    }'::jsonb
  ),
  (
    'aa0e8400-e29b-41d4-a716-446655440001',
    '990e8400-e29b-41d4-a716-446655440001',
    '{
      "riskProfile": {
        "riskTolerance": 0.4,
        "riskCapacity": 0.5,
        "overallRisk": "CONSERVATIVE"
      },
      "knowledgeLevel": "BEGINNER",
      "investmentHorizon": 2,
      "financialGoal": "emergency_fund",
      "monthlyIncome": "4000.00",
      "targetAmount": "30000.00",
      "monthlyInvestable": "500.00"
    }'::jsonb
  ),
  (
    'aa0e8400-e29b-41d4-a716-446655440002',
    '990e8400-e29b-41d4-a716-446655440002',
    '{
      "riskProfile": {
        "riskTolerance": 0.8,
        "riskCapacity": 0.9,
        "overallRisk": "AGGRESSIVE"
      },
      "knowledgeLevel": "ADVANCED",
      "investmentHorizon": 25,
      "financialGoal": "retirement",
      "monthlyIncome": "8000.00",
      "targetAmount": "2000000.00",
      "monthlyInvestable": "2000.00"
    }'::jsonb
  )
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- SAMPLE USER RECOMMENDATIONS
-- ============================================

INSERT INTO user_recommendations (
  id, response_group_id, assessment_score_id,
  recommendation_calculation_data, initial_allocations, adjusted_allocations, recommended_metrics
) VALUES
  (
    'bb0e8400-e29b-41d4-a716-446655440000',
    '990e8400-e29b-41d4-a716-446655440000',
    'aa0e8400-e29b-41d4-a716-446655440000',
    '{
      "riskTolerance": 0.6,
      "knowledgeLevel": "INTERMEDIATE",
      "investmentHorizon": 20
    }'::jsonb,
    '{
      "EQUITIES": 60,
      "BONDS": 30,
      "REAL_ESTATE": 5,
      "CASH": 5
    }'::jsonb,
    '{
      "EQUITIES": 65,
      "BONDS": 25,
      "REAL_ESTATE": 5,
      "CASH": 5
    }'::jsonb,
    '["historicalReturn", "volatility", "expenseRatio"]'::jsonb
  ),
  (
    'bb0e8400-e29b-41d4-a716-446655440001',
    '990e8400-e29b-41d4-a716-446655440001',
    'aa0e8400-e29b-41d4-a716-446655440001',
    '{
      "riskTolerance": 0.4,
      "knowledgeLevel": "BEGINNER",
      "investmentHorizon": 2
    }'::jsonb,
    '{
      "EQUITIES": 30,
      "BONDS": 50,
      "REAL_ESTATE": 5,
      "CASH": 15
    }'::jsonb,
    '{
      "EQUITIES": 30,
      "BONDS": 50,
      "REAL_ESTATE": 5,
      "CASH": 15
    }'::jsonb,
    '["volatility", "creditRating", "expenseRatio"]'::jsonb
  )
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- SAMPLE SPENDING DATA
-- ============================================

INSERT INTO user_spending_data (
  id, user_id, monthly_spending, month
) VALUES
  (
    'cc0e8400-e29b-41d4-a716-446655440000',
    '550e8400-e29b-41d4-a716-446655440000',
    3000.00,
    '2024-01-01'
  ),
  (
    'cc0e8400-e29b-41d4-a716-446655440001',
    '550e8400-e29b-41d4-a716-446655440000',
    3100.00,
    '2024-02-01'
  ),
  (
    'cc0e8400-e29b-41d4-a716-446655440002',
    '550e8400-e29b-41d4-a716-446655440001',
    2500.00,
    '2024-01-01'
  )
ON CONFLICT (id) DO NOTHING;

INSERT INTO user_spending_categories (
  id, spending_data_id, category, amount
) VALUES
  -- User 1, January 2024
  ('dd0e8400-e29b-41d4-a716-446655440000', 'cc0e8400-e29b-41d4-a716-446655440000', 'Housing', 1500.00),
  ('dd0e8400-e29b-41d4-a716-446655440001', 'cc0e8400-e29b-41d4-a716-446655440000', 'Food', 600.00),
  ('dd0e8400-e29b-41d4-a716-446655440002', 'cc0e8400-e29b-41d4-a716-446655440000', 'Transportation', 400.00),
  ('dd0e8400-e29b-41d4-a716-446655440003', 'cc0e8400-e29b-41d4-a716-446655440000', 'Entertainment', 300.00),
  ('dd0e8400-e29b-41d4-a716-446655440004', 'cc0e8400-e29b-41d4-a716-446655440000', 'Other', 200.00),
  -- User 1, February 2024
  ('dd0e8400-e29b-41d4-a716-446655440005', 'cc0e8400-e29b-41d4-a716-446655440001', 'Housing', 1500.00),
  ('dd0e8400-e29b-41d4-a716-446655440006', 'cc0e8400-e29b-41d4-a716-446655440001', 'Food', 650.00),
  ('dd0e8400-e29b-41d4-a716-446655440007', 'cc0e8400-e29b-41d4-a716-446655440001', 'Transportation', 450.00),
  ('dd0e8400-e29b-41d4-a716-446655440008', 'cc0e8400-e29b-41d4-a716-446655440001', 'Entertainment', 300.00),
  ('dd0e8400-e29b-41d4-a716-446655440009', 'cc0e8400-e29b-41d4-a716-446655440001', 'Other', 200.00),
  -- User 2, January 2024
  ('dd0e8400-e29b-41d4-a716-446655440010', 'cc0e8400-e29b-41d4-a716-446655440002', 'Housing', 1200.00),
  ('dd0e8400-e29b-41d4-a716-446655440011', 'cc0e8400-e29b-41d4-a716-446655440002', 'Food', 500.00),
  ('dd0e8400-e29b-41d4-a716-446655440012', 'cc0e8400-e29b-41d4-a716-446655440002', 'Transportation', 300.00),
  ('dd0e8400-e29b-41d4-a716-446655440013', 'cc0e8400-e29b-41d4-a716-446655440002', 'Entertainment', 250.00),
  ('dd0e8400-e29b-41d4-a716-446655440014', 'cc0e8400-e29b-41d4-a716-446655440002', 'Other', 250.00)
ON CONFLICT (id) DO NOTHING;

-- ============================================
-- NOTES
-- ============================================

-- This dummy data provides:
-- - 5 sample users
-- - 6 goal families (lookup table)
-- - 4 user goals (across 3 users)
-- - 3 goal progress snapshots
-- - 3 assessment sessions
-- - 3 assessment scores
-- - 2 recommendations
-- - 3 spending records with categories

-- You can use this data to:
-- - Test multi-tenancy (Option 1): See how users are structured
-- - Test mobile app (Option 2): See API response formats
-- - Understand relationships between tables
-- - Build and test your implementation

-- To use this data:
-- 1. Set up a local PostgreSQL database
-- 2. Run your migrations first (to create tables)
-- 3. Run this SQL file: psql -d your_database -f dummy-data.sql
--    OR copy/paste into your database client

