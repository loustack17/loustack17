#import "styles.typ": compact-entry, section-title

#section-title("Experience")

#compact-entry(
  [Platform / DevOps Engineer (Contract)],
  [Self-employed],
  [Sep. 2024 - Present],
  [Toronto, ON],
  list(
    [Moved a startup from manual PoC setup toward production-ready GCP delivery, using Terraform, dev/prod separation, and CI/CD to cut provisioning from 2+ hours to under 10 minutes.],
    [Reduced deployment blast radius by replacing broad cloud access with identity-based CI auth, scoped secrets, isolated credentials, pinned dependencies, and PR quality gates.],
    [Protected commerce data integrity by building Python/FastAPI/PostgreSQL services with double-entry bookkeeping rules and Shopify GraphQL integration.],
  ),
)
#compact-entry(
  [Web Development Engineer],
  [Duotify Inc.],
  [Jun. 2020 - Jan. 2024],
  [Taipei, Taiwan],
  list(
    [Reduced release prep by 30+ minutes by keeping internal GitLab CE runners on CentOS reliable and improving Azure DevOps delivery for Windows-based C\# projects.],
    [Removed a recurring reporting bottleneck by moving SQL Server work out of application-layer processing, cutting runtime from 3 minutes to 4 seconds.],
    [Protected late-stage banking delivery by taking over .NET 6 and Angular work, maintaining AWS EC2, S3, and RDS workloads through release readiness.],
  ),
)
#compact-entry(
  [ERP Application Development Engineer],
  [Unitech Computer Co., Ltd.],
  [Mar. 2019 - Jun. 2020],
  [Taipei, Taiwan],
  list(
    [Kept business-critical ERP operations stable across 20+ monthly releases by maintaining ASP.NET MVC and SQL Server systems under active production constraints.],
    [Reduced production support risk by resolving 8+ critical incidents annually through C\#, SQL debugging, query fixes, and legacy system upgrades.],
  ),
)
