# Requirements

/\*<!\[CDATA\[\*/ div.rbtoc1690841143701 {padding: 0px;} div.rbtoc1690841143701 ul {list-style: disc;margin-left: 0px;} div.rbtoc1690841143701 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Minimal Operating Overhead](#Requirements-MinimalOperatingOverhead)
*   [Serverless Bias](#Requirements-ServerlessBias)
*   [Security](#Requirements-Security)
    *   [Role Based Permissions](#Requirements-RoleBasedPermissions)
    *   [Zero-Trust](#Requirements-Zero-Trust)
    *   [Principle of Least Privilege](#Requirements-PrincipleofLeastPrivilege)
*   [Local Compute Security](#Requirements-LocalComputeSecurity)

Development must adhere to the [requirements of any WGFS enterprise architecture project](https://wgfs.atlassian.net/wiki/spaces/EA).

# Minimal Operating Overhead

The entire solution must be able to run on a single machine using [Docker Compose](https://docs.docker.com/compose/) in both development and production modes. Restrictions **may** be enforced for such a constrained environment.

# Serverless Bias

There should be a design bias for serverless solutions. For example, in the case of scheduled tasks, while the local/development versions of [https://wgfs.atlassian.net/wiki/spaces/ZC](https://wgfs.atlassian.net/wiki/spaces/ZC) may use a daemon service, the preferable solutions would be for the system to use [Amazon EventBridge Scheduler](https://docs.aws.amazon.com/eventbridge/latest/userguide/scheduler.html).

# Security

## Role Based Permissions

The system should support role-based access controls (RBAC), whereby personnel belong to groups that are granted access to specific functions (usually based on job function).

Individual permissions should not be possible. Users are assigned to groups, which has permissions.

## Zero-Trust

![](https://wgfs.atlassian.net/wiki/download/attachments/3736436737/image-20221216-045425.png?api=v2)

Zero Trust is a security framework requiring all users, whether in or outside the organization’s network, to be authenticated, authorized, and continuously validated for security configuration and posture before being granted or keeping access to applications and data. **Zero Trust assumes that there is no traditional network edge**; networks can be local, in the cloud, or a combination or hybrid with resources anywhere as well as workers in any location.

[https://www.crowdstrike.com/cybersecurity-101/zero-trust-security/#:~:text=Zero%20Trust%20is%20a%20security,access%20to%20applications%20and%20data.](https://www.crowdstrike.com/cybersecurity-101/zero-trust-security/#:~:text=Zero%20Trust%20is%20a%20security,access%20to%20applications%20and%20data.)

## Principle of Least Privilege

The system should not assign coarse privileges for users looking for specific permissions.

# Local Compute Security

Cache of any system data, except public lookup lists (e.g., State Listing, Coverage Codes), is strictly prohibited. No application data should be stored on the user’s device at any time.