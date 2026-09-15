// WORK EXPERIENCE entries, newest first — matches the original PDF's order.
// `systems-engineer` and `systems-engineer-continued` are one job split across
// two pages in the original layout (the bullet list runs on after a page break
// without repeating the title/date pill), so main.typ places them separately.

#import "style.typ": heading2, job, tech-list

#let heading = heading2[WORK EXPERIENCE]

#let avaloq-current = job("Cloud Architect & DevOps Engineer", "Avaloq Bank", "2022 - NOW")[
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

#let avaloq-esb = job("Cloud Architect & DevOps Engineer", "Avaloq Bank", "2022")[
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

#let swiss-governance = job("Full Stack Developer", "Swiss Governance", "2020 - 2022")[
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

#let automobile = job("Full Stack Engineer", "Automobile Manufacturer", "2019 - 2020")[
  Responsible full stack engineer for the migration and enhancement of the
  dealer portal for internal employees and partners of an automobile
  manufacturer. This project involved various backend and frontend
  development tasks, as well as infrastructure provisioning and automation.

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

#let systems-engineer = job("Systems Engineer Consultant", "Various Clients", "2016 - 2019")[
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

#let systems-engineer-continued = [
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
]
