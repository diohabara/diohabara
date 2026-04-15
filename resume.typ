#import "@preview/basic-resume:0.2.8": *

// Personal Information
#let name = "Takemaru KADOI"
#let email = "diohabara@gmail.com"
#let github = "github.com/diohabara"
#let linkedin = "linkedin.com/in/takemaru-kadoi"

#show: resume.with(
  author: name,
  email: email,
  github: github,
  linkedin: linkedin,
)

== Technical Skills
- *Programming Languages*: C++23 (Advanced), Python (Advanced), C (Advanced), SQL
- *Systems & Data*: Concurrent Programming, Systems Programming, Performance Optimization, Data Pipelines, Quantitative Analysis
- *Technologies*: Unix-like Systems, Windows, AWS, Docker, Podman, Git, Pandas, Polars, dbt, Prefect, Snowflake, Databricks, Spark, DuckDB
- *Finance*: Portfolio Analytics, Risk Analysis, Bloomberg Terminal

== Education
#edu(
  institution: "The University of Texas at Dallas",
  location: "Richardson, Texas",
  dates: "Aug 2022 - Aug 2024",
  degree: "Master of Science in Computer Science",
)

#edu(
  institution: "The University of Tokyo",
  location: "Tokyo, Japan",
  dates: "Apr 2017 - Mar 2022",
  degree: "Bachelor of Engineering in Information and Communication Engineering",
)

== Work Experience
#work(
  title: "Software Engineer I",
  company: "Sony Interactive Entertainment",
  location: "Tokyo, Japan",
  dates: "Feb 2025 - Present",
)
- Develop OS- and security-level production software in *C*\/*C++23* for *PlayStation OS*, focused on concurrency, correctness, and reliability
- Build reporting workflows in *Python* and *Databricks* to analyze market issues and support cross-team security operations

#work(
  title: "Software Engineer / Data Engineer",
  company: "Self-Employed",
  location: "Tokyo, Japan",
  dates: "May 2025 - Present",
)
- *Financial Services Client*: Built and optimized *AWS*-based CDC pipelines processing *tens of GBs* with *dbt*, *Prefect*, and *Snowflake*, cutting batch runtime by *2x+* and reducing cloud compute cost for credit workflows
- *Real Estate Client*: Sole engineer for a property and contract management platform, owning APIs, admin tools, analytics, deployment, and operations across *FastAPI*, *Next.js*, *GCP*, *Vercel*, and *Cloudflare*

#work(
  title: "Quantitative Analyst",
  company: "Government Pension Investment Fund",
  location: "Tokyo, Japan",
  dates: "Jun 2024 - Jan 2025",
)
- Managed portfolio analytics for *JPY 200+ trillion* in assets, developing quantitative models for optimization and risk assessment
- Migrated analytics pipelines to *AWS* with *Pandas* and *Polars*, reducing runtime by *40%*
- Built monitoring dashboards in *Streamlit* and *Tableau* for portfolio reporting
