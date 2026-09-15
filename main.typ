// CV — rebuild of reference/original.pdf in Typst.

#let accent = rgb("#2f6fbe")
#let dark = rgb("#3a3a3c")
#let track = rgb("#e3e3e3")
#let muted = rgb("#6b6b6b")

#set document(title: "Christoph Linse — CV", author: "Christoph Linse")
#set page(paper: "a4", margin: (x: 1.7cm, y: 1.6cm))
#set text(font: "Liberation Sans", size: 9.3pt, fill: rgb("#222222"))
#set par(justify: false, leading: 0.58em)
#set list(marker: text(fill: accent)[•], indent: 2pt, body-indent: 6pt)

// ---- shared components ----------------------------------------------------

#let heading2(title) = block(above: 13pt, below: 8pt)[
  #text(weight: "bold", size: 12.5pt)[#title]
  #v(3pt)
  #box(width: 26pt, height: 2.4pt, fill: accent)
]

#let pill(txt) = box(fill: accent, radius: 2pt, inset: (x: 7pt, y: 3.5pt))[
  #text(fill: white, size: 7.6pt, weight: "bold")[#txt]
]

#let skillbar(fraction) = grid(
  columns: (fraction * 1fr, (1 - fraction) * 1fr),
  column-gutter: 0pt,
  rect(height: 5pt, width: 100%, fill: accent, radius: 1.5pt),
  rect(height: 5pt, width: 100%, fill: track, radius: 1.5pt),
)

#let skill(name, label, fraction) = block(above: 0pt, below: 9pt)[
  #grid(columns: (1fr, auto), text(weight: "bold", size: 9pt)[#name], text(fill: muted, size: 7.6pt)[#label])
  #v(3pt)
  #skillbar(fraction)
]

#let contact-item(body) = block(above: 0pt, below: 7pt)[
  #text(fill: accent)[▸] #h(4pt) #body
]

#let job(title, place, date, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #grid(columns: (1fr, auto), align(horizon)[#text(weight: "bold", size: 10pt)[#title]], align(horizon + right)[#pill(date)])
  #text(fill: accent, weight: "bold")[#place]
  #v(5pt)
  #body
]

#let edu(date, title, place, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #text(fill: accent, weight: "bold", size: 8.5pt)[#date]
  #v(2pt)
  #text(weight: "bold", size: 9.5pt)[#title] \
  #text(fill: accent, size: 8.7pt)[#place]
  #v(5pt)
  #body
]

#let cert(title, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #text(fill: accent, weight: "bold", size: 9.5pt)[#title]
  #v(5pt)
  #body
]

#let tech-list(..groups) = list(..groups.pos().map(g => [*#g.at(0):* #g.at(1)]))

// ---- page 1 -----------------------------------------------------------

#grid(
  columns: (32%, 1fr),
  column-gutter: 20pt,
  [
    #image("assets/photo.jpg", width: 100%)
    #v(14pt)

    #heading2[SKILLS]
    #skill("Kubernetes", "5+ yrs", 0.9)
    #skill("Openshift", "5+ yrs", 0.9)
    #skill("Containers", "5+ yrs", 0.9)
    #skill("Linux", "5+ yrs", 0.9)
    #skill("Java", "5+ yrs", 0.65)
    #skill("Golang", "3+ yrs", 0.55)
    #skill("Python", "3+ yrs", 0.55)

    #heading2[CONTACT]
    #contact-item[Wylerfeldstr. 14, 3014 Bern]
    #contact-item[+41 76 264 10 72]
    #contact-item[christoph.linse\@gmail.com]

    #v(16pt)
    #align(center)[#image("assets/qr.png", width: 62%)]
  ],
  [
    #block(fill: dark, width: 100%, inset: (x: 16pt, y: 14pt), radius: 2pt)[
      #text(fill: white, weight: "bold", size: 21pt)[CHRISTOPH LINSE]
      #v(4pt)
      #box(width: 34pt, height: 2pt, fill: accent)
      #v(6pt)
      #text(fill: rgb("#d8d8d8"), size: 11pt)[Cloud and Software Engineer]
    ]

    #heading2[PROFILE]
    I am a cloud and software engineer who gained a lot of valuable experience around
    frontend- and backend development, as well as software provisioning and automation
    using infrastructure as code.

    #v(6pt)
    My enthusiasm for cloud native computing has lasted for more than 6 years and
    therefore maps my specialization. Especially the current software projects within the
    cloud native landscape provide professional tools that help me to modernize the IT
    industry.

    #heading2[WORK EXPERIENCE]

    #job("Cloud Architect & DevOps Engineer", "Avaloq Bank", "2022 - NOW")[
      As responsible engineer and architect the first milestone was the openshift
      migration of the Avaloq integration layer followed by the expansion of the
      landscape with various new services. Integration with 3Scale API management
      over monitoring and logging makes this project a big experience in an
      enterprise environment.

      #v(6pt)
      *Responsibilities in project:*
      - Implementing and integrating advanced GitOps deployment strategies
      - Extending existing Spring Boot microservices and Angular applications
      - Creating new microservices utilizing REST and Kafka for both synchronous and asynchronous operations
      - Creating and managing Kafka-Connect solutions using the Strimzi operator
      - Automating various tasks with Ansible, including custom Ansible module development
      - Monitoring of various microservices in a heterogeneous landscape on a large scale with Prometheus and Splunk
      - Utilizing Helm, Kustomize, CDK8S for manifests generation and Pulumi & ArgoCD for deployments

      #v(4pt)
      *Technologies include:*
      #tech-list(
        ("Languages", "Java, Kotlin, Bash, Python, TypeScript, HTML and (S)CSS"),
        ("Frameworks", "Spring Boot, Angular, REST, Kafka, Kafka-Connect"),
        ("Tools", "OpenShift 3/4, 3Scale, Helm, Kustomization, CDK8S, Pulumi, ArgoCD, Ansible, Prometheus Operator, Splunk, Dynatrace, (Co)Lima, K6, GitLab, Tekton"),
      )
    ]
  ],
)

// ---- pages 2+: two-column continuation --------------------------------

#pagebreak()
#set page(background: place(top + center, dy: 0pt, line(angle: 90deg, length: 100% - 3.2cm, stroke: 0.4pt + rgb("#d5d5d5"))))

#let two-col(left, right) = grid(columns: (1fr, 1fr), column-gutter: 26pt, left, right)

#two-col(
  [
    #heading2[EDUCATION]

    #edu("Since 2024", "Udemy Instructor", "Tekton - The quick start")[
      As an instructor for Tekton CI/CD, I am passionate about sharing my
      self-educated expertise gained from enterprise projects. My goal is to
      empower the community by disseminating knowledge on technologies and
      assisting individuals in their learning journey.
    ]

    #edu("2016 - 2020", "B. Sc. - IT-Security", "University of Darmstadt")[
      I pursued a dual study program, earning a Bachelor of Science in IT
      Security. This program combined academic studies with practical work
      experience at an IT consulting company. During my studies, I gained
      in-depth knowledge of IT security principles, software engineering, and
      automation techniques. Concurrently, I applied this knowledge in
      real-world scenarios by working in blocks and during holidays at the
      consulting company, practicing what I had learned with actual customers.
    ]

    #edu("2014 - 2016", "State certified technician", "Technical College Braunschweig")[
      I completed a two-year full-time education program as a State-Certified
      Technician in Computer Science. During this program, I gained advanced
      skills in programming, focusing on technical systems such as controllers
      and bus systems. I practiced software design methods and applied them in
      various projects, including a team-based project conducted outside the
      school setting. My studies also included operating systems and
      virtualization environments.
    ]
  ],
  [
    #job("Cloud Architect & DevOps Engineer", "Avaloq Bank", "2022")[
      As the engineer and architect for the Enterprise Service Bus (ESB)
      integration with Avaloq using MuleSoft, the initial step in this project
      is to guide the bank towards adopting a cloud-native approach.

      #v(6pt)
      *Responsibilities in project:*
      - Developing and containerizing Spring Boot and Angular applications
      - Defining and establishing Continuous Integration and Delivery pipelines
      - Engaging in requirements engineering, translating business needs into technical solutions
      - Creation and communication of proposed architectures, along with documenting architectural decisions and implementation guidelines
      - Defining and integrating automated testing of Spring Boot and Angular applications using frameworks like JUnit and Jasmine

      #v(4pt)
      *Technologies include:*
      #tech-list(
        ("Languages", "Java, Bash, TypeScript, HTML and (S)CSS"),
        ("Frameworks", "Spring Boot, Camunda, Angular"),
        ("Tools", "Docker, Podman, Kubernetes, OpenShift, Jenkins, Dynatrace"),
        ("Architectures", "Microservice architecture, OAuth2, JWT, GitLab"),
      )
    ]

    #job("Full Stack Developer", "Swiss Governance", "2020 - 2022")[
      As an engineer and full stack developer for a public-facing job portal
      maintained by a Swiss government institution, the main tasks involved
      maintaining the portal and adding new features.

      #v(6pt)
      *Responsibilities in project:*
      - Maintaining and developing features for Angular applications and Spring Boot services
      - Simplifying and improving Travis CI build pipelines
      - Creating and maintaining Ansible playbooks for legacy service deployments
      - Integrating monitoring solutions with Prometheus, Grafana, and Jaeger
      - Preparing and migrating microservices to OpenShift 4 including GitOps practices for automated deployments
      - Creating comprehensive Kubernetes/Openshift trainings for developers and stakeholders

      #v(4pt)
      *Technologies include:*
      #tech-list(
        ("Languages", "Java, Bash, TypeScript, HTML and (S)CSS"),
        ("Frameworks", "Spring Boot, Spring Cloud, Spring Batch, Angular"),
        ("Tools", "Ansible, Docker, Podman, Kubernetes, OpenShift, Jenkins, Travis CI, Tekton, JHipster, Helm, Kustomize, ArgoCD"),
        ("Architectures", "Microservice architecture, OAuth2, JWT, JHipster"),
      )
    ]
  ],
)

#pagebreak()

#two-col(
  [
    #edu("2010 - 2013", "IT specialist - system integration", "Company GEKA mbh")[
      As an entry into the IT career, I completed an apprenticeship as an IT
      Specialist in System Integration. During this time, I worked as a system
      administrator for Windows domains and was responsible for electronic
      installations in the data center. My role involved managing both
      hardware and software components, with a significant focus on
      automation processes.
    ]

    #heading2[CERTIFICATIONS]

    #cert("Certified Kubernetes Security Specialist")[
      Earners of this designation are accomplished Kubernetes practitioners.
      Hands-on exam demonstrated the requisite abilities to secure
      container-based applications and Kubernetes platforms during build,
      deployment and runtime, and are qualified to perform these tasks in a
      professional setting.
    ]

    #cert("Certified Kubernetes Administrator")[
      Holders of this designation demonstrated the skills, knowledge and
      competencies to perform the responsibilities of a Kubernetes
      Administrator. That means demonstrating in hands-on scenarios in
      Application Lifecycle Management, Installation, Configuration and
      Validation, Core Concepts, Networking, Scheduling, Security, Cluster
      Maintenance, Logging Monitoring, Storage, and Troubleshooting.
    ]
  ],
  [
    #job("Full Stack Engineer", "Automobile Manufacturer", "2019 - 2020")[
      Responsible full stack engineer for the migration and enhancement of the
      dealer portal for internal employees and partners of an automobile
      manufacturer. This project involved various backend and frontend
      development tasks, as well as infrastructure provisioning and
      automation.

      #v(6pt)
      *Responsibilities in project:*
      - Developed and maintained the Magnolia CMS backend using Java
      - Created and updated frontend components using JavaScript, jQuery, HTML and (S)CSS
      - Provisioned and managed the application stack via Ansible
      - Designed and implemented PostgreSQL databases to support application data requirements
      - Conducted requirements engineering sessions to gather and document business needs
      - Utilized Confluence for documentation and Jira for issue tracking and project management
      - Presented project status and updates to stakeholders in regular status presentations
      - Implemented customer's CI catalog styles in SCSS to ensure brand consistency
      - Developed and executed data migration strategies to transition from legacy systems

      #v(4pt)
      *Technologies include:*
      #tech-list(
        ("Languages", "Java, JavaScript, HTML and (S)CSS"),
        ("Frameworks", "Magnolia, REST"),
        ("Tools", "IntelliJ, Docker, Ansible, jQuery, PostgreSQL, Confluence, Jira"),
      )
    ]

    #job("Systems Engineer Consultant", "Various Clients", "2016 - 2019")[
      Systems engineer responsible for automating datacenter infrastructure
      for various client projects. While these projects primarily focused on
      software, they also involved hands-on work in the datacenter to meet
      the growing needs of customers.

      #v(6pt)
      *Responsibilities in project:*
      - Performed hardware maintenance for on-premises datacenters, including cable management, storage replacements, and hardware extensions
      - Provisioned datacenter infrastructure using Ansible for automation
      - Maintained various Linux systems, including RHEL, CentOS, Debian, and FreeBSD
      - Managed and updated software products such as Nextcloud and single sign-on (SSO) components
      - Assisted in migrating from Hyper-V to the RHEL virtualization platform
      - Supported the migration from the RHEL virtualization platform to VMware
    ]
  ],
)

#pagebreak()

#two-col(
  [
    #cert("Certified Kubernetes Application Developer")[
      Earners of this designation demonstrated the skills, knowledge and
      competencies to perform the responsibilities of a Kubernetes
      Application Developer. Earners are able to define application resources
      and use core primitives to build, monitor, and troubleshoot scalable
      applications and tools in Kubernetes. The skills and knowledge
      demonstrated by earners include Core Concepts, Configuration,
      Multi-Container Pods, Observability, Pod Design, Services and
      Networking, State Persistence.
    ]

    #cert("Kubernetes and Cloud Native Associate")[
      Basic knowledge of Kubernetes and cloud-native technologies, including
      how to deploy an application using basic kubectl commands, the
      architecture of Kubernetes, understanding the cloud-native landscape and
      projects (storage, networking, GitOps, service mesh), and understanding
      the principles of cloud-native security was acknowledged by successful
      passing.
    ]

    #cert("Kubernetes and Cloud Native Security Associate")[
      Participants holding this badge have demonstrated an understanding of
      the baseline security configuration of Kubernetes clusters to meet
      compliance objectives, including the ability to harden security
      controls, test and monitor the security, and participate in assessing
      security threats and vulnerabilities.
    ]
  ],
  [
    - Configured and maintained pfSense firewalls, including regular updates
    - Conducted analyses of diverse IDS solutions, comparing open source and commercial products
    - Conducted proof of concept (PoC) and implemented Snort IDS/IPS Firewall in datacenters
    - Implemented runtime security for Kubernetes on-premises
    - Provisioned vulnerable applications for security test cases
    - Integrated and maintained ELK (Elasticsearch, Kibana, Logstash) stacks
    - Integrated and maintained Graylog for log management
    - Updated customer-facing applications and managed infrastructure and user accounts using Ansible

    #v(4pt)
    *Technologies include:*
    #tech-list(
      ("Languages", "Bash, Golang, Python, TypeScript"),
      ("Frameworks", "ELK (Elasticsearch, Kibana, Logstash)"),
      ("Tools", "IntelliJ, Docker, Falco, Sysdig, Kubernetes, Ansible, Snort, Nextcloud, Graylog"),
    )
  ],
)

#pagebreak()

#two-col(
  [
    #cert("PCA: Prometheus Certified Associate")[
      Earners of this designation demonstrated an understanding of best
      practices for monitoring cloud native applications and infrastructure
      using Prometheus, including how to use observability data to improve
      application performance, troubleshoot system implementations, and feed
      that data into other systems.
    ]

    #cert("ICA: Istio Certified Associate")[
      Earners of this designation demonstrated a solid understanding of Istio
      principles, terminology, and best practices in order to set up Istio.
    ]

    #cert("CAPA: Certified Argo Project Associate")[
      Earners of this designation demonstrated a solid understanding of the
      Argo Project ecosystem, terminology, and best practices for each tool
      and how it relates to common DevOps, GitOps, Platform Engineering, and
      related practices.
    ]

    #cert("CGOA: Certified GitOps Associate")[
      Earners of this designation demonstrated comprehension of GitOps
      patterns including when and why to use them. They also understand the
      precautions to take around tooling for manifest format and packaging,
      state store systems, and reconciliation engines to adhere to and extend
      GitOps principles.
    ]
  ],
  [],
)
