
---
## Email : timmchimezie@gmail.com
## 🔁 CI/CD Pipelines

CI/CD pipelines automate:

- Linting and testing of source code
- Building and pushing Docker images
- Deploying to Kubernetes or cloud services
- Running security scans (e.g., Trivy, Snyk)

> Pipelines are defined in the `ci-cd/` directory.

---

## 📦 Setup & Usage

### Prerequisites

- Docker and Docker Compose
- Terraform CLI
- Kubernetes CLI (`kubectl`)
- Cloud provider credentials (e.g., AWS/GCP service accounts)
- Helm

### Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/digital1986/devops-repo.git

   cd devops-repo
cp .env.example .env
nano .env
cd terraform/
terraform init
terraform apply

kubectl apply -f kubernetes/
