---
title: "Incident Management Handbook"
linkTitle: "Incident Management"
date: 2021-07-14
weight: 7
description: >
  
---
{{% alert title="Note" color="warning" %}}This content was originally based on Atlassian’s excellent [document](https://takeofftech.atlassian.net/wiki/download/attachments/1302757582/Atlassian-incident-management-handbook-(1).pdf?api=v2) on their Incident Management process, which I had the pleasure of hearing them discuss at a past AWS re:Invent conference.

This is a long document as it covers both Incident Management process and application of different tools across that process. A shortened runbook for use by the Incident Manager during an Incident can be found in the [incident manager runbook](https://cartfresh.atlassian.net/wiki/spaces/~406080379/pages/1360626431/Incident+Manager+Run-book?atlOrigin=eyJpIjoiZjc3M2RmYWQ1OGQ2NGIzNDlmZTJkOWVlMzJjODZjYmUiLCJwIjoiYyJ9). {{% /alert %}}

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Incident Values](#incident-values)
- [Tooling Requirements](#tooling-requirements)
- [Role Requirements](#role-requirements)
  - [Incident Manager](#incident-manager)
  - [Incident Communication Lead](#incident-communication-lead)
  - [Incident Responder](#incident-responder)
  - [Incident Tech Lead](#incident-tech-lead)
- [Incident Stages](#incident-stages)
  - [Detect](#detect)
  - [Open Communications](#open-communications)
  - [Assess](#assess)
    - [Incident Priority Matrix](#incident-priority-matrix)
      - [Client Impact](#client-impact)
      - [Client Urgency](#client-urgency)
      - [Issue Priority](#issue-priority)
      - [Client Impact Definitions](#client-impact-definitions)
      - [Client Urgency Definitions](#client-urgency-definitions)
      - [Priority Matrix](#priority-matrix)
  - [Communicate](#communicate)
    - [Status Pages](#status-pages)
    - [](#)
    - [Email Template (to Internal Teams)](#email-template-to-internal-teams)
      - [Via Standard Email](#via-standard-email)
      - [Via Zendesk Automation](#via-zendesk-automation)
    - [Incident Internal Stakeholders Communications Lists](#incident-internal-stakeholders-communications-lists)
    - [Email Template (to Clients and Partners)](#email-template-to-clients-and-partners)
      - [Via Zendesk Automation](#via-zendesk-automation-1)
    - [Incident External Stakeholders Communications Lists](#incident-external-stakeholders-communications-lists)
  - [Escalate](#escalate)
  - [Delegate](#delegate)
    - [Send follow-up communications](#send-follow-up-communications)
  - [Resolve](#resolve)
- [Summary of Tools and Usage](#summary-of-tools-and-usage)
  - [Zendesk](#zendesk)
  - [Slack](#slack)
  - [Google Meet](#google-meet)
  - [Opsgenie](#opsgenie)
  - [Jira](#jira)
  - [Service Status Page](#service-status-page)

Incident Values
---------------

A process for managing Incidents can't cover all possible situations, so we should empower our teams with general guidance in the form of values. Incident values are designed to:

* Guide autonomous decision-making by people and teams in Incidents and postmortems. 
    
* Build a consistent culture between teams of how we identify, manage, and learn from Incidents.
    
* Align teams as to what attitude they should be bringing to each part of Incident identification, resolution, and reflection.
    

|     |     |     |     |
| --- | --- | --- | --- |
| **Stage** | **Incident Value** | **Related Takeoff Value** | **Rationale** |
| Detect | Know about issue before our Clients do | Commit to Service completeness, building monitoring and alerting into all Services | A balanced service includes enough monitoring and alerting to detect Incidents before our customers do. <br><br>The best monitoring alerts us to problems before they even become Incidents. |
| Respond | Escalate, escalate, escalate | Work as a Team | Nobody likes being woken up and we should not take the responsibility lightly. But people understand that occasionally they will be woken for an Incident where it turns out they aren't needed. What’s usually harder is waking up to a major Incident and playing catch up when you should have been alerted earlier.<br><br>We won't always have all the answers, so "don't hesitate to escalate." |
| Recover | Issues will happen, clean it up quickly | Maintain empathy for our Clients | Our Clients don't care why their service is down, only that we restore service as quickly as possible.<br><br>Never hesitate in getting an Incident resolved quickly so that we can minimize impact to our Clients. |
| Learn | Always Blameless Postmortem | Assure openness and honesty in our communications | Incidents are part of running services. We improve services by holding teams accountable, not by apportioning blame. |
| Improve | Never have the same Incident twice | Be the change we seek | Identify the root causes and the changes that will prevent the whole **class** of Incident from occurring again.<br><br>**Commit** to delivering specific changes by specific dates. |

Tooling Requirements
--------------------

* **Incident Tracking**
    
    * Every Incident should be tracked as a Zendesk Issue with a mirrored Jira Issue automatically created to track the completion of postmortems and mitigation efforts.
        
* **Chat**
    
    * Using Slack as a real-time text communication channel is fundamental to diagnosing and resolving the Incident as a team.
        
    * We utilize the following channels and formats for Incident channels
        
        * #sev1_incidents - this channel records all Slack channels which are created for Incidents (Note: this channel name will change in the near future to remove the reference to “Severity”)
            
        * #&lt;Client Name&gt;-incident-&lt;Zendesk Ticket #&gt; - this if the format of the Incident Slack channels which will be created, e.g. #albertsons-incident-42675, and utilizes the Incident Key of “wakefern-incident-40206”
            
* **Video/Voice Conferencing**
    
    * For Incidents, team video/voice conferencing via Google Meet can help us discuss, present, and agree on solution approaches. It is also useful to engaging partners like Knapp to speed understanding of the nature of the problem which is causing the Incident.
        
* **Alerting**
    
    * Alerts should be generated via Opsgenie, which manages on-call rotations and escalations associated with Incidents.
        
* **Documentation**
    
    * Utilize Jira [Incident Board](https://takeofftech.atlassian.net/secure/RapidBoard.jspa?rapidView=256) for Incident state documents sharing postmortem
        
* **Service Status**
    
    * Communicating status with both internal stakeholders and Clients through email templates or Service Status Pages helps keep everyone in the loop about the nature of and progress on resolving the Incident.
        
        * We utilize Zendesk triggers to automatically update from the Zendesk Incident issue
            
        * We generate emails manually from a basic template and send to defined Distribution Lists to target Internal or Client facing personnel
            
        * (Future Capability) We utilize a Service Status Page solution using Opsgenie and Statuspage
            

Role Requirements
-----------------

{{< alert title="Note" >}}Historically, Takeoff has not leveraged Role assignment other than the Incident Manager.  
As we grow our business and in turn need to become more mature in our processes to assure higher efficiency, we should look to leverage Role assignment more widely and uniformly.{{< /alert >}}

### Incident Manager

Each Incident is driven by the Incident Manager, who has overall responsibility for and authority for the Incident. This person is indicated by the assignee on the Incident issue. The Incident Manager is empowered to take any action necessary to resolve the Incident, which includes paging anyone in the organization and keeping those involved in an Incident focused on restoring service as quickly as possible. 

The Incident Manager is a **role**, rather than an individual on the Incident. The advantage of defining roles during an Incident is that it allows people to become interchangeable. As long as a given person knows how to perform a certain role, they can take that role for any Incident.

### Incident Communication Lead

A role occupied by an individual familiar with Client communications, preferably from the a client facing team such as Technical Support or Operations. Responsible for writing and sending internal and external communications about the Incident.

### Incident Responder

Incident responders are those individuals responsible for developing theories about what’s broken and why, and how that brokenness might be mitigated.

### Incident Tech Lead

Incident Tech Lead is a senior technical Incident Responder. In addition to acting as a normal Incident Responder, they are responsible for deciding on mitigation related changes and managing the actions of the technical team.

Incident Stages
---------------

![](/images/en/docs/Engineering/incidentmgmt/3022716966.png)

### Detect

However an Incident occurs, the first step the team takes is logging an issue ticket in Zendesk. Takeoff staff should be able to check if there is an Incident already in progress by looking at the Slack [#sev1_incidents](https://takeofftech.slack.com/archives/CSEJZS7P1) channel. Dashboards should be active around office space with the Incident Dashboards and/or Service Status page so affected teams can easily monitor Incidents in progress.  
  
The following attributes of an Incident should be captured and flow through the various systems involved in resolving and documenting the Incident:

|     |     |     |
| --- | --- | --- |
| **Ticket Field** | **Type** | **Help Text** |
| Summary | Text | Brief description of issue. |
| Description | Text | Longer description of the issue. |
| Client Impact | Text | How is the Incident impacting the Client’s business processes? [Refreshed Incident Ranking Workflow](https://takeofftech.atlassian.net/wiki/spaces/ST/pages/2934505833/Refreshed+Incident+Ranking+Workflow) |
| Client Urgency | Text | How long until the Incident will impact the Client’s business processes? [Refreshed Incident Ranking Workflow](https://takeofftech.atlassian.net/wiki/spaces/ST/pages/2934505833/Refreshed+Incident+Ranking+Workflow) |
| Incident Priority | Single-select | A derived value based on Client Impact and Urgency:  <br>[Refreshed Incident Ranking Workflow](https://takeofftech.atlassian.net/wiki/spaces/ST/pages/2934505833/Refreshed+Incident+Ranking+Workflow) |
| Faulty Service | Single-select | The service or component that has the fault that’s causing the Incident. Take your best guess if unsure. Select “Unknown” if you have no idea. |
| Affected Clients | Multi-select | Which Clients are affected by this Incident? Select any that apply. |
| Affected MFCs | Multi-select | Which MFCs are affected by this Incident? Select any that apply. |

Once the Incident issue is created, an Incident Key, e.g. “albertsons-incident-42675” is generated for a variety of purposes:

* Slack Incident channel naming
    
* Opsgenie Alert description (or tagging) for any Alerts to the on-call Incident Manager and necessary Engineering teams (Note: Incident Flow is not yet functioning in this way but will be)
    
* Jira Incident Issue description (or tagging) for Issue which is used for documenting the Incident (Note: Incident Flow is not yet functioning in this way but will be)
    

### Open Communications

Technical Support sets up the Incident team’s communication channels via Takeoff Majordomo automation. The goal at this point is to establish and focus all Incident team communications in well-known places. (Note: Currently invocation of Majordomo command is a manual step but eventually we could perform this step via automation if when we mature to the state of having robust service/solution monitoring which could be trusted to invoke such automation.)

We use four team communication methods for every Incident:

* Zendesk: This acts as the external entry point for Clients or Partners to report Incidents. It is also used for communicating with Clients, Partners, and internal teams around the nature and state of the Incident.
    
* Slack: The Incident Slack Channel allows the Incident team to communicate, share observations, links, and screenshots in a way that is timestamped and preserved. Automatically assign the channel the same name as the Incident issue key (e.g., [#wakefern-incident-40206](https://takeofftech.slack.com/archives/C021S13CW9H)), which makes it easier for Incident Responders to find.
    
* Google Meet: The Incident Meets Conference Bridge allows face-to-face synchronous video & audio communication, which helps teams build a shared understanding of the situation and make decisions faster.
    
* Jira: The Incident Issue is where we track Incident actions (for example, who changed what, when, why, how to revert, during the Incident, etc) and a timeline of events. An Incident Issue is extremely useful as the source of truth during complex or extended Incidents and for generating action items and learning from the Incident
    

Using both video conference and text chat room synchronously works best during most Incidents, because they are optimized for different things. Video chat excels at creating a shared mental picture of the Incident quickly through group discussion, while text chat is great for keeping a timestamped record of the Incident, shared links to dashboards, screenshots, and other URLs. In this way, video and text chat are complementary rather than one or the other.

The Incident Slack Channel should also be used to record important observations, changes, and decisions that happen in unrecorded conversations. The Incident Manager (or anyone on the Incident team) does this by simply noting observations, changes, and decisions as they happen in real-time. It’s okay if it looks like people are talking to themselves. These notes are incredibly valuable during the Incident postmortem when teams need to reconstruct the Incident timeline and figure out the thing that caused it.

Communications automation sets the Slack Channel topic with information about the Incident and useful links, including:

* The Incident Summary and Priority
    
* Who is acting in what role, starting with the Incident Manager
    
* Links to the Incident Zendesk issue, the Meet video/phone conference room, and the Jira Incident Issue (Note: automation does not currently document the Jira Incident Issue in the Slack channel, but this capability should be added)
    

Remember that we automatically named the Slack Channel based on the Incident’s issue key (e.g., [#wakefern-incident-40206](https://takeofftech.slack.com/archives/C021S13CW9H)), and our page alerting automation includes this issue key in page alerts, and all of our internal communication about the Incident (covered later) includes the same issue key. This consistency means that anyone with that issue key can easily find the Incident’s chat room and come up to speed on the Incident.

### Assess

{{< alert title="Note" >}}Takeoff has historically utilized the concept of Issue Severity which flows from Zendesk and related [definition](https://takeofftech.atlassian.net/wiki/spaces/EN/pages/1090093101/Severity+definition+and+SLAs) to determine whether an Issue warrants invoking [Incident Flow](https://takeofftech.atlassian.net/wiki/spaces/~406080379/pages/2840200201/Proposed+Incident+Management+Process+Changes#Separation-of-Severity-from-Incident-Flow). We are retiring usage of Severity as the determiner of whether an Issue warrants handling as an Incident and will be removing all references to Severity from Incident Management processes.  
The concepts of Client Impact, Client Urgency, and Issue Priority as described below are new and will be utilized going forward for determining if an Issue warrants invoking Incident Flow.{{< /alert >}}

After the Incident team has their communication channels set up, the next step is to assess and verify the Incident’s Priority so the team can decide what level of response is appropriate.

To help determine whether an Issue warrants Incident Flow and whether changes in circumstances might warrant changes in Issue Priority, we leverage an _Incident Priority Matrix_ which measures the cross product of the issue’s Client Impact and Urgency to determine Priority.

#### Incident Priority Matrix

##### Client Impact

_Impact_ measures the effect of an issue on a Client’s business processes. Impact is generally based on how the quality of Takeoff service to the Client is affected.

##### Client Urgency

_Urgency_ is a measure of the time for an issue to impact the Client’s business. For example, a high impact issue may have low urgency if the impact will not affect the business until three months later.

##### Issue Priority

_Priority_ is a category that identifies the relative importance of an issue. Priority is based on Impact and Urgency and identifies the required time for actions to be taken. Impact and Urgency are used to assign a priority to the issue.

##### Client Impact Definitions

|     |     |     |
| --- | --- | --- |
| **Level** | **Client Impact Definition** | **Example** |
| Extensive | Severely or totally affected | * One or more MFCs are not operational<br>    <br>* OSR Picking at an MFC is not operational<br>    <br>* Manually Picking at an MFC is not operational |
| Significant | Operating at a limited capacity | * A Pick Station is not operational<br>    <br>* Manually picking is slowed due to poor Pickerman or Takeoff Service performance |
| Moderate | Operating but some functions are negatively affected | A Decanting Station is not operational |
| Minor | Operating but some functions ancillary to order fulfillment are experiencing degradation | Client facing reporting functions are not operational |

##### Client Urgency Definitions

|     |     |
| --- | --- |
| **Level** | **Client Urgency Definition** |
| Critical | Operations are immediately affected or will be affected within 5 minutes |
| High | Operations will be affected within 4 hours |
| Medium | Operations will be affected within 24 hours |
| Low | Operations will be affected within 1 month |

##### Priority Matrix

|     |     |     |     |     |
| --- | --- | --- | --- | --- |
| **Urgency** :point_right: <br>**Impact** :point_down: | Critical | High | Medium | Low |
| Extensive | <span style="color:red">**P1**</span>  | <span style="color:red">**P2**</span>  | <span style="color:orange">**P3**</span>  | <span style="color:blue">**P5**</span>  |
| Significant | <span style="color:red">**P2**</span>  | <span style="color:orange">**P3**</span>  | <span style="color:aqua">**P4**</span>  | <span style="color:blue">**P5**</span>  |
| Moderate | <span style="color:orange">**P3**</span>  | <span style="color:orange">**P3**</span>  | <span style="color:aqua">**P4**</span>  | <span style="color:blue">**P5**</span>  |
| Minor | <span style="color:orange">**P3**</span>  | <span style="color:aqua">**P4**  | <span style="color:aqua">**P4**</span>  | <span style="color:blue">**P5**</span>  |

We will invoke an Incident Flow for any issues which land in the Priority 1 or 2 (<span style="color:red">Red</span>) sections of the Priority Matrix.

{{< alert title="Note" >}}_It is worth reiterating that Incident Flow determination will still be at the judgement of Client Support and Engineering leadership; if an exceptional situation arises, Incident Flow may be invoked outside of the above defined guidance._{{< /alert >}}

### Communicate

Once we are confident that the Incident is real, we need to communicate it internally and externally. The goal of initial internal communication is to focus the Incident response in one place and reduce confusion. The goal of external communication is to tell Client(s) that we know something’s broken and we’re looking into it as a matter of urgency. Communicating quickly about new Incidents helps to build trust with our staff and Clients.

#### Status Pages

{{< alert color="warning" title="Please Note" >}}We do not currently have Status Page functionality place for our Services/Components but are working on making this a reality. This section is kept for future usage.{{< /alert >}}

Use of a Service Status page for Incident communications both internally and externally is critical. We should maintain separate status pages for internal company staff and external Clients. The goal is to get initial communications up as quickly as possible. In order to do that, we follow these templates:

|     |     |     |
| --- | --- | --- |
|     | **Internal Status Page** | **External Status Page** |
| **Incident Name** | &lt;Incident Issue Key&gt; - &lt;Priority&gt; - &lt;Incident Subject&gt; | Investigating Incident with Takeoff services at &lt;MFC X&gt; and &lt;MFC Y&gt; (or ALL) |
| **Message** | We are investigating an Incident affecting the following Clients/MFCs and Services:<br><br>  <br>**Clients/MFCs**<br><br>&lt;Client A&gt; - MFCs: &lt;MFC ID&gt;, &lt;MFC ID&gt; (or ALL)<br><br>&lt;Client B&gt; - MFCs: &lt;MFC ID&gt;, &lt;MFC ID&gt; (or ALL)<br><br>**Services**  <br>&lt;Service X&gt;<br><br>&lt;Service Y&gt;<br><br>**Root Cause**<br><br>&lt;statement on Root Cause, whether unknown or known&gt;<br><br>**Next Status Update**<br><br>We will provide updates within 30 minutes. | We are investigating issues with Takeoff services at the following MFCs:<br><br>&lt;MFC X&gt;  <br>&lt;MFC Y&gt;<br><br>&lt;ALL&gt;<br><br>  <br>We will provide updates within 30 minutes. |

####   
Email

Email updates should be provided periodically to Incident communications distribution lists that includes internal and external stakeholders.  
  
This email should have similar content as to the Internal Status Page for the Incident. Email allows staff to reply and ask questions, whereas Status Pages are more like one-way broadcast communication.

Always include the Incident’s Issue Key on all internal communications about the Incident, so staff knows how to find out more or join the Incident (remember, the Slack channel is automatically named for the Issue Key).

Incident status email updates should be sent out via email on creation of the Incident and at least every 30 minutes thereafter. (Note: The Zendesk triggers automation we intend to utilize initially for sending email updates has a minimum 60 minute interval, so we will be sending updates at the top of each hour until we can move to an enhanced status update method.)

#### Email Template (to Internal Teams)

##### Via Standard Email

> Subject: &lt;Incident Issue Key&gt; - &lt;Priority&gt; - &lt;Incident Subject&gt; e.g. “MAF-Incident-  
> Body:  
> We are investigating an Incident affecting the following Clients/MFCs and Services:
> 
>   
> **Clients/MFCs**
> 
> &lt;Client A&gt; - MFCs: &lt;MFC ID&gt;, &lt;MFC ID&gt; (or ALL)
> 
> &lt;Client B&gt; - MFCs: &lt;MFC ID&gt;, &lt;MFC ID&gt; (or ALL)
> 
> e.g. “MAF - MFCs: MAF002, MAF003”
> 
> **Services**  
> &lt;Service X&gt;
> 
> &lt;Service Y&gt;
> 
> e.g. “Power loss to the MFC” | “Both Pick Stations non-functional” | “IMS service down”
> 
> **Root Cause**
> 
> e.g. “Is under investigation, has not yet been determined” | “Independent mechanical failures at Pick Stations” | “Defect hit in IMS Service”
> 
> **Next Status Update**
> 
> We will provide updates within 30 minutes.

##### Via Zendesk Automation

> Subject: &lt;Incident Issue Key, e.g. “wakefern-incident-40206”&gt; - {{ticket.priority}} - {{ticket.title}}  
> Body:  
> This is an informational update for an active Incident.
> 
> To comment on the Incident, please do so via the Slack channel: {{slack.channel.url}} or Zendesk: {{ticket.url}}
> 
> Incident Subject
> 
>  {{ticket.title}}
> 
> Incident Description
> 
>  {{ticket.description}}
> 
> The most recent communication
> 
>  {{ticket.latest\_public\_comment}} 
> 
> We will provide updates within 60 minutes.

#### Incident Internal Stakeholders Communications Lists

|     |     |
| --- | --- |
| **Client** | **Internal Comms Distribution List Name** |
| Wakefern | wakefern-account-team-internal@takeoff.com |
| Albertsons | albertsons-account-team-internal@takeoff.com |
| MAF | maf-account-team-internal@takeoff.com |
| Woolworths | woolworths-account-team-internal@takeoff.com |
| Ahold | ahold-account-team-internal@takeoff.com |
| Kroger | kroger-account-team-internal@takeoff.com |
| Loblaws | loblaws-account-team-internal@takeoff.com |
| SMU | smu-account-team-internal@takeoff.com |
| Sedanos | sedanos-account-team-internal@takeoff.com |
| BigY | bigy-account-team-internal@takeoff.com |

#### Email Template (to Clients and Partners)

##### Via Zendesk Automation

> Subject:  {{ticket.id}} {{ticket.title}}  
> Body:  
> You are receiving an informational update for an active Incident.
> 
> If you would like to add a comment, please open the ticket through our web portal, which can be found here  {{ticket.url}}
> 
> The ticket number is {{ticket.id}}
> 
> Incident subject
> 
>  {{ticket.title}}
> 
> Incident Description
> 
>  {{ticket.description}}
> 
> \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
> 
> The most recent communication
> 
>  {{ticket.latest\_public\_comment}} 
> 
> \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
> 
> All communications up to this point
> 
> {{ticket.public_comments}}

#### Incident External Stakeholders Communications Lists

{{< alert color="warning" title="Warning" >}}ONLY WAKEFERN LIST HAS BEEN VERIFIED AND IMPLEMENTED

DO NOT USE ANY OTHER LIST BELOW FOR COMMUNICATIONS AT THIS TIME{{< /alert >}}

|     |     |     |
| --- | --- | --- |
| **Client** | **Comm Method** | **External Stakeholders Comms List** |
| Wakefern | SMS | Elizabeth Goodbread, elizabeth.goodbread@wakefern.com, (551) 232-2323<br>JD Brown, brownj@wakefern.com, (484) 515-8565<br>Steve Henig, steve.henig@wakefern.com, (609) 851-2580<br>Jim Hoyt, james.hoyt@wakefern.com, (551) 208-3533<br>Mellisa Prester, mellisa.prester@wakefern.com, (609) 516-7933<br>Mike Criscuolo, michael.criscuolo@wakefern.com, (732) 682-6437 |
| Albertsons | Email | tangerine-notifications@takeoff.com |
| MAF | Email | maf-notifications@takeoff.com |
| Woolworths | Email | wings-notifications@takeoff.com |
| Ahold | Email | ahold-notifications@takeoff.com |
| Kroger | Email | kroger-notifications@takeoff.com |
| Loblaws | Email | lobster-notifications@takeoff.com |
| SMU | TBD | TBD |
| Sedanos | Email | sunbird-notifications@takeoff.com |
| BigY | Email | bby-notifications@takeoff.com |

### Escalate

As Incident Manager, you have taken command of the Incident, established team communications, assessed the situation, and informed Staff and Clients that an Incident is in progress. What’s next?

Sometimes the first responders to the Incident may be all who are needed in order to resolve the Incident, but more often than not, you need to bring other Teams into the Incident by paging them. This is called _escalation_.

The key system in this step is Opsgenie. Opsgenie allows us to define on-call rosters so that any given Team has a rotation of staff who are expected to be contactable to respond in an Incident. This is superior to needing a specific individual all the time (“get Andrew again”) because individuals won’t always be available (they tend to go on vacation from time to time, change jobs, or burn out when you call them too much). It is also superior to “best efforts” on-call because with defined rotations it’s clear which individuals are responsible for responding.

When escalating to Teams, we should always include the Incident’s Issue Key on the Alert about the Incident. This is the key that the person receiving the Alert uses to join the Incident’s Slack channel.

During an Incident, the Incident Manager will typically ask Technical Support to perform the escalation as they are expert on generating Alerts to teams from Opsgenie. However, the Incident Manager should also know how to generate Opsgenie Alerts and add Responders to existing Alerts as is documented in [Using Opsgenie as an Incident Manager](https://takeofftech.atlassian.net/wiki/spaces/takeoff/pages/2575302714/Using+Opsgenie+as+an+Incident+Manager) and [Useful Opsgenie Slack Integration Commands](https://takeofftech.atlassian.net/wiki/spaces/ARCH/pages/1499496975/Useful+Opsgenie+Slack+Integration+Commands#Generating-Alerts).

### Delegate

{{< alert >}}Historically, Takeoff has not leveraged Role assignment other than the Incident Manager. However, as we grow our business and in turn need to become more mature in our processes to assure higher efficiency, we should look to leverage Role assignment more widely.{{< /alert >}}

{{< alert color="warning" title="Please Note" >}}The Incident Manager should be delegating specific investigative and communicative actions to the Incident Responders and Incident Communication Lead as needed to resolve and inform.  
If an Incident Responder is present but no longer performing any action, nor expected to in any near term, that Responder should be freed to leave the Incident.{{< /alert >}}

After escalating to someone and they join the Incident response, the Incident Manager delegates a role to them. As long as they understand what’s required of their role then they will be able to work quickly and effectively as part of the Incident team. We should train our responders on what the Incident roles are and what they do using a combination of documentation and hands-on “shadowing” experience.

The Incident Manager can also devise and delegate roles as required by the Incident, for example, multiple tech leads if more than one stream of work is underway, or separate internal and external communications managers.

In complicated or large Incidents such as a multiple Client impacting outage of our Cloud Provider's infrastructure, it is advisable to bring on another qualified Incident Manager as a backup “sanity check” for the Incident Manager. The additional Incident Manager can focus on specific tasks that free up the Incident Manager, such as keeping the Incident timeline.

The Slack Channel’s topic should be used to show who is currently in which role, and this must be kept up-to-date if roles change during an Incident. (Note: this has historically not been done due to lack of Roles usage.)

#### Send follow-up communications

{{< alert color="warning" title="Please Note" >}}Currently, our Incident “follow-up communications” mechanism utilizes Zendesk’s capability for sending email updates to those associated with the Zendesk issue or a defined Distribution List for the affected Client. Zendesk uses a templating format as described in [Incident Management | Email-Template-(Clients-and-Partners)](https://takeofftech.atlassian.net/wiki/spaces/EN/pages/1319436323/Incident+Management#Email-Template-(Clients-and-Partners)) and cannot technically adhere to guidance as per below.  
However, we are looking to improve the “follow-up communications” mechanisms in the near future, and those improvements should adhere to good incident communication guidance as per below.{{< /alert >}}

Once the Incident team is rolling we must update staff and Clients on the Incident, and as the Incident progresses you need to keep them looped in. Updating internal staff regularly creates a consistent shared truth about the Incident. When something goes wrong, information is often scarce, especially during the early stages, and if you don’t establish a reliable source of truth about what’s happened and how we’re responding, then people will tend to jump to their own conclusions, which creates confusion.

For our internal communications, we follow this pattern:

* We communicate via our internal Service Status Page and/or via email, as described under “Initial Communications” above.
    
* Use the same convention for Incident name and email subject formatting (&lt;Incident issue key&gt; - &lt;Priority&gt; - &lt;Incident summary&gt;).
    
* Open with a 1-2 sentence summary of the Incident’s current state and impact.
    
* A “Current Status” section with 2-4 bullet points.
    
* A “Next Steps” section with 2-4 bullet points.
    
* State when and where the next round of communications will be sent out.
    

Following this pattern for internal communications makes it easier and more reliable to produce and consume information about Incidents. In an emergency this is important. Before sending, we review the communications for completeness using this checklist:

* Have we described the actual impact on Client(s)?
    
* Did we say how many internal and external clients are affected?
    
* If the root cause is known, what is it?
    
* If there is an ETA for restoration, what is it?
    
* When & where will the next update be?
    

During an Incident, information is often scarce, and it’s important to be clear about what we do and don’t know. Incident Managers should be explicit about unknowns in their internal communications. This reduces uncertainty. For example, if you don’t know what the root cause is yet, it’s far better to say “the root cause is currently unknown” than to simply omit any mention of it. This makes it clear that we don’t know the root cause, as opposed to letting the readers guess (e.g., maybe we do know, but just aren’t saying).

Updating Clients and Partners regularly is important because it builds trust. Even though they might be impacted, at least they know we’re fixing it, and can get on with other things, knowing we’ll keep them up-to-date.

### Resolve

An Incident is resolved when the current or imminent business impact has ended. At that point, the emergency response ends and the team transitions onto any cleanup tasks and the postmortem

Cleanup tasks should be linked and tracked as issue links from the Incident’s Jira Issue.

We should utilize Zendesk and Slacks start-of-impact time, detection time, and end-of-impact time as part of its RCA/postmortem process. This information is used to calculate time-to-recovery (TTR) which is the interval between start and end, and time-to-detect (TTD) which is the interval between the start and detect. The distribution of our the Incident TTD and TTR is often an important business metric.

We send final internal and external communications when the Incident is resolved. The internal communications have a recap of the Incident’s impact and duration, including how many support cases were raised and other important Incident dimensions, and clearly state that the Incident is resolved and there will be no further communications about it. The external communications are usually brief, telling Client(s) that service has been restored and we will follow up with a postmortem.

The final responsibility of the Incident Manager is to get accountability for completion of the postmortem.

Summary of Tools and Usage
--------------------------

### Zendesk

* Client and Partner ticket creation to inform Technical Support of an issue
    
* Communication updates with ticket creator, internal Takeoff teams, and Client & Partners
    

### Slack

* Creation of an Incident specific channel
    
    * Attributes
        
        * Channel naming convention
            
            * Incident Key
                
        * Indicates who has major Incident Roles including Incident Commander
            
        * Indicates Confluence page with Incident details
            
* Slack Bot in Client Prod channel that an Incident is in progress for the Client and how to join
    

### Google Meet

* Incident Command Center
    
    * Opened to facilitate
        
        * Video/Audio Conference Bridge
            
        * Alerting and Escalation
            
        * Automatic Incident Data Gathering
            

### Opsgenie

* Creation of an Incident
    
* Alerting
    
    * Ability to examine at alert streams from outside sources such as Prometheus
        
    * Ability to assign, acknowledge, and escalate Alerts
        
* Services/Teams/On-Call Rotations
    
    * Tying Services to associated Teams
        
    * Tying On-Call Rotations to Teams
        
    * Facilitating escalating to on-call engineers as needed
        

### Jira

* Creation of the Incident Issue used to document the Incident
    
* Creation of an Incident tag (use “issue key” as described above)
    
* Creation of Incident remediation artifacts, e.g. stories for work on mitigations
    

### Service Status Page

{{< alert color="warning" title="Please Note" >}}NOT CURRENTLY UTILIZED BUT PLANNED FOR USE IN NEAR FUTURE{{< /alert >}}