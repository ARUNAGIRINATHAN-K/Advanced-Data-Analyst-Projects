#  AI Job Market & Salary Analysis 2025 

## Dataset Overview

This comprehensive dataset contains detailed information about AI and machine learning job positions, salaries, and market trends across different countries, experience levels, and company sizes. Perfect for data science enthusiasts, career researchers, and market analysts for practice purposes.

### Dataset Title

Global AI Job Market & Salary Trends 2025: Complete Analysis of 15,000+ Positions

## Dataset Description

### Key Features:

- 15,000+ job listings from 50+ countries
- Salary data in multiple currencies (normalized to USD)
- Experience level categorization (Entry, Mid, Senior, Executive)
- Company size impact analysis
- Remote work trends and patterns
- Skills demand analysis
- Geographic salary variations
- Time-series data showing market evolution

Columns Description

| Column | Description | Type |  
|---|---|---|  
| **job_id** | Unique identifier for each job posting | `String` |  
| **job_title** | Standardized job title | `String` |  
| **salary_usd** | Annual salary in USD | `Integer` |  
| **salary_currency** | Original salary currency | `String` |  
| **salary_local** | Salary in local currency | `Float` |  
| **experience_level** | Experience level: `EN` (Entry), `MI` (Mid), `SE` (Senior), `EX` (Executive) | `String` |  
| **employment_type** | Employment type: `FT` (Full-time), `PT` (Part-time), `CT` (Contract), `FL` (Freelance) | `String` |  
| **job_category** | Job function/category (e.g., ML Engineer, Data Scientist, AI Researcher) | `String` |  
| **company_location** | Country where the company is located | `String` |  
| **company_size** | Company size: `S` (Small <50), `M` (Medium 50–250), `L` (Large >250) | `String` |  
| **employee_residence** | Country where the employee resides | `String` |  
| **remote_ratio** | Remote work ratio: `0` (No remote), `50` (Hybrid), `100` (Fully remote) | `Integer` |  
| **required_skills** | Top 5 required skills (comma-separated) | `String` |  
| **education_required** | Minimum education requirement | `String` |  
| **years_experience** | Required years of experience | `Integer` |  
| **industry** | Industry sector of the company | `String` |  
| **posting_date** | Date when job was posted | `Date` |  
| **application_deadline** | Application deadline | `Date` |  
| **job_description_length** | Character count of the job description | `Integer` |  
| **benefits_score** | Numerical score of benefits package (1–10) | `Float` |  

