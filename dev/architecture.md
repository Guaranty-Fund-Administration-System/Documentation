# Architecture

# High Level

## Next Stop

![](/wiki/download/attachments/3736174593/Untitled%20Diagram-1683232822568-NextStop.drawio.png?api=v2)

## Future

![](/wiki/download/attachments/3736174593/Untitled%20Diagram-1683232822568.drawio.png?api=v2)

# Components

|     |     |     |
| --- | --- | --- |
| **Component** | **Current Design Thoughts** | **Open Source Option**  <br>[https://github.com/guenter/aws-oss-alternatives](https://github.com/guenter/aws-oss-alternatives) |
| Access Control | IAM | [Keycloak](https://www.keycloak.org/), [Gluu](https://gluu.org/) |
| API | AWS API Gateway, Lambda | KrakenD, node.js / Play Framework |
| Cache | ElastiCache | Memcached, Redis |
| Container Orchestration | ECS, EKS | Kubernetes |
| Database | SQL Server on EC2 | Dockerized SQL Server\* |
| Document (NoSQL) | DynamoDB | Apache Cassandra<br><br>MongoDB |
| System Documentation | GitHub Pages Backed By Jekyll |     |
| Document Management System | API Service Abstraction (Backend: PaperVision) | N/A |
| File Storage | AWS S3 | MiniO |
| Key Management Service | Amazon KMS | HashiCorp Vault |
| Message Queue | AWS MQ, AWS SQS | RabbitMQ |
| Scheduled Tasks | EventBridge Events | Quartz |
| Serverless Functions | Lambda | Knative, OpenFaaS, Fn |
| Web Front End | vue.js | N/A |
| Workflow - Automated Systems | Lambda, Lambda Step Functions, SQS, EventBridge | See Above |
| Workflow - Business Process | JIRA | jBPM |

\* Open source does not necessarily mean free. In the case of SQL Server, this is the freedom to run the software containerized, excluding licensing requirements.