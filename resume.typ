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
- *Programming Languages*: C++ (Advanced), Python (Advanced), Java, JavaScript/TypeScript, SQL
- *Technologies*: AWS, Docker, Git, React/React Native, Apache Flink, Spark, DuckDB, Databricks
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
- Design and implement *DRM systems* in *C*\/*C++* to protect digital content (games) and enforce license compliance
- Build user interfaces with *React Native* for internal tools and administrative dashboards
- Analyze system and usage data with *Python* and *Databricks*
- Collaborate with cross-functional teams to enhance system reliability and scalability
- Implement *multi-threaded solutions* for performance optimization

#work(
  title: "Data Engineering Consultant",
  company: "Yoii",
  location: "Tokyo, Japan",
  dates: "May 2025 - Present",
)
- Designed and implemented data pipelines applying *Slowly Changing Dimensions (SCD)* to ensure data integrity and historical tracking for financial records.
- Ensured high availability and seamless updates of the data pipeline by implementing a *blue-green deployment* strategy.
- Developed robust data infrastructure to support financial services, enhancing data reliability for invoice factoring and credit assessment.

#work(
  title: "Quantitative Analyst",
  company: "Government Pension Investment Fund",
  location: "Tokyo, Japan",
  dates: "Jun 2024 - Jan 2025",
)
- Served as quantitative analyst with focus on portfolio management for *￥200+ trillion* investments
- Led migration of data pipelines to *AWS cloud infrastructure* for automated portfolio monitoring
- Designed and implemented *cloud-based ETL processes* to streamline data workflows
- Supported development of quantitative models for *portfolio optimization and risk assessment*
- Created *Streamlit*, *Tableau* dashboards for interactive data visualization and reporting
- Reduced data processing time by *40%* through infrastructure optimization

== Selected Projects
- *#link("https://github.com/diohabara/pychd")[PyChD: Python Decompiler]* - Contributed to research about decompilation of Python code #link("https://www.computer.org/csdl/proceedings-article/sp/2025/223600a052/21B7QZB86cg")[PYLINGUAL paper]
