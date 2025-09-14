# 🌍 Global AI Job Market & Salary Trends (2025)

## 📌 Project Overview

This project analyzes the evolving landscape of AI-related job opportunities across the globe in 2025. Using a structured dataset of job postings, it uncovers trends in salaries, remote work, skill demand, education requirements, and hiring cycles. The goal is to empower learners, researchers, and professionals with actionable insights through visualizations, dashboards, and modular analytics.

Whether you're building a SQL-only analytics engine, an interactive visualizer, or an IEEE-ready research tool, this dataset provides a rich foundation for exploration.

## 🔍 Analytical Use Cases

This project supports multiple modular analyses:

### 1. Salary Benchmarking
- Compare average salaries across roles, industries, and geographies  
- Identify top-paying companies and regions for specific AI skills  

### 2. Remote Work & Global Mobility
- Analyze remote job availability and cross-border hiring trends  
- Visualize hybrid vs. fully remote job distributions  

### 3. Skill Demand & Gap Analysis
- Identify trending tools and technologies in AI hiring  
- Match skill clusters with job titles and industries  

### 4. Education & Experience Alignment
- Correlate academic expectations with actual hiring patterns  
- Highlight entry-level vs. senior role distributions  

### 5. Hiring Seasonality & Forecasting
- Detect hiring cycles and seasonal trends  
- Forecast future demand using time-series analysis  

### 6. Company & Industry Intelligence
- Rank companies by hiring volume, salary, and benefits  
- Compare industry-wise investment in AI talent  

### 7. Job Description Quality & NLP Scoring
- Assess clarity and verbosity of job descriptions  
- Correlate description length with benefits and transparency  

---

## 🚀 Applications & Extensions

This dataset can be integrated into:

- **SQL-only dashboards** for educational platforms  
- **Interactive visualizers** for IEEE conference presentations  
- **Study Hub extensions** to recommend career paths based on user progress  
- **Outreach tools** to guide learners toward high-impact roles and skills  

---
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

Absolutely, Arun! Here's a clean, professional, and modular README content for your project **Global AI Job Market & Salary Trends (2025)**—designed to showcase your analytical depth and frontend creativity without embedding code directly.

---

## 📦 Future Enhancements

- Add real-time job scraping modules  
- Integrate NLP-based job scoring and clustering  
- Build a modular frontend for filtering and exploration  
- Extend to include internship and freelance trends  
