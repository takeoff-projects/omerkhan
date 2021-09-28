---
title: "Engineering"
linkTitle: "Engineering"
weight: 5
date: 2017-07-16
description: >
  Welcome to the Takeoff Engineering department.
---

## Vision

A world class development team of software engineers and managers who make our customers happy when using our product(s). Our products should contain broad rich features, high availaiblity, high quality, fast performance, trustworthy security, and reliable operation.

## Mission

The development department strives to deliver MRs fast. MR delivery is a reflection of:

- providing new product requirements
- resolution of customer issues/bugs
- fixing security problems
- increasing availability, quality, and reliability
- fostering open source community contributions
- Improving user experience
- fostering best agile practices for fast iterations

The department also focuses on career development and process to make this a preferred destination for high performing software engineers.

We use data to make decisions. If data doesn't exist we use anecdotal information. If anecdotal information isn't available we use first principles.

## FY22 Direction

The FY22 year starts with much promise and ambition. During FY21, the Development department focused on efficiency and maturation as a team. This has led to strong efficiencies in execution. For the coming year, we will focus on how to best leverage those efficiencies across a variety of activities.

### People

None of our ambition for FY22 would be possible without the people doing the work. As such we need to make sure the right opportunities are available for the right people at the right time. We will continue the career development focus and commit to having [twice yearly conversations on career development](/handbook/people-group/learning-and-development/career-development/#cadence) including a written review following guidance from the career matrixes.

### Product

We will continue our strong partnership with Product to make GitLab the best, most complete DevSecOps platform on the planet. While we continue adding features to the product we must also work to identify technical debt and bring it to the prioritization discussion. We expect that Engineering managers are already addressing technical debt that is group specific with their Product Manager. For the coming year, we would like to achieve 4 cross-group technical debt retirements supported by Product prioritization. The benefits of technical debt retirement should address of maintaining/increasing feature velocity, increasing developer happiness, increasing community contributions, reducing cost, etc.

### Quality

Our quality team supports us through automation, tooling, metrics, and focus on the community. We will work with them to help our open source and quality initiatives. During FY22, we would like to contribute to the driving of [MRARR](/handbook/engineering/quality/performance-indicators/#mrarr) and converting at least one [severity level](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#severity) from SLO to SLA.

### Sales

As we move into FY22, we need to continue to support Sales initiatives and enable them through our fulfillment section. As an example, several pain points were recognized as being problematic in Sales and these need to be addressed through the following [epic](https://gitlab.com/groups/gitlab-org/-/epics/4420). After completing this work there will be other opportunities to help accelerate sales in fulfillment and other sections. We will support these initiatives in a timely fashion.

### UX

User experience is a focus area for FY22. We support this effort both in the product development as well as in our architecture. This includes continued conversion of [Pajamas components](https://about.gitlab.com/handbook/engineering/ux/pajamas-design-system/) in order to continue to improve performance experienced by users. This involves the completion of the original 8 identified components and further completion of an additional 20 of the currently 38 components [listed](https://design.gitlab.com/components/status).

### Infrastructure

Support for the scaling of our SaaS solution is an important component of our business. We will continue the ongoing efforts to support requirements related to scaling requested from infrastructure. Further, we will define an appropriate sharding solution and implement it in the coming fiscal year.

### Process

The best way to validate our product is to dogfood it ourselves. As part of our process initiatives for the year, we will work in each sub-department to [dogfood additional parts of the product](/direction/dogfooding/) such as Roadmaps, Requirements Management, Code Quality, Auto DevOps, SAST, DAST, Dependency Scanning, Vulnerability Management, Package Management, Product Analytics, Global Search, etc. Overall the department will have an FY22 initiative to have at least 2 categories dogfooded across the entire department. The categories selected should be new for at least some portion of the department, but do not need to be a new category.

### Architecture

As we continue to scale the GitLab Product and consider additional business opportunities, our architecture will become more important. Architecture is crucial to our success and needs to be part of our thinking on a constant basis. We adopted an [architecture workflow](/handbook/engineering/architecture/workflow/) in FY21. During FY22 we would like to see this workflow highly leveraged. We will set a goal to have as many workflows completed in FY22 as there are Staff+ representatives in the organization.

## Organizational responsibilities

The development team is responsible for developing products in the following categories:

- [Dev](/handbook/engineering/development/dev/)
- [Enablement](/handbook/engineering/development/enablement/)
- [Fulfillment](/handbook/engineering/development/fulfillment/)
- [Growth](/handbook/engineering/development/growth/)
- [Ops](/handbook/engineering/development/ops/)
- [Secure](/handbook/engineering/development/secure/)
- [Protect](/handbook/engineering/development/protect/)
- [ModelOps : Applied ML](/handbook/engineering/development/modelops/appliedml/)

## Team Members

The following people are permanent members of the Development Department:

<%
departments = ['Verify', 'Package', 'Release', 'Dev' , 'Enablement', 'Fulfillment', 'Growth', 'Ops', 'Sec', 'Fellow']
department_regexp = /(#{Regexp.union(departments)})/
%>

<%=  direct_team(role_regexp: department_regexp, manager_role: 'VP of Development') %>

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

<%= stable_counterparts(role_regexp: /[,&] Development/, direct_manager_role: 'VP of Development') %>

## Team Composition

This is the breakdown of our department by section and by stage.

<% if ENV['PERISCOPE_EMBED_API_KEY'] %>
  <div>
    <embed width="100%" height="100%" style="min-height:300px;" src="<%= signed_periscope_url({ chart: 8817664,dashboard: 673088 , embed: "v2"}) %>">
  </div>
  <% else %>
    <p>You must set a <code>PERISCOPE_EMBED_API_KEY</code> environment variable to render this chart.</p>
<% end %>

<% if ENV['PERISCOPE_EMBED_API_KEY'] %>
  <div>
    <embed width="100%" height="100%" style="min-height:300px;" src="<%= signed_periscope_url({ chart: 8817717,dashboard: 673088, embed: "v2"}) %>">
  </div>
  <% else %>
    <p>You must set a <code>PERISCOPE_EMBED_API_KEY</code> environment variable to render this chart.</p>
<% end %>

This is the stack-up of our engineers, by level.

<% if ENV['PERISCOPE_EMBED_API_KEY'] %>
  <div>
    <embed width="100%" height="100%" style="min-height:300px;" src="<%= signed_periscope_url({ chart: 8737993,dashboard: 673088, embed: "v2"}) %>">
  </div>
  <% else %>
    <p>You must set a <code>PERISCOPE_EMBED_API_KEY</code> environment variable to render this chart.</p>
<% end %>

## Promotion Process
Development utilizes a quarterly process to collect, validate, approve, review all promotion proposals prior to them being added via the company-wide [process](/handbook/people-group/promotions-transfers/#bamboohr-promotion-approval-process). The goal of this quarterly promotion projection and review is to:

- Promote the right people at the right time
- Maintain a high bar for promotions
- Ensure predictability and intentionality with promotions
- Ensure alignment with overall company [promotion rate](/handbook/people-group/people-success-performance-indicators/#promotion-rate)
- Add another layer of review to reduce bias in the promotion process

The process timeline is approximate.

| Date           | Step                                                                                                                                                                   |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Weeks 1 & 2  | Managers submit promotion justification documents to their respective Director or Senior Manager.  They also create a separate Career Development document outlining areas of improvement.  Additionally for Staff+ positions, they document a business justification for the promotion (why the team needs someone in that role, not why that person achieving the goals of that role) and the time the person has been operating in their current role (both at GitLab and in previous positions as appropriate) |
| Weeks 3 & 4 | Senior Managers and Directors review all document submissions and request changes or decline the proposal outright; For Development, promotion documents should already be reviewed and are being sent to an alternative Senior Manager/Director for peer review |
| Month 2   | Upon Senior Manager/Director approval, Managers submit a promotion request in BambooHR which includes both an effective date and new pay rate (People Ops can assist) |
| Second month   | PeopleOps and Senior Leadership approve promotion requests in BambooHR |
| Month 3    | Upon final approval in BambooHR, Manager notifies team member of the promotion and announces in #team-member-updates |


## How We Work

### Onboarding

Welcome to GitLab! We are excited for you to join us.
Here are some curated resources to get you started:

- [Joining as an Engineer](/handbook/developer-onboarding/)
- [Joining as an Engineering Manager](/handbook/engineering/development/onboarding/manager/)

### Cross Functional Collaboration

#### Working across Stages

Issues that impact code in another team's product stage should be approached collaboratively with the relevant Product and Engineering managers prior to work commencing, and reviewed by the engineers responsible for that stage.

We do this to ensure that the team responsible for that area of the code base is aware of the impact of any changes being made and can influence architecture, maintainability, and approach in a way that meets their stage's roadmap.

#### Architectural Collaboration

At times when cross-functional, or cross-departmental architectural collaboration is needed, the [GitLab Architecute Evolution Workflow](/handbook/engineering/architecture/) should be followed. 

#### Decisions requiring approvals

At GitLab we value [freedom and responsibility over rigidity](/handbook/values/#freedom-and-responsibility-over-rigidity). However, there are some technical decisions that will require approval before moving forward. Those scenarios are outlined in our [required approvals](/handbook/engineering/development/required-approvals.html) section.

### Development Headcount planning

Development's headcount planning follows the Engineering [headcount planning](/handbook/engineering/#headcount-planning) and [long term profitability targets](/handbook/engineering/#long-term-profitability-targets). Development headcount is a percentage of overall engineering headcount. For FY20, the headcount size is 271 or ~58% of overall engineering headcount.

We follow normal span of control both for our managers and directors of [4 to 10](/company/team/structure/#management-group). Our sub-departments and teams match as closely as we can to the [Product Hierarchy](/handbook/product/categories/#hierarchy) to best map 1:1 to [Product Managers](/handbook/product/).

### Daily Duties for Engineering Directors

The following is a non exhaustive list of daily duties for engineering directors, while some items are only applicable at certain time, though.

1. Review engineering metrics
    1. [Development Department Performance Indicators](/handbook/engineering/development/performance-indicators/)
    1. Sub-department Performance Indicators
    1. [Dev](/handbook/engineering/development/performance-indicators/dev/)
    1. [Enablement](/handbook/engineering/development/performance-indicators/enablement/)
    1. [Fulfillment](/handbook/engineering/development/performance-indicators/fulfillment/)
    1. [Growth](/handbook/engineering/development/performance-indicators/growth/)
    1. [Ops](/handbook/engineering/development/performance-indicators/ops/)
    1. [Secure](/handbook/engineering/development/performance-indicators/secure/)
    1. [Protect](/handbook/engineering/development/performance-indicators/protect/)
1. Review hiring dashboards
1. Personal todo list
1. Personal GitLab board(s) if any
1. [Working groups](/company/team/structure/working-groups/) that the director drives or participates in
    1. Action items in agenda documents
    1. Issue boards
    1. Slack channel
1. [Infradev triage](/handbook/engineering/workflow/#infradev)
    1. Follow up open questions and ensure appropriate handling of issues with regard to priority and severity
    1. [Agenda document](https://docs.google.com/document/d/1wMokFji42Jw4ImfoiQG6dSkHFIWmLVj5Kz6bO3mF948/edit)
    1. [Infradev board](https://gitlab.com/groups/gitlab-org/-/boards/1193197?label_name%5B%5D=infradev)
1. [Performance refinement](/handbook/engineering/workflow/#performance-refinement)
    1. Follow up open questions and ensure appropriate handling of issues with regard to priority and severity
    1. [Agenda document](https://docs.google.com/document/d/1icG6yrW2oebXz8iXvgfM5JjtMqpsDBCn1v3_VO2ghS0/edit#)
    1. [Performance board](https://gitlab.com/groups/gitlab-org/-/boards/1233204)
1. [Infrastructure Development Escalations](/handbook/engineering/workflow/#infradev)
    1. Triage new issues, enhance Issue details and ensure appropriate handling based on priority and severity
    1. Sync discussions for infradev Issues are part of the [GitLab SaaS Weekly Meeting](https://about.gitlab.com/handbook/engineering/infrastructure/#gitlab-saas-infrastructure)
    1. [Agenda document](https://docs.google.com/document/d/1fLQQBKt0mShmTk_mJ-BmBM6OFjal63-AH7yKSbMg6_s/edit#)
    1. [Infradev board](https://gitlab.com/groups/gitlab-org/-/boards/1193197?label_name%5B%5D=infradev)
1. Follow active [Engineering Rapid Action(s)](#rapid-action-issue) that the director sponsors
    1. Standup/status update document
    1. Issue board

### Developing and Tracking OKRs

In general, OKRs flow top-down and align to the company and upper level organization goals.

#### Managers and Directors

For managers and directors, please refer to a good [walk-through example of OKR format](/company/okrs/#example-developments-approach-to-okrs) for developing team OKRs. Consider stubbing out OKRs early in the last month of the current quarter, and get the OKRs in shape (e.g. fleshing out details and making them [SMART](https://en.wikipedia.org/wiki/SMART_criteria)) no later than the end of the current quarter.

It is recommended to assess progress **weekly**.

1. Append the percentage score to the subject of Objective epics and Key Result issues.
1. Set the [Health status](https://about.gitlab.com/company/okrs/#maintaining-the-status-of-okrs) of epics and issues.
1. In the case where weekly assessment is impractical, an assessment shall be made by the end of each month.

#### Staff Engineers, Distinguished Engineers, and Fellows

Below are tips for developing individual's OKRs:

1. Align OKRs to team goals. However, it's unnecessary to derive from all organizational OKRs. Simply decide what makes sense to your personal situation.
1. Follow the same timeline of managers and directors, i.e. stubbing out early and bring OKRs in shape by the end of the current quarter.
1. Refer to the same [walk-through example of OKR format](/company/okrs/#example-developments-approach-to-okrs).
1. Make [SMART](https://en.wikipedia.org/wiki/SMART_criteria) OKRs - Specific, Measurable, Achievable, Relevant, Time-bound.
1. Follow the same progress assessment instructions above.

#### Examples

1. [Engineering](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7253)
1. [Development](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7148)

## Engineering Allocations and Tracking

[Engineering Allocation](https://about.gitlab.com/handbook/engineering/#engineering-allocation) require us to track goals with more diligence and thought.  We need confidence that we’re making correct decisions and executing well to these initiatives. As such, you will see us reviewing these more closely than other initiatives.  We will meet on a cadence to review these initiatives and request additional reporting to support the process.  Possible requests for additional data:

1. [Demos](https://about.gitlab.com/handbook/engineering/#engineering-demo-process)
1. [GitLab Roadmaps](https://docs.gitlab.com/ee/user/group/roadmap/)
1. [Gitlab Architecture Workflow](https://about.gitlab.com/handbook/engineering/architecture/workflow/)
1. <span class="colour" style="color: rgb(0, 0, 0);">Dogfooding of features we think may be useful</span>

We will hold Engineering Allocation Checkpoints on a cadence.  The recommended cadence is weekly.

#### Roadmaps for Engineering Allocations

We track Engineering Allocation [roadmaps](https://gitlab.com/groups/gitlab-org/-/roadmap?state=opened&sort=end_date_asc&label_name%5B%5D=Engineering+Allocation).  To use this effectively, roadmaps must have correct dates for their epic and weights assigned to issues.  If a team does not normally use weights, then assign each issue a weight of 1 (all issues are equal).  

#### Team allocation measurement

Each team needs to demonstrate how there allocation is being used.  This is done to verify we are not over/under investing for a given initaitive.  This can be done via assignment (people assigned to work) and/or issues assigned.  We will track [issues and MRs](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/11340) and see as a percentage how that compares to the overall teams work.  

### Ownership of Shared Services and Components

The GitLab application is built on top of many shared services and components, such as PostgreSQL database, Redis, Sidekiq, Prometheus and so on. These services are tightly woven into each feature's rails code base. Very often, there is need to identify the DRI when demand arises, be it feature request, incident escalation, technical debt, or bug fixes. Below is a guide to help people quickly locate the best parties who may assist on the subject matter.

#### Ownership Models

There are a few available models to choose from so that the flexibility is maximized to streamline what works best for a specific shared service and component.

1. Centralized with Specific Team
    1. A single group owns the backlog of a specific shared service including new feature requests, bug fixes, and technical debt. There may or may not be a counterpart Product Manager.
    1. The single group is a specific team, meaning there is an engineering manager and all domain owner individuals reside in this team. The DRI is the engineering manager.
    1. This single group is expected to collaborate closely and regularly in grooming and planning backlog.
    1. This model may require consensus from the Product Management counterpart.
    1. This model may fit a subject domain that experiences active development.
1. Centralized with Virtual Team
    1. A single group owns the backlog of a specific shared service including new feature requests, bug fixes, and technical debt. There may or may not be a counterpart Product Manager.
    1. The single group is a virtual team, meaning it consists of engineers from various engineering teams, for example maintainers or subject matter experts. Typically there isn't an engineering manager for this virtual team. The DRI is an appointed person in the group who may not necessarily be an engineering manager.
    1. This single group is expected to collaborate closely and regularly in grooming and planning backlog.
    1. This model may fit a subject domain that's in maintenance mode.
1. Collectives
    1. Collectives consist of individuals from existing teams who voluntarily rally around a shared interest or responsibility, but unlike Working Groups may exist in perpetuity. The shared interest could be a specific technology or system. Collective members feel a collective responsibility to weakly own, improve upon or otherwise steer the subject they govern.
    1. This is a weaker form of the Virtual Team but introduces more structure than a fully decentralized model. It can be appropriate when some form of ownership is desirable where the subject has cross-cutting impact and wide reach and cannot clearly be allocated to any specific team.
    1. Collectives do not have product or engineering managers, they are fully self-governed.
    1. Members of the Collective sync regularly and keep each other informed about the shared interest. Problem areas are identified and formalized in the Collective, but are not logged into a Collective backlog. Instead a DRI is assigned who should put the task forward to the team with the greatest need for the problem to be resolved. This is to ensure that work is distributed fairly and that there are no two backlogs that compete with each other for priorities.
    1. Collectives work best when they consist of a diverse set of individuals from different areas of product and engineering. They double as knowledge sharing hubs where information is exchanged from across teams in the Collective first, and then carried back by the individuals to their specific teams.
1. Decentralized
    1. The team who implements specific functions or utilizes certain features of the shared services is responsible for their changes from local development environment to production deployment to continued maintenance post-deployment. There is not a development-wide single DRI who owns a portion or the entirety of a shared service.
    1. A specialty team may exist for specific subject domains, however their role is to enable scalability, availability, and performance by building a solid foundation and great tools for testing and troubleshooting for other engineering teams, while they are not responsible for gating every single change in the subject domain.

#### Shared Services and Components

The shared services and components below are extracted from the GitLab [product documentation](https://docs.gitlab.com/ee/development/architecture.html).

| Service or Component | Sub-Component | Ownership Model | DRI (Centralized Only) | Ownership Group (Centralized Only) | Additional Notes |
| -------------------- | ------------- | --------------- | ---------------------- | ---------------------------------- | ---------------- |
| Alertmanager |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) | Distribution team is responsible for packaging and upgrading versions. Functional issues can be directed to the vendor. |
| Certmanager |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) | Distribution team is responsible for packaging and upgrading versions. Functional issues can be directed to the vendor. |
| Consul |  |  |  |  |  |
| Container Registry |  | Centralized with Specific Team | @dcroft | Package |  |
| Email - Inbound |  |  |  |  |  |
| Email - Outbound |  |  |  |  |  |
| GitLab K8S Agent |  | Centralized with Specific Team | @nicholasklick | Configure |  |
| GitLab Pages |  | Centralized with Specific Team | @nicolewilliams | Release |  |
| GitLab Rails |  | Decentralized |  |  | DRI for each controller is determined by the feature category specified in the class. [app/controllers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/app/controllers) and [ee/app/controllers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/app/controllers) |
| GitLab Shell |  | Centralized with Specific Team | @sean_carroll | [Create:Source Code](https://about.gitlab.com/handbook/engineering/development/dev/create/source-code-be/) | [Reference](/handbook/product/categories/#source-code-group-1) |
| HAproxy |  | Centralized with Specific Team | @brentnewton | [Infrastructure](/handbook/engineering/infrastructure/) |  |
| Jaeger |  | Centralized with Specific Team | @brentnewton | Infrastructure:Observability | Observability team made the [initial implementation/deployment](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/210). |
| LFS |  | Centralized with Specific Team | @sean_carroll | [Create:Source Code](https://about.gitlab.com/handbook/engineering/development/dev/create/source-code-be/) |  |
| Logrotate |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) | Distribution team is responsible for packaging and upgrading versions. Functional issues can be directed to the vendor. |
| Mattermost |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) | Distribution team is responsible for packaging and upgrading versions. Functional issues can be directed to the vendor. |
| MinIO |  | Decentralized |  |  | Some issues can be broken down into group-specific issues. Some issues may need more work identifying user or developer impact in order to find a DRI. |
| NGINX |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) |  |
| Object Storage |  | Decentralized |  |  | Some issues can be broken down into group-specific issues. Some issues may need more work identifying user or developer impact in order to find a DRI. |
| Patroni | General except Geo secondary clusters | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) |  |
|  | Geo secondary standby clusters | Centralized with Specific Team | @nhxnguyen | [Geo](/handbook/engineering/development/enablement/geo/) |  |
| PgBouncer |  | Centralized with Specific Team | @mendeni | [Distribution](/handbook/engineering/development/enablement/distribution/) |  |
| PostgreSQL | PostgreSQL Framework and Tooling | Centralized with Specific Team | @craig-gomes | [Database](/handbook/engineering/development/enablement/database/) | Specific to the development portion of PostgreSQL, such as the fundamental architecture, testing utilities, and other productivity tooling |
|  | GitLab Product Features | Decentralized |  |  | Examples like feature specific schema changes and/or performance tuning, etc. |
| Prometheus |  | Decentralized |  |  | Each group maintains their own metrics.  |
| Puma |  | Centralized with Specific Team | @craig-gomes | [Memory](/handbook/engineering/development/enablement/memory/) |  |
| Redis |  | Decentralized |  |  | DRI is similar to Sidekiq which is determined by the feature category specified in the class. [app/workers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/app/workers) and [ee/app/workers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/app/workers) |
| Sentry |  | Decentralized |  |  | DRI is similar to GitLab Rails which is determined by the feature category specified in the class. [app/controllers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/app/controllers) and [ee/app/controllers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/app/controllers) |
| Sidekiq |  | Decentralized |  |  | DRI for each worker is determined by the feature category specified in the class. [app/workers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/app/workers) and [ee/app/workers](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/app/workers) |
| Workhorse |  | Centralized with Specific Team | @sean_carroll | [Create:Source Code](https://about.gitlab.com/handbook/engineering/development/dev/create/source-code-be/) |  |

## Learning Resources

For a list of resources and information on our GitLab Learn channel for Development, consult [this page](/handbook/engineering/development/training/).

## Continuous Delivery, Infrastructure and Quality Collaboration

In late June 2019, we moved from a monthly release cadence to a more continuous
delivery model. This has led to us changing from issues being
concentrated during the deployment to a more constant flow. With the adoption
of continuous delivery, there is an organizational mismatch in cadence between
changes that are regularly introduced in the environment and the monthly
development cadence.

To reduce this, infrastructure and quality will engage development via
[SaaS Infrastructure Weekly](https://docs.google.com/document/u/1/d/1fLQQBKt0mShmTk_mJ-BmBM6OFjal63-AH7yKSbMg6_s/edit) and [Performance refinement](/handbook/engineering/workflow/#performance-refinement) which
represent critical issues to be addressed in development from infrastructure
and quality.

Refinement will happen on a weekly basis and involve a member of infrastructure,
quality, product management, and development.

### Rapid Action

Rapid Action is a process we follow when a critical situation arises needing immediate attention from various stakeholders.

#### What deserves Rapid Action

Any problem with both high severity and broad impact is a potential Rapid Action. For example, a performance problem that causes latency to spike by 500%, or a security problem that risks exposing customer data.

#### What if it only affects one customer?

If the problem only affects one customer, consider a [customer escalation process](https://about.gitlab.com/handbook/customer-success/tam/escalations/#definitions-of-severity-levels) as the alternative.

#### Rapid Action Process

When a situation is identified as a potential Rapid Action the following actions are recommended:

1. Identify the problem(s) to solve. Ensuring we have a data driven approach ensures we have a measurable way to quantify and track those metrics throughout the rapid action.
1. Identify the exit criteria or goals that would resolve the stated problems of the rapid action.  Highlight key dashboards or charts the DRI should be tracking to determine whether progress is trending in the right direction, so that adjustments to the work, goals, or allocation of individuals to the rapid action initiative can made as needed.  Ideally we are able to define and agree to the exit criteria amongst stakeholders, prior to fully dedicating engineers to execute on the effort.
1. Continue to iterate on the above step until the stated goals are achieved, or have the DRI continue to iterate on the goals of the rapid action.  The DRI will be the one to work with stakeholders to discuss tradeoffs between progress made in the stated effort vs. the time commitment of Engineering DRIs.

##### Administrative Tasks

1. Create an epic in the [GitLab-org group (This will link you to the epic creation page)](https://gitlab.com/groups/gitlab-org/-/epics/new) group describing the problem and the resolution criteria as briefly and precisely as possible.
    1. Apply the `rapid action` label.
    1. If the problem is related to security, make the epic confidential.
    1. If possible, list existing issues that are in the scope of this Rapid Action.
1. Identify the stakeholders involved and @-mention them on the epic. It is a good idea to over-communicate this problem, both for raising awareness and gathering ideas.
1. Decide on a Directly Responsible Individual (DRI) and clearly note this in the epic description. This decision should be made as soon as possible, so leadership and responsibility is clear. However, because this decision must be made quickly, it should not be considered a final decision.
1. Clear the schedules of the DRI and anyone else who is expected to be involved in resolving the problem. Rapid Actions are both important and urgent, so they should displace less important and urgent work. For example, if an engineer is asked to help resolve a Rapid Action, the deliverables currently assigned to them should be re-assigned or re-scheduled. Rapid Actions are stressful and time-consuming, so quickly shifting other work is a way to soften the impact.
1. Set up a daily business day standup and invite the correct stakeholders and participants.

Optionally, to facilitate communication, you might:

1. Share a Zoom link dedicated to an immediate discussion.
1. Create a Slack room dedicated to ongoing discussion with the naming convention RA-#epic-id

#### Responsibilities of the DRI

The DRI is responsible for coordinating the effort to resolve the problem, from start to finish. In particular, the DRI is responsible for:

- Maintaining the problem and resolution criteria in the epic description.
- Running the daily standup related to the epic.
- Tasking sub-DRIs as necessary. These sub-DRIs might be responsible for specific parts of the problem (part A/B/C), specific perspectives (Engineering/Infrastructure/Product), specific timezones (AMER/EUR/APAC), etc.
- Ensuring that progress is being made toward mitigation and resolution. This may include coordinating problem-solving efforts across timezones so we can have GitLab team members working on the problem 24 hours a day.
- Ensuring that work that is in-scope as part of a Rapid Action isn't included in the [Development Escalation Processes](https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process) (a.k.a. infradev).
- Updating stakeholders at least daily.
- Detailing recommended follow-up actions once the problem has been solved (enhancements, refactoring, etc).

Please note that customers can be stakeholders. The DRI can seek assistance with customer communication in Slack at `#support_escalations`.

##### Status Update Template

The DRI should post a summary status update on the epic at least daily. The following format is recommended (provided here in Markdown format for easy copy/pasting into issues):

```
**YYYY-MM-DD Update**
 
**Progress since last update:** 
 
This section describes what changes have been deployed to production and any other notable progress or accomplishments.
 
**Progress expected by next update:** 
 
This section describes what you expect to accomplish prior to the next update.  For example what work is currently in progress (include links to MRs), when do you expect these to be deployed, what do you expect to be the effect(s)?
 
**Blockers:** 
 
This section describes any specific obstacles preventing progress. What is needed to overcome them?  Are there team members (e.g. executives, domain experts) these concerns should be escalated to?
 
**Praise:** 
 
This section is used to highlight specific praise for team members contributing to the Rapid Action.  It is important to [say thanks](/handbook/values/#say-thanks).
```

#### Resolution

Once the resolution criteria have been satisfied:

1. Close the epic.
1. Host a retrospective to understand what about the rapid action process could be improved. (Note: there could also be other retros that happen related to more specific sub-efforts of the rapid action, this retro should act as a touch point to ensure collaboration + communication worked.)
1. Consider making the epic public. If the problem is related to security, ask `@gitlab-com/gl-security/secops` to determine when the epic can be made public.
1. Communicate the resolution to stakeholders.
1. Consider awarding [discretionary bonuses](../../incentives/#sts=Discretionary%20Bonuses) to the people who stepped in to help resolve the problem.

### Email alias and roll-up

1. Available email alias (a.k.a. Google group):
Managers, Directors, VP's teams: each alias includes everyone in the respective organization.
1. Naming convention:
team@gitlab.com, examples below -
    - Managers: configure-be@gitlab.com includes all the engineers reporting to the Configure backend engineering manager.
    - Directors: ops-section@gitlab.com includes all the engineers and managers reporting to the director of engineering, Ops.
    - VP of Development: development@gitlab.com includes all engineers, managers, and directors reporting to the VP of Development.
1. Roll up:
Teams roll up by the org chart hierarchy -
    - Engineering managers' aliases are included in respective Sub-department aliases
    - Sub-department aliases are included in Development alias

### Development Escalation Process

- [General information](./processes/Infra-Dev-Escalation/)
- [Process outline](./processes/Infra-Dev-Escalation/process.html)

## Books

Note: books in this section [can be expensed](/handbook/spending-company-money).

Interested in reading this as part of a group? We occasionally self-organize [book](/handbook/leadership/book-clubs/)
clubs around these books and those listed on our [Leadership page](/handbook/leadership/#books).

1. [The Principles of Product Development Flow](https://www.amazon.com/Principles-Product-Development-Flow-Generation/dp/1935401009/)
1. [Software Engineering at Google](https://gitlab.com/gitlab-com/book-clubs/-/issues/10)

## Common Links

* [Development department board](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/1008667?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Development%20Department)
* [Current OKR's](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/1008667?scope=all&utf8=✓&state=opened&label_name[]=Development%20Department&label_name[]=OKR)
* Slack channel [#development](https://gitlab.slack.com/messages/C02PF508L)
* [Manager Notes](/handbook/engineering/development/managers)
