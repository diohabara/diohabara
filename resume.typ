// resume.typ - Emoji version (with layout fixes)

#let heading-style(title) = {
  align(left)[ #text(1.1em, weight: "bold")[#title] ]
  line(length: 100%, stroke: 0.4pt)
  v(0.3em) # Adjusted v value
}

#let entry(icon, title, company, date, location, body) = {
  grid(
    columns: (auto, 1fr),
    row-gutter: 0.15em, # Adjusted row-gutter
    [#icon #text(weight: "bold")[#title] #h(0.5em) #text(company)], # Combined title and company
    align(right)[#date #h(1em) #location],
    body, # Removed empty row
  )
  v(0.3em) # Adjusted v value
}

#show: doc => {
  set document(author: "Takemaru KADOI", title: "Resume")
  set text(size: 9.0pt) # Reverted font size
  set par(leading: 0.55em) 
  set page(
    margin: (x: 15mm, top: 9mm, bottom: 9mm),
    header: align(center)[
      #grid(
        columns: (auto, auto, auto, auto),
        column-gutter: 1.5em,
        "📄 Takemaru KADOI",
        link("mailto:diohabara@gmail.com")[📧 diohabara@gmail.com],
        link("https://github.com/diohabara")[💻 GitHub],
        link("https://www.linkedin.com/in/takemaru-kadoi")[💼 LinkedIn],
      )
    ]
  )
  doc
}

#align(center)[
  #text(1.4em, weight: "bold")[Curriculum Vitae/Resume]
  #v(0.1em) # Adjusted v value
  Takemaru KADOI
]

#heading-style("🎓 Education")

#entry(
  [],
  "Master of Science in Computer Science",
  "The University of Texas at Dallas",
  "08/2022 - 05/2024",
  "Richardson, Texas",
  [Researched software engineering and security topics supervised by Asst. Prof. Kangkook JEE. Officer of UTDallas Computer Security Group(CSG).]
)

#entry(
  [],
  "Bachelor of Engineering in Electrical Engineering & Computer Science",
  "The University of Tokyo",
  "04/2017 - 03/2022",
  "Tokyo, Japan",
  [Wrote a bachelor thesis #link("https://github.com/diohabara/bthesis")[_Type- and Sequential Effect-Guided Programming by Example_] on program synthesis using a type and effect system and given examples supervised by Prof. Masahiro FUJITA.]
)


#heading-style("💼 Experience")

#entry(
  "🔬",
  "Research Assistant",
  "UTDallas",
  "05/2023 - 11/2023",
  "Richardson, Texas",
  [Conducting research about a secure decompiler and a secure database management system under the supervision of Asst. Prof. Kangkook JEE.]
)

#entry(
  "🧑‍🏫",
  "Teaching Assistant",
  "UTDallas",
  "01/2023 - 05/2024",
  "Richardson, Texas",
  [
    *2023 Spring*: 🛡️ CS 4301 Cyber Attacks and Defense Laboratory (CANDL) #h(1em) 🛡️ CS 6348 Data and Applications Security \ 
    *2023 Fall*: 🛡️ CS 6332 Systems Security and Malicious Code Analysis #h(1em) 💻 CS 4348 Operating System Concept \ 
    *2024 Spring*: 🌐 CS 6371, 4301 Advanced Programming Languages #h(1em) 🌐 CS 4337 Programming Language Paradigms
  ]
)

#entry(
  "💼",
  "Software Engineer Intern",
  "Indeed",
  "06/2022 - 08/2022",
  "Tokyo, Japan",
  [Prepared a PoC data pipeline for its data infrastructure so that the data team and other teams could easily collaborate with the same API in different programming languages. The implementation allowed more than 10 people to analyze the data cooperatively.]
)

#entry(
  "💼",
  "Software Engineer Intern",
  "Hatena",
  "02/2022 - 06/2022",
  "Tokyo, Japan",
  [Migrated and enabled parallelism of the CI/CD pipelines from Jenkins to GitHub Actions and sped them up by more than 3x, resulting in better production quality by improving the development cycle and increasing the number of reviews and deployments.]
)

#entry(
  "💼",
  "Software Engineer Intern",
  "FLYWHEEL",
  "07/2020 - 08/2020",
  "Tokyo, Japan",
  [Introduced the speed layer of the lambda architecture in the corporate data platform. The new layer potentially expanded the corporate business because streaming data analytic would be helpful for real-time analysis.]
)

#heading-style("💻 Projects")

#columns(2, gutter: 1.5em)[
  #link("https://github.com/diohabara/pychd")[PyChD]: The ChatGPT-powered decompiler for Python. Enable decompiling Python using OpenAI API.

  #link("https://github.com/diohabara/honjitsu")[honjitsu]: Daily report bot in Rust. Created a bot that collects personal information and makes a daily report.

  Top 10% NSA Codebreaker Challenge 2022. Participated in a security competition organized by NSA. Ranked within the top 10% among 2000 people.

  #link("https://ctftime.org/event/1959")[Top 4 in TexSAW CTF competition 2023]. Teamed up with CSG members and worked on solving CTF challenges in 2023.

  #link("https://github.com/CharlesAverill/prettybird")[Prettybird]: a compiler to help design fonts in Python. Collaborated with one member of CSG. Co-designed and co-organized the road map of the language.

  #link("http://iccad-contest.org/2021/Winners.html")[Top 4 in 2021 CAD Contest]. Focused on the circuit generation section, appraising distinct approaches.
]