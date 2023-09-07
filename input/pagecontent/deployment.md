The following are deployment options showing how the PDMP FHIR IG can be used to implement the various actors.

#### Deployment Option 1:

In this deployment option, the EHRs, Apps and Clinical Systems act as the PDMP Requesters and interact with Intermediary Gateways that act as the PDMP Responders. The communication is performed using FHIR APIs. In this case the PDMP Requesters are isolated from the State  Systems and the protocols they support.

The Intermediaries may translate the incoming FHIR request for data to a PMIX/NIEM request to comply with existing state interfaces or may use other methods to get the data from the State  systems. All of these interactions are isolated from the PDMP Requester. The Intermediaries may also retrieve data from multiple State  systems simultaneously.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 3: Deployment Option using Intermediaries and PMIX/NIEM</strong></figcaption>
  <img src="dep-option-1.png" style="float:none">  
    </p>
</figure>
</div>


#### Deployment Option 2:

In this deployment option, the EHRs, Apps and Clinical Systems act as the PDMP Requesters and interact with Intermediary Gateways that act as the PDMP Responders. The communication is performed using FHIR APIs. In this case the PDMP Requesters are isolated from the State  Systems and the protocols they support.

The Intermediaries in this case will use FHIR APIs to request data from one or more State  Systems. The advantage here it is the same standard end to end however an Intermediary can provide value added information such as analytics, ability to integrate data from multiple states.

The Intermediary plays the role of PDMP Responder for Transactions 1 and 2 but plays the role of PDMP Requester for Transactions 1a and 1b where the State  Systems play the PDMP Responder role.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 4: Deployment Option using Intermediaries and only FHIR</strong></figcaption>
  <img src="dep-option-2.png" style="float:none">  
    </p>
</figure>
</div>


#### Deployment Option 3:

In this deployment option, the EHRs, Apps and Clinical Systems act as the PDMP Requesters and interact with the State  Systems which act as the PDMP Responders using the FHIR APIs

There are no intermediaries being used in this deployment and State  Systems have to support the necessary FHIR APIs and SMART Backend Authorization protocols.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5: Deployment Option using FHIR and no Intermediaries</strong></figcaption>
  <img src="dep-option-3.png" style="float:none">  
    </p>
</figure>
</div>

 

<br>



