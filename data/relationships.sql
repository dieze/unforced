ALTER TABLE sforce_Account ADD INDEX (ParentId);
ALTER TABLE sforce_Account
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountContactRole ADD INDEX (AccountId);
ALTER TABLE sforce_AccountContactRole
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountHistory ADD INDEX (AccountId);
ALTER TABLE sforce_AccountHistory
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (AccountFromId);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (AccountFromId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (AccountToId);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (AccountToId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountShare ADD INDEX (AccountId);
ALTER TABLE sforce_AccountShare
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (AccountId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Asset ADD INDEX (AccountId);
ALTER TABLE sforce_Asset
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Case ADD INDEX (AccountId);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Contact ADD INDEX (AccountId);
ALTER TABLE sforce_Contact
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Contract ADD INDEX (AccountId);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Event ADD INDEX (AccountId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Lead ADD INDEX (ConvertedAccountId);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (ConvertedAccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (AccountId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (AccountId);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_OpportunityPartner ADD INDEX (AccountToId);
ALTER TABLE sforce_OpportunityPartner
 ADD FOREIGN KEY (AccountToId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Partner ADD INDEX (AccountFromId);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (AccountFromId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Partner ADD INDEX (AccountToId);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (AccountToId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Task ADD INDEX (AccountId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (AccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_UserRole ADD INDEX (PortalAccountId);
ALTER TABLE sforce_UserRole
 ADD FOREIGN KEY (PortalAccountId) REFERENCES sforce_Account (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (ReversePartnerId);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (ReversePartnerId) REFERENCES sforce_AccountPartner (Id);
ALTER TABLE sforce_AsyncApexJob ADD INDEX (ApexClassId);
ALTER TABLE sforce_AsyncApexJob
 ADD FOREIGN KEY (ApexClassId) REFERENCES sforce_ApexClass (Id);
ALTER TABLE sforce_EmailServicesFunction ADD INDEX (ApexClassId);
ALTER TABLE sforce_EmailServicesFunction
 ADD FOREIGN KEY (ApexClassId) REFERENCES sforce_ApexClass (Id);
ALTER TABLE sforce_WebLink ADD INDEX (ScontrolId);
ALTER TABLE sforce_WebLink
 ADD FOREIGN KEY (ScontrolId) REFERENCES sforce_ApexPage (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_Case ADD INDEX (AssetId);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (AssetId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Asset (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (BrandTemplateId);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (BrandTemplateId) REFERENCES sforce_BrandTemplate (Id);
ALTER TABLE sforce_RecordType ADD INDEX (BusinessProcessId);
ALTER TABLE sforce_RecordType
 ADD FOREIGN KEY (BusinessProcessId) REFERENCES sforce_BusinessProcess (Id);
ALTER TABLE sforce_AdditionalNumber ADD INDEX (CallCenterId);
ALTER TABLE sforce_AdditionalNumber
 ADD FOREIGN KEY (CallCenterId) REFERENCES sforce_CallCenter (Id);
ALTER TABLE sforce_User ADD INDEX (CallCenterId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (CallCenterId) REFERENCES sforce_CallCenter (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_Campaign ADD INDEX (ParentId);
ALTER TABLE sforce_Campaign
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_CampaignMember ADD INDEX (CampaignId);
ALTER TABLE sforce_CampaignMember
 ADD FOREIGN KEY (CampaignId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_CampaignMemberStatus ADD INDEX (CampaignId);
ALTER TABLE sforce_CampaignMemberStatus
 ADD FOREIGN KEY (CampaignId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_CampaignShare ADD INDEX (CampaignId);
ALTER TABLE sforce_CampaignShare
 ADD FOREIGN KEY (CampaignId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (CampaignId);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (CampaignId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Campaign (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_Case ADD INDEX (ParentId);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CaseComment ADD INDEX (ParentId);
ALTER TABLE sforce_CaseComment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CaseContactRole ADD INDEX (CasesId);
ALTER TABLE sforce_CaseContactRole
 ADD FOREIGN KEY (CasesId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CaseHistory ADD INDEX (CaseId);
ALTER TABLE sforce_CaseHistory
 ADD FOREIGN KEY (CaseId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CaseShare ADD INDEX (CaseId);
ALTER TABLE sforce_CaseShare
 ADD FOREIGN KEY (CaseId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CaseSolution ADD INDEX (CaseId);
ALTER TABLE sforce_CaseSolution
 ADD FOREIGN KEY (CaseId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Case (Id);
ALTER TABLE sforce_CategoryData ADD INDEX (CategoryNodeId);
ALTER TABLE sforce_CategoryData
 ADD FOREIGN KEY (CategoryNodeId) REFERENCES sforce_CategoryNode (Id);
ALTER TABLE sforce_CategoryNode ADD INDEX (ParentId);
ALTER TABLE sforce_CategoryNode
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_CategoryNode (Id);
ALTER TABLE sforce_Idea ADD INDEX (CommunityId);
ALTER TABLE sforce_Idea
 ADD FOREIGN KEY (CommunityId) REFERENCES sforce_Community (Id);
ALTER TABLE sforce_AccountContactRole ADD INDEX (ContactId);
ALTER TABLE sforce_AccountContactRole
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhoId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Asset ADD INDEX (ContactId);
ALTER TABLE sforce_Asset
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_CampaignMember ADD INDEX (ContactId);
ALTER TABLE sforce_CampaignMember
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Case ADD INDEX (ContactId);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_CaseContactRole ADD INDEX (ContactId);
ALTER TABLE sforce_CaseContactRole
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Contact ADD INDEX (ReportsToId);
ALTER TABLE sforce_Contact
 ADD FOREIGN KEY (ReportsToId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ContactHistory ADD INDEX (ContactId);
ALTER TABLE sforce_ContactHistory
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ContactShare ADD INDEX (ContactId);
ALTER TABLE sforce_ContactShare
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Contract ADD INDEX (CustomerSignedId);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (CustomerSignedId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ContractContactRole ADD INDEX (ContactId);
ALTER TABLE sforce_ContractContactRole
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_EmailStatus ADD INDEX (WhoId);
ALTER TABLE sforce_EmailStatus
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Event ADD INDEX (WhoId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (AttendeeId);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (AttendeeId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Lead ADD INDEX (ConvertedContactId);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (ConvertedContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhoId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_OpportunityContactRole ADD INDEX (ContactId);
ALTER TABLE sforce_OpportunityContactRole
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_SelfServiceUser ADD INDEX (ContactId);
ALTER TABLE sforce_SelfServiceUser
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_Task ADD INDEX (WhoId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_User ADD INDEX (ContactId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (ContactId) REFERENCES sforce_Contact (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_Approval ADD INDEX (ParentId);
ALTER TABLE sforce_Approval
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_ContractContactRole ADD INDEX (ContractId);
ALTER TABLE sforce_ContractContactRole
 ADD FOREIGN KEY (ContractId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_ContractHistory ADD INDEX (ContractId);
ALTER TABLE sforce_ContractHistory
 ADD FOREIGN KEY (ContractId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Contract (Id);
ALTER TABLE sforce_DocumentAttachmentMap ADD INDEX (DocumentId);
ALTER TABLE sforce_DocumentAttachmentMap
 ADD FOREIGN KEY (DocumentId) REFERENCES sforce_Document (Id);
ALTER TABLE sforce_EmailServicesAddress ADD INDEX (FunctionId);
ALTER TABLE sforce_EmailServicesAddress
 ADD FOREIGN KEY (FunctionId) REFERENCES sforce_EmailServicesFunction (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_EmailTemplate (Id);
ALTER TABLE sforce_DocumentAttachmentMap ADD INDEX (ParentId);
ALTER TABLE sforce_DocumentAttachmentMap
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_EmailTemplate (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Event (Id);
ALTER TABLE sforce_Event ADD INDEX (RecurrenceActivityId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (RecurrenceActivityId) REFERENCES sforce_Event (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (EventId);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (EventId) REFERENCES sforce_Event (Id);
ALTER TABLE sforce_Period ADD INDEX (FiscalYearSettingsId);
ALTER TABLE sforce_Period
 ADD FOREIGN KEY (FiscalYearSettingsId) REFERENCES sforce_FiscalYearSettings (Id);
ALTER TABLE sforce_Document ADD INDEX (FolderId);
ALTER TABLE sforce_Document
 ADD FOREIGN KEY (FolderId) REFERENCES sforce_Folder (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (FolderId);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (FolderId) REFERENCES sforce_Folder (Id);
ALTER TABLE sforce_AccountShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_AccountShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_CampaignShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_CampaignShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_CaseShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_CaseShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_ContactShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_ContactShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_ForecastShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_ForecastShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_GroupMember ADD INDEX (GroupId);
ALTER TABLE sforce_GroupMember
 ADD FOREIGN KEY (GroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_GroupMember ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_GroupMember
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_LeadShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_LeadShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_OpportunityShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_OpportunityShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_QueueSobject ADD INDEX (QueueId);
ALTER TABLE sforce_QueueSobject
 ADD FOREIGN KEY (QueueId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_User ADD INDEX (DelegatedApproverId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (DelegatedApproverId) REFERENCES sforce_Group (Id);
ALTER TABLE sforce_IdeaComment ADD INDEX (IdeaId);
ALTER TABLE sforce_IdeaComment
 ADD FOREIGN KEY (IdeaId) REFERENCES sforce_Idea (Id);
ALTER TABLE sforce_Vote ADD INDEX (ParentId);
ALTER TABLE sforce_Vote
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Idea (Id);
ALTER TABLE sforce_Idea ADD INDEX (LastCommentId);
ALTER TABLE sforce_Idea
 ADD FOREIGN KEY (LastCommentId) REFERENCES sforce_IdeaComment (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhoId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_CampaignMember ADD INDEX (LeadId);
ALTER TABLE sforce_CampaignMember
 ADD FOREIGN KEY (LeadId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_EmailStatus ADD INDEX (WhoId);
ALTER TABLE sforce_EmailStatus
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_Event ADD INDEX (WhoId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (AttendeeId);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (AttendeeId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_LeadHistory ADD INDEX (LeadId);
ALTER TABLE sforce_LeadHistory
 ADD FOREIGN KEY (LeadId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_LeadShare ADD INDEX (LeadId);
ALTER TABLE sforce_LeadShare
 ADD FOREIGN KEY (LeadId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhoId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_Task ADD INDEX (WhoId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhoId) REFERENCES sforce_Lead (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (OpportunityId);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Lead ADD INDEX (ConvertedOpportunityId);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (ConvertedOpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityCompetitor ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityCompetitor
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityContactRole ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityContactRole
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityFieldHistory ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityFieldHistory
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityHistory ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityHistory
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityLineItem ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityLineItem
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityPartner ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityPartner
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityShare ADD INDEX (OpportunityId);
ALTER TABLE sforce_OpportunityShare
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Partner ADD INDEX (OpportunityId);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (OpportunityId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Opportunity (Id);
ALTER TABLE sforce_OpportunityPartner ADD INDEX (ReversePartnerId);
ALTER TABLE sforce_OpportunityPartner
 ADD FOREIGN KEY (ReversePartnerId) REFERENCES sforce_OpportunityPartner (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (FolderId);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (FolderId) REFERENCES sforce_Organization (Id);
ALTER TABLE sforce_Group ADD INDEX (OwnerId);
ALTER TABLE sforce_Group
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_Organization (Id);
ALTER TABLE sforce_Partner ADD INDEX (ReversePartnerId);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (ReversePartnerId) REFERENCES sforce_Partner (Id);
ALTER TABLE sforce_FiscalYearSettings ADD INDEX (PeriodId);
ALTER TABLE sforce_FiscalYearSettings
 ADD FOREIGN KEY (PeriodId) REFERENCES sforce_Period (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (Pricebook2Id);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (Pricebook2Id) REFERENCES sforce_Pricebook2 (Id);
ALTER TABLE sforce_PricebookEntry ADD INDEX (Pricebook2Id);
ALTER TABLE sforce_PricebookEntry
 ADD FOREIGN KEY (Pricebook2Id) REFERENCES sforce_Pricebook2 (Id);
ALTER TABLE sforce_OpportunityLineItem ADD INDEX (PricebookEntryId);
ALTER TABLE sforce_OpportunityLineItem
 ADD FOREIGN KEY (PricebookEntryId) REFERENCES sforce_PricebookEntry (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (ProcessInstanceId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (ProcessInstanceId) REFERENCES sforce_ProcessInstance (Id);
ALTER TABLE sforce_ProcessInstanceStep ADD INDEX (ProcessInstanceId);
ALTER TABLE sforce_ProcessInstanceStep
 ADD FOREIGN KEY (ProcessInstanceId) REFERENCES sforce_ProcessInstance (Id);
ALTER TABLE sforce_ProcessInstanceWorkitem ADD INDEX (ProcessInstanceId);
ALTER TABLE sforce_ProcessInstanceWorkitem
 ADD FOREIGN KEY (ProcessInstanceId) REFERENCES sforce_ProcessInstance (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_Asset ADD INDEX (Product2Id);
ALTER TABLE sforce_Asset
 ADD FOREIGN KEY (Product2Id) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_Note ADD INDEX (ParentId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (ParentId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_PricebookEntry ADD INDEX (Product2Id);
ALTER TABLE sforce_PricebookEntry
 ADD FOREIGN KEY (Product2Id) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Product2 (Id);
ALTER TABLE sforce_User ADD INDEX (ProfileId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (ProfileId) REFERENCES sforce_Profile (Id);
ALTER TABLE sforce_WebLink ADD INDEX (ScontrolId);
ALTER TABLE sforce_WebLink
 ADD FOREIGN KEY (ScontrolId) REFERENCES sforce_Scontrol (Id);
ALTER TABLE sforce_AccountHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_AccountHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_Attachment ADD INDEX (CreatedById);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_Attachment ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_CaseComment ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseComment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_CaseComment ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CaseComment
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_CaseHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_ContactHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ContactHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_ContractHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ContractHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_LeadHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_LeadHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_OpportunityFieldHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityFieldHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_SolutionHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_SolutionHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_SelfServiceUser (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (WhatId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_CaseSolution ADD INDEX (SolutionId);
ALTER TABLE sforce_CaseSolution
 ADD FOREIGN KEY (SolutionId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_CategoryData ADD INDEX (RelatedSobjectId);
ALTER TABLE sforce_CategoryData
 ADD FOREIGN KEY (RelatedSobjectId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_Event ADD INDEX (WhatId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (WhatId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (TargetObjectId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (TargetObjectId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_SolutionHistory ADD INDEX (SolutionId);
ALTER TABLE sforce_SolutionHistory
 ADD FOREIGN KEY (SolutionId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_Task ADD INDEX (WhatId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (WhatId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_Vote ADD INDEX (ParentId);
ALTER TABLE sforce_Vote
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Solution (Id);
ALTER TABLE sforce_Attachment ADD INDEX (ParentId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (ParentId) REFERENCES sforce_Task (Id);
ALTER TABLE sforce_EmailStatus ADD INDEX (TaskId);
ALTER TABLE sforce_EmailStatus
 ADD FOREIGN KEY (TaskId) REFERENCES sforce_Task (Id);
ALTER TABLE sforce_Account ADD INDEX (CreatedById);
ALTER TABLE sforce_Account
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Account ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Account
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Account ADD INDEX (OwnerId);
ALTER TABLE sforce_Account
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountContactRole ADD INDEX (CreatedById);
ALTER TABLE sforce_AccountContactRole
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountContactRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_AccountContactRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_AccountHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (CreatedById);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountPartner ADD INDEX (LastModifiedById);
ALTER TABLE sforce_AccountPartner
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_AccountShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AccountShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_AccountShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ActivityHistory ADD INDEX (OwnerId);
ALTER TABLE sforce_ActivityHistory
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AdditionalNumber ADD INDEX (CreatedById);
ALTER TABLE sforce_AdditionalNumber
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AdditionalNumber ADD INDEX (LastModifiedById);
ALTER TABLE sforce_AdditionalNumber
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexClass ADD INDEX (CreatedById);
ALTER TABLE sforce_ApexClass
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexClass ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ApexClass
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexComponent ADD INDEX (CreatedById);
ALTER TABLE sforce_ApexComponent
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexComponent ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ApexComponent
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexPage ADD INDEX (CreatedById);
ALTER TABLE sforce_ApexPage
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexPage ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ApexPage
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexTrigger ADD INDEX (CreatedById);
ALTER TABLE sforce_ApexTrigger
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ApexTrigger ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ApexTrigger
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Approval ADD INDEX (CreatedById);
ALTER TABLE sforce_Approval
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Approval ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Approval
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Approval ADD INDEX (OwnerId);
ALTER TABLE sforce_Approval
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Asset ADD INDEX (CreatedById);
ALTER TABLE sforce_Asset
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Asset ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Asset
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AssignmentRule ADD INDEX (CreatedById);
ALTER TABLE sforce_AssignmentRule
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AssignmentRule ADD INDEX (LastModifiedById);
ALTER TABLE sforce_AssignmentRule
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_AsyncApexJob ADD INDEX (CreatedById);
ALTER TABLE sforce_AsyncApexJob
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Attachment ADD INDEX (CreatedById);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Attachment ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Attachment ADD INDEX (OwnerId);
ALTER TABLE sforce_Attachment
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BrandTemplate ADD INDEX (CreatedById);
ALTER TABLE sforce_BrandTemplate
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BrandTemplate ADD INDEX (LastModifiedById);
ALTER TABLE sforce_BrandTemplate
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BusinessHours ADD INDEX (CreatedById);
ALTER TABLE sforce_BusinessHours
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BusinessHours ADD INDEX (LastModifiedById);
ALTER TABLE sforce_BusinessHours
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BusinessProcess ADD INDEX (CreatedById);
ALTER TABLE sforce_BusinessProcess
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_BusinessProcess ADD INDEX (LastModifiedById);
ALTER TABLE sforce_BusinessProcess
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CallCenter ADD INDEX (CreatedById);
ALTER TABLE sforce_CallCenter
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CallCenter ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CallCenter
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Campaign ADD INDEX (CreatedById);
ALTER TABLE sforce_Campaign
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Campaign ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Campaign
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Campaign ADD INDEX (OwnerId);
ALTER TABLE sforce_Campaign
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignMember ADD INDEX (CreatedById);
ALTER TABLE sforce_CampaignMember
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignMember ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CampaignMember
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignMemberStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_CampaignMemberStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignMemberStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CampaignMemberStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CampaignShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CampaignShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_CampaignShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Case ADD INDEX (CreatedById);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Case ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Case ADD INDEX (OwnerId);
ALTER TABLE sforce_Case
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseComment ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseComment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseComment ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CaseComment
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseContactRole ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseContactRole
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseContactRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CaseContactRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CaseShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_CaseShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseSolution ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseSolution
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_CaseStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CaseStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CaseStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CategoryData ADD INDEX (CreatedById);
ALTER TABLE sforce_CategoryData
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CategoryData ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CategoryData
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CategoryNode ADD INDEX (CreatedById);
ALTER TABLE sforce_CategoryNode
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_CategoryNode ADD INDEX (LastModifiedById);
ALTER TABLE sforce_CategoryNode
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Community ADD INDEX (CreatedById);
ALTER TABLE sforce_Community
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Community ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Community
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contact ADD INDEX (CreatedById);
ALTER TABLE sforce_Contact
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contact ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Contact
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contact ADD INDEX (OwnerId);
ALTER TABLE sforce_Contact
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContactHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ContactHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContactShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ContactShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContactShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_ContactShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contract ADD INDEX (ActivatedById);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (ActivatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contract ADD INDEX (CompanySignedId);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (CompanySignedId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contract ADD INDEX (CreatedById);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contract ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Contract ADD INDEX (OwnerId);
ALTER TABLE sforce_Contract
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContractContactRole ADD INDEX (CreatedById);
ALTER TABLE sforce_ContractContactRole
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContractContactRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ContractContactRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContractHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ContractHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContractStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_ContractStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ContractStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ContractStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Document ADD INDEX (AuthorId);
ALTER TABLE sforce_Document
 ADD FOREIGN KEY (AuthorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Document ADD INDEX (CreatedById);
ALTER TABLE sforce_Document
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Document ADD INDEX (FolderId);
ALTER TABLE sforce_Document
 ADD FOREIGN KEY (FolderId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Document ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Document
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_DocumentAttachmentMap ADD INDEX (CreatedById);
ALTER TABLE sforce_DocumentAttachmentMap
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailServicesAddress ADD INDEX (CreatedById);
ALTER TABLE sforce_EmailServicesAddress
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailServicesAddress ADD INDEX (LastModifiedById);
ALTER TABLE sforce_EmailServicesAddress
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailServicesAddress ADD INDEX (RunAsUserId);
ALTER TABLE sforce_EmailServicesAddress
 ADD FOREIGN KEY (RunAsUserId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailServicesFunction ADD INDEX (CreatedById);
ALTER TABLE sforce_EmailServicesFunction
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailServicesFunction ADD INDEX (LastModifiedById);
ALTER TABLE sforce_EmailServicesFunction
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_EmailStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_EmailStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (CreatedById);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (FolderId);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (FolderId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (LastModifiedById);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EmailTemplate ADD INDEX (OwnerId);
ALTER TABLE sforce_EmailTemplate
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Event ADD INDEX (CreatedById);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Event ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Event ADD INDEX (OwnerId);
ALTER TABLE sforce_Event
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (AttendeeId);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (AttendeeId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (CreatedById);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_EventAttendee ADD INDEX (LastModifiedById);
ALTER TABLE sforce_EventAttendee
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Folder ADD INDEX (CreatedById);
ALTER TABLE sforce_Folder
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Folder ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Folder
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ForecastShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ForecastShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ForecastShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_ForecastShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Group ADD INDEX (CreatedById);
ALTER TABLE sforce_Group
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Group ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Group
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Group ADD INDEX (OwnerId);
ALTER TABLE sforce_Group
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_GroupMember ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_GroupMember
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Idea ADD INDEX (CreatedById);
ALTER TABLE sforce_Idea
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Idea ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Idea
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_IdeaComment ADD INDEX (CreatedById);
ALTER TABLE sforce_IdeaComment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Lead ADD INDEX (CreatedById);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Lead ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Lead ADD INDEX (OwnerId);
ALTER TABLE sforce_Lead
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_LeadHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_LeadHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_LeadShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_LeadShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_LeadShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_LeadShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_LeadStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_LeadStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_LeadStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_LeadStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_MailmergeTemplate ADD INDEX (CreatedById);
ALTER TABLE sforce_MailmergeTemplate
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_MailmergeTemplate ADD INDEX (LastModifiedById);
ALTER TABLE sforce_MailmergeTemplate
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Note ADD INDEX (CreatedById);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Note ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Note ADD INDEX (OwnerId);
ALTER TABLE sforce_Note
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (CreatedById);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (LastModifiedById);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_NoteAndAttachment ADD INDEX (OwnerId);
ALTER TABLE sforce_NoteAndAttachment
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (CreatedById);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpenActivity ADD INDEX (OwnerId);
ALTER TABLE sforce_OpenActivity
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (CreatedById);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Opportunity ADD INDEX (OwnerId);
ALTER TABLE sforce_Opportunity
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityCompetitor ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityCompetitor
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityCompetitor ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityCompetitor
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityContactRole ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityContactRole
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityContactRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityContactRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityFieldHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityFieldHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityLineItem ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityLineItem
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityLineItem ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityLineItem
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityPartner ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityPartner
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityPartner ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityPartner
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityShare ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityShare
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityShare ADD INDEX (UserOrGroupId);
ALTER TABLE sforce_OpportunityShare
 ADD FOREIGN KEY (UserOrGroupId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityStage ADD INDEX (CreatedById);
ALTER TABLE sforce_OpportunityStage
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_OpportunityStage ADD INDEX (LastModifiedById);
ALTER TABLE sforce_OpportunityStage
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Organization ADD INDEX (CreatedById);
ALTER TABLE sforce_Organization
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Organization ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Organization
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Partner ADD INDEX (CreatedById);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Partner ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Partner
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_PartnerRole ADD INDEX (CreatedById);
ALTER TABLE sforce_PartnerRole
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_PartnerRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_PartnerRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Pricebook2 ADD INDEX (CreatedById);
ALTER TABLE sforce_Pricebook2
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Pricebook2 ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Pricebook2
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_PricebookEntry ADD INDEX (CreatedById);
ALTER TABLE sforce_PricebookEntry
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_PricebookEntry ADD INDEX (LastModifiedById);
ALTER TABLE sforce_PricebookEntry
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (CreatedById);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstance ADD INDEX (LastModifiedById);
ALTER TABLE sforce_ProcessInstance
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (ActorId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (ActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceHistory ADD INDEX (OriginalActorId);
ALTER TABLE sforce_ProcessInstanceHistory
 ADD FOREIGN KEY (OriginalActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceStep ADD INDEX (ActorId);
ALTER TABLE sforce_ProcessInstanceStep
 ADD FOREIGN KEY (ActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceStep ADD INDEX (CreatedById);
ALTER TABLE sforce_ProcessInstanceStep
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceStep ADD INDEX (OriginalActorId);
ALTER TABLE sforce_ProcessInstanceStep
 ADD FOREIGN KEY (OriginalActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceWorkitem ADD INDEX (ActorId);
ALTER TABLE sforce_ProcessInstanceWorkitem
 ADD FOREIGN KEY (ActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceWorkitem ADD INDEX (CreatedById);
ALTER TABLE sforce_ProcessInstanceWorkitem
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_ProcessInstanceWorkitem ADD INDEX (OriginalActorId);
ALTER TABLE sforce_ProcessInstanceWorkitem
 ADD FOREIGN KEY (OriginalActorId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Product2 ADD INDEX (CreatedById);
ALTER TABLE sforce_Product2
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Product2 ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Product2
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Profile ADD INDEX (CreatedById);
ALTER TABLE sforce_Profile
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Profile ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Profile
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_QueueSobject ADD INDEX (CreatedById);
ALTER TABLE sforce_QueueSobject
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_RecordType ADD INDEX (CreatedById);
ALTER TABLE sforce_RecordType
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_RecordType ADD INDEX (LastModifiedById);
ALTER TABLE sforce_RecordType
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Scontrol ADD INDEX (CreatedById);
ALTER TABLE sforce_Scontrol
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Scontrol ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Scontrol
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_SelfServiceUser ADD INDEX (CreatedById);
ALTER TABLE sforce_SelfServiceUser
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_SelfServiceUser ADD INDEX (LastModifiedById);
ALTER TABLE sforce_SelfServiceUser
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Solution ADD INDEX (CreatedById);
ALTER TABLE sforce_Solution
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Solution ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Solution
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Solution ADD INDEX (OwnerId);
ALTER TABLE sforce_Solution
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_SolutionHistory ADD INDEX (CreatedById);
ALTER TABLE sforce_SolutionHistory
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_SolutionStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_SolutionStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_SolutionStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_SolutionStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_StaticResource ADD INDEX (CreatedById);
ALTER TABLE sforce_StaticResource
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_StaticResource ADD INDEX (LastModifiedById);
ALTER TABLE sforce_StaticResource
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Task ADD INDEX (CreatedById);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Task ADD INDEX (LastModifiedById);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Task ADD INDEX (OwnerId);
ALTER TABLE sforce_Task
 ADD FOREIGN KEY (OwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_TaskPriority ADD INDEX (CreatedById);
ALTER TABLE sforce_TaskPriority
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_TaskPriority ADD INDEX (LastModifiedById);
ALTER TABLE sforce_TaskPriority
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_TaskStatus ADD INDEX (CreatedById);
ALTER TABLE sforce_TaskStatus
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_TaskStatus ADD INDEX (LastModifiedById);
ALTER TABLE sforce_TaskStatus
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_User ADD INDEX (CreatedById);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_User ADD INDEX (DelegatedApproverId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (DelegatedApproverId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_User ADD INDEX (LastModifiedById);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_User ADD INDEX (ManagerId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (ManagerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_UserPreference ADD INDEX (UserId);
ALTER TABLE sforce_UserPreference
 ADD FOREIGN KEY (UserId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_UserRole ADD INDEX (ForecastUserId);
ALTER TABLE sforce_UserRole
 ADD FOREIGN KEY (ForecastUserId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_UserRole ADD INDEX (LastModifiedById);
ALTER TABLE sforce_UserRole
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_UserRole ADD INDEX (PortalAccountOwnerId);
ALTER TABLE sforce_UserRole
 ADD FOREIGN KEY (PortalAccountOwnerId) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Vote ADD INDEX (CreatedById);
ALTER TABLE sforce_Vote
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_WebLink ADD INDEX (CreatedById);
ALTER TABLE sforce_WebLink
 ADD FOREIGN KEY (CreatedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_WebLink ADD INDEX (LastModifiedById);
ALTER TABLE sforce_WebLink
 ADD FOREIGN KEY (LastModifiedById) REFERENCES sforce_User (Id);
ALTER TABLE sforce_Profile ADD INDEX (UserLicenseId);
ALTER TABLE sforce_Profile
 ADD FOREIGN KEY (UserLicenseId) REFERENCES sforce_UserLicense (Id);
ALTER TABLE sforce_ForecastShare ADD INDEX (UserRoleId);
ALTER TABLE sforce_ForecastShare
 ADD FOREIGN KEY (UserRoleId) REFERENCES sforce_UserRole (Id);
ALTER TABLE sforce_Group ADD INDEX (RelatedId);
ALTER TABLE sforce_Group
 ADD FOREIGN KEY (RelatedId) REFERENCES sforce_UserRole (Id);
ALTER TABLE sforce_Name ADD INDEX (UserRoleId);
ALTER TABLE sforce_Name
 ADD FOREIGN KEY (UserRoleId) REFERENCES sforce_UserRole (Id);
ALTER TABLE sforce_User ADD INDEX (UserRoleId);
ALTER TABLE sforce_User
 ADD FOREIGN KEY (UserRoleId) REFERENCES sforce_UserRole (Id);
ALTER TABLE sforce_UserRole ADD INDEX (ParentRoleId);
ALTER TABLE sforce_UserRole
 ADD FOREIGN KEY (ParentRoleId) REFERENCES sforce_UserRole (Id);
