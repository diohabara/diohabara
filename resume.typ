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
- *Programming Languages*: C++23 (Advanced), Python (Advanced), C (Advanced), Java, JavaScript/TypeScript, SQL
- *Technologies*: AWS, GCP, Vercel, Cloudflare, Docker, Git, React, Next.js, FastAPI, dbt, Prefect, Snowflake, Apache Flink, Spark, DuckDB, Databricks
- *Financial Systems*: Risk Analysis, Portfolio Management, Data Analytics, Bloomberg Terminal

== Education
#edu(
  institution: "The University of Texas at Dallas",
  location: "Richardson, Texas",
  dates: "Aug 2022 - Aug 2024",
  degree: "Master of Science in Computer Science",
)
- Researched software engineering and security topics supervised by Asst. Prof. Kangkook JEE. Officer of UTDallas Computer Security Group (CSG). GPA: 3.8/4.0

#edu(
  institution: "The University of Tokyo",
  location: "Tokyo, Japan",
  dates: "Apr 2017 - Mar 2022",
  degree: "Bachelor of Engineering in Electrical Engineering & Computer Science",
)
- Wrote a bachelor thesis #link("https://github.com/diohabara/bthesis")[Type- and Sequential Effect-Guided Programming by Example] on program synthesis supervised by Prof. Masahiro FUJITA.

== Work Experience
#work(
  title: "Software Engineer I",
  company: "Sony Interactive Entertainment",
  location: "Tokyo, Japan",
  dates: "Feb 2025 - Present",
)
- Design and implement distributed DRM and OS-level security systems in *C*\/*C++23* to protect digital content (games) and enforce license compliance
- Build user interfaces with *React Native* for internal tools and administrative dashboards
- Analyze system and usage data with *Python* and *Databricks* to improve security workflows and inform product decisions

#work(
  title: "Freelance Data Engineer / Software Engineer",
  company: "Self-Employed (Multiple Clients)",
  location: "Tokyo, Japan",
  dates: "May 2025 - Present",
)
- Financial Services Client: Built incremental data pipelines processing *tens of GBs* with *dbt*, *Prefect*, *Snowflake*, and Change Data Capture (CDC) on *AWS*, achieving *2x+ faster* processing for invoice factoring and credit assessment
- Real Estate Client: Developing a property/contract management platform with analytics dashboard using *FastAPI*, *Next.js*, *GCP*, *Vercel*, and *Cloudflare*

#work(
  title: "Quantitative Analyst",
  company: "Government Pension Investment Fund",
  location: "Tokyo, Japan",
  dates: "Jun 2024 - Jan 2025",
)
- Managed portfolio analytics for *￥200+ trillion* investments, developing quantitative models for optimization and risk assessment
- Migrated data pipelines to *AWS* with *Pandas* and *Polars*, reducing processing time by *40%*
- Built interactive dashboards with *Streamlit* and *Tableau* for portfolio monitoring and reporting

== Selected Projects
- *#link("https://github.com/diohabara/pychd")[PyChD: Python Decompiler]* - Contributed to research about decompilation of Python code #link("https://www.computer.org/csdl/proceedings-article/sp/2025/223600a052/21B7QZB86cg")[PYLINGUAL paper]
