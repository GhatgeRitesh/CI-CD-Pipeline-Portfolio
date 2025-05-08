# CI/CD Pipeline Portfolio

This repository showcases a collection of complete and independent CI/CD pipelines built using **Tekton , GitOps Pipelines** for multiple backend projects. Each project follows a modular design with its own isolated configuration — including CI, CD, workspaces, secrets, and RBAC resources.

> ✅ No shared resources. Each project is self-contained.
> 
[![CI Status](https://img.shields.io/badge/CI-Passing-brightgreen)]()
[![CD Status](https://img.shields.io/badge/CD-Automated-blue)]()

---

## 📁 Repository Structure

```
├── PCAS-Pipelinea/ 
│ ├── ci/
│ ├── cd/
│ ├── workspaces/ 
│ ├── secrets/ 
│ ├── serviceaccounts/
│ └── rbac/ 
│ 
├── peoplesmed/ 
│ ├── ci/ 
│ ├── cd/ 
│ ├── workspaces/ 
│ ├── secrets/ 
│ ├── serviceaccounts/ 
│ └── rbac/ 
│ 

```

---

## 🧩 Purpose

This repository serves as a **portfolio and reference** for real-world Tekton CI/CD pipelines:
- 🚀 **CI**: Code checkout, Maven build, unit testing, code coverage, static analysis (SonarQube)
- 📦 **CD**: Docker image build, push to registry, deploy to Kubernetes
- 🔐 **Security**: Per-project secrets, isolated service accounts
- 🧹 **Clean Architecture**: No resource sharing across projects

---

## 📌 Projects Included

| Project Name         | Tech Stack                  | CI/CD Status |
|----------------------|-----------------------------|--------------|
| Product Catalog API  | Java, Spring Boot, PostgreSQL | ✅ CI, ✅ CD |
| PeoplesMed           | Java, Spring Cloud, Eureka   | ✅ CI        |


---

## 🤖 Technologies Used

- [Tekton Pipelines](https://tekton.dev/)
- Kubernetes (Minikube, kind, or cluster)
- Docker
- GitHub Webhooks for CI Triggers
- Maven, SonarQube

---

## 🧭 How to Use

Each project has its own setup. Navigate to a project directory (e.g., `product-catalog-api/`) and apply the Tekton resources using:

```bash
kubectl apply -f ci/
kubectl apply -f cd/
kubectl apply -f workspaces/
kubectl apply -f secrets/
kubectl apply -f serviceaccounts/
kubectl apply -f rbac/
