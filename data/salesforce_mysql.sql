
/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Account
*********************************************************************/

CREATE TABLE sforce_Account(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		MasterRecordId VARCHAR(18),
		Name VARCHAR(255) NOT NULL,
		Type VARCHAR(40),
		ParentId VARCHAR(18),
		BillingStreet VARCHAR(255),
		BillingCity VARCHAR(40),
		BillingState VARCHAR(20),
		BillingPostalCode VARCHAR(20),
		BillingCountry VARCHAR(40),
		ShippingStreet VARCHAR(255),
		ShippingCity VARCHAR(40),
		ShippingState VARCHAR(20),
		ShippingPostalCode VARCHAR(20),
		ShippingCountry VARCHAR(40),
		Phone VARCHAR(40),
		Fax VARCHAR(40),
		AccountNumber VARCHAR(40),
		Website VARCHAR(255),
		Sic VARCHAR(20),
		Industry VARCHAR(80),
		AnnualRevenue INT(18),
		NumberOfEmployees INT,
		Ownership VARCHAR(40),
		TickerSymbol VARCHAR(20),
		Description TEXT,
		Rating VARCHAR(40),
		Site VARCHAR(80),
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE,
		CustomerPriority__c VARCHAR(255),
		SLA__c VARCHAR(255),
		Active__c VARCHAR(255),
		NumberofLocations__c INT(0),
		UpsellOpportunity__c VARCHAR(255),
		SLASerialNumber__c VARCHAR(10),
		SLAExpirationDate__c DATE
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AccountContactRole
*********************************************************************/

CREATE TABLE sforce_AccountContactRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountId VARCHAR(18) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AccountHistory
*********************************************************************/

CREATE TABLE sforce_AccountHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		AccountId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AccountPartner
*********************************************************************/

CREATE TABLE sforce_AccountPartner(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountFromId VARCHAR(18) NOT NULL,
		AccountToId VARCHAR(18),
		OpportunityId VARCHAR(18),
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		ReversePartnerId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AccountShare
*********************************************************************/

CREATE TABLE sforce_AccountShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		AccountAccessLevel VARCHAR(40) NOT NULL,
		OpportunityAccessLevel VARCHAR(40) NOT NULL,
		CaseAccessLevel VARCHAR(40) NOT NULL,
		ContactAccessLevel VARCHAR(40),
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ActivityHistory
*********************************************************************/

CREATE TABLE sforce_ActivityHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountId VARCHAR(18),
		WhoId VARCHAR(18),
		WhatId VARCHAR(18),
		Subject VARCHAR(80),
		IsTask VARCHAR(5) NOT NULL,
		ActivityDate DATE,
		OwnerId VARCHAR(18),
		Status VARCHAR(40),
		Priority VARCHAR(40),
		ActivityType VARCHAR(40),
		IsClosed VARCHAR(5) NOT NULL,
		IsAllDayEvent VARCHAR(5) NOT NULL,
		DurationInMinutes INT,
		Location VARCHAR(80),
		Description TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		CallDurationInSeconds INT,
		CallType VARCHAR(40),
		CallDisposition VARCHAR(255),
		CallObject VARCHAR(255),
		ReminderDateTime DATETIME,
		IsReminderSet VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AdditionalNumber
*********************************************************************/

CREATE TABLE sforce_AdditionalNumber(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		CallCenterId VARCHAR(18),
		Name VARCHAR(80) NOT NULL,
		Description VARCHAR(255),
		Phone VARCHAR(40),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ApexClass
*********************************************************************/

CREATE TABLE sforce_ApexClass(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		NamespacePrefix VARCHAR(15),
		Name VARCHAR(255) NOT NULL,
		ApiVersion INT(0) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		IsValid VARCHAR(5) NOT NULL,
		BodyCrc INT(0),
		Body TEXT,
		LengthWithoutComments INT NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ApexComponent
*********************************************************************/

CREATE TABLE sforce_ApexComponent(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		NamespacePrefix VARCHAR(15),
		Name VARCHAR(80) NOT NULL,
		ApiVersion INT(0) NOT NULL,
		MasterLabel VARCHAR(80) NOT NULL,
		Description TEXT,
		ControllerType VARCHAR(40) NOT NULL,
		ControllerKey VARCHAR(255),
		Markup TEXT NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ApexPage
*********************************************************************/

CREATE TABLE sforce_ApexPage(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		NamespacePrefix VARCHAR(15),
		Name VARCHAR(80) NOT NULL,
		ApiVersion INT(0) NOT NULL,
		MasterLabel VARCHAR(80) NOT NULL,
		Description TEXT,
		ControllerType VARCHAR(40) NOT NULL,
		ControllerKey VARCHAR(255),
		Markup TEXT NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ApexTrigger
*********************************************************************/

CREATE TABLE sforce_ApexTrigger(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		NamespacePrefix VARCHAR(15),
		Name VARCHAR(255) NOT NULL,
		TableEnumOrId VARCHAR(40) NOT NULL,
		UsageBeforeInsert VARCHAR(5) NOT NULL,
		UsageAfterInsert VARCHAR(5) NOT NULL,
		UsageBeforeUpdate VARCHAR(5) NOT NULL,
		UsageAfterUpdate VARCHAR(5) NOT NULL,
		UsageBeforeDelete VARCHAR(5) NOT NULL,
		UsageAfterDelete VARCHAR(5) NOT NULL,
		UsageIsBulk VARCHAR(5) NOT NULL,
		UsageAfterUndelete VARCHAR(5) NOT NULL,
		ApiVersion INT(0) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		IsValid VARCHAR(5) NOT NULL,
		BodyCrc INT(0),
		Body TEXT,
		LengthWithoutComments INT NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Approval
*********************************************************************/

CREATE TABLE sforce_Approval(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ParentId VARCHAR(18) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		RequestComment TEXT,
		ApproveComment TEXT,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Asset
*********************************************************************/

CREATE TABLE sforce_Asset(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ContactId VARCHAR(18),
		AccountId VARCHAR(18),
		Product2Id VARCHAR(18),
		IsCompetitorProduct VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		Name VARCHAR(255) NOT NULL,
		SerialNumber VARCHAR(80),
		InstallDate DATE,
		PurchaseDate DATE,
		UsageEndDate DATE,
		Status VARCHAR(40),
		Price INT(18),
		Quantity INT(0),
		Description TEXT
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AssignmentRule
*********************************************************************/

CREATE TABLE sforce_AssignmentRule(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(120),
		SobjectType VARCHAR(40),
		Active VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_AsyncApexJob
*********************************************************************/

CREATE TABLE sforce_AsyncApexJob(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		JobType VARCHAR(40) NOT NULL,
		ApexClassId VARCHAR(18) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		JobItemsProcessed INT NOT NULL,
		TotalJobItems INT,
		NumberOfErrors INT,
		CompletedDate DATETIME,
		MethodName VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Attachment
*********************************************************************/

CREATE TABLE sforce_Attachment(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ParentId VARCHAR(18) NOT NULL,
		Name VARCHAR(80) NOT NULL,
		IsPrivate VARCHAR(5) NOT NULL,
		ContentType VARCHAR(120),
		BodyLength INT,
		Body BLOB NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_BrandTemplate
*********************************************************************/

CREATE TABLE sforce_BrandTemplate(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(255) NOT NULL,
		DeveloperName VARCHAR(80) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		Description TEXT,
		Value TEXT NOT NULL,
		NamespacePrefix VARCHAR(15),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_BusinessHours
*********************************************************************/

CREATE TABLE sforce_BusinessHours(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		IsDefault VARCHAR(5) NOT NULL,
		SundayStartTime VARCHAR(0),
		SundayEndTime VARCHAR(0),
		MondayStartTime VARCHAR(0),
		MondayEndTime VARCHAR(0),
		TuesdayStartTime VARCHAR(0),
		TuesdayEndTime VARCHAR(0),
		WednesdayStartTime VARCHAR(0),
		WednesdayEndTime VARCHAR(0),
		ThursdayStartTime VARCHAR(0),
		ThursdayEndTime VARCHAR(0),
		FridayStartTime VARCHAR(0),
		FridayEndTime VARCHAR(0),
		SaturdayStartTime VARCHAR(0),
		SaturdayEndTime VARCHAR(0),
		TimeZoneSidKey VARCHAR(40) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_BusinessProcess
*********************************************************************/

CREATE TABLE sforce_BusinessProcess(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		Description VARCHAR(255),
		TableEnumOrId VARCHAR(40) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CallCenter
*********************************************************************/

CREATE TABLE sforce_CallCenter(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		InternalName VARCHAR(255) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Campaign
*********************************************************************/

CREATE TABLE sforce_Campaign(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		Name VARCHAR(80) NOT NULL,
		ParentId VARCHAR(18),
		Type VARCHAR(40),
		Status VARCHAR(40),
		StartDate DATE,
		EndDate DATE,
		ExpectedRevenue INT(18),
		BudgetedCost INT(18),
		ActualCost INT(18),
		ExpectedResponse VARCHAR(0),
		NumberSent INT(0),
		IsActive VARCHAR(5) NOT NULL,
		Description TEXT,
		NumberOfLeads INT NOT NULL,
		NumberOfConvertedLeads INT NOT NULL,
		NumberOfContacts INT NOT NULL,
		NumberOfResponses INT NOT NULL,
		NumberOfOpportunities INT NOT NULL,
		NumberOfWonOpportunities INT NOT NULL,
		AmountAllOpportunities INT(18) NOT NULL,
		AmountWonOpportunities INT(18) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CampaignMember
*********************************************************************/

CREATE TABLE sforce_CampaignMember(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		CampaignId VARCHAR(18) NOT NULL,
		LeadId VARCHAR(18),
		ContactId VARCHAR(18),
		Status VARCHAR(40),
		HasResponded VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		FirstRespondedDate DATE
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CampaignMemberStatus
*********************************************************************/

CREATE TABLE sforce_CampaignMemberStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		CampaignId VARCHAR(18) NOT NULL,
		Label TEXT NOT NULL,
		SortOrder INT NOT NULL,
		IsDefault VARCHAR(5) NOT NULL,
		HasResponded VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CampaignShare
*********************************************************************/

CREATE TABLE sforce_CampaignShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CampaignId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		CampaignAccessLevel VARCHAR(40) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Case
*********************************************************************/

CREATE TABLE sforce_Case(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		CaseNumber VARCHAR(30) NOT NULL,
		ContactId VARCHAR(18),
		AccountId VARCHAR(18),
		AssetId VARCHAR(18),
		ParentId VARCHAR(18),
		SuppliedName VARCHAR(80),
		SuppliedEmail VARCHAR(80),
		SuppliedPhone VARCHAR(40),
		SuppliedCompany VARCHAR(80),
		Type VARCHAR(40),
		Status VARCHAR(40),
		Reason VARCHAR(40),
		Origin VARCHAR(40),
		Subject VARCHAR(255),
		Priority VARCHAR(40),
		Description TEXT,
		IsClosed VARCHAR(5) NOT NULL,
		ClosedDate DATETIME,
		IsEscalated VARCHAR(5) NOT NULL,
		HasCommentsUnreadByOwner VARCHAR(5) NOT NULL,
		HasSelfServiceComments VARCHAR(5) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		EngineeringReqNumber__c VARCHAR(12),
		SLAViolation__c VARCHAR(255),
		Product__c VARCHAR(255),
		PotentialLiability__c VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseComment
*********************************************************************/

CREATE TABLE sforce_CaseComment(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ParentId VARCHAR(18) NOT NULL,
		IsPublished VARCHAR(5) NOT NULL,
		CommentBody TEXT,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseContactRole
*********************************************************************/

CREATE TABLE sforce_CaseContactRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CasesId VARCHAR(18) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseHistory
*********************************************************************/

CREATE TABLE sforce_CaseHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		CaseId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseShare
*********************************************************************/

CREATE TABLE sforce_CaseShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CaseId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		CaseAccessLevel VARCHAR(40) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseSolution
*********************************************************************/

CREATE TABLE sforce_CaseSolution(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CaseId VARCHAR(18) NOT NULL,
		SolutionId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CaseStatus
*********************************************************************/

CREATE TABLE sforce_CaseStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		IsClosed VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CategoryData
*********************************************************************/

CREATE TABLE sforce_CategoryData(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CategoryNodeId VARCHAR(18) NOT NULL,
		RelatedSobjectId VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_CategoryNode
*********************************************************************/

CREATE TABLE sforce_CategoryNode(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ParentId VARCHAR(18),
		MasterLabel VARCHAR(40) NOT NULL,
		SortOrder INT,
		SortStyle VARCHAR(40) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Community
*********************************************************************/

CREATE TABLE sforce_Community(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		SystemModstamp DATETIME NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		Name VARCHAR(80) NOT NULL,
		Description TEXT,
		IsActive VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Contact
*********************************************************************/

CREATE TABLE sforce_Contact(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		MasterRecordId VARCHAR(18),
		AccountId VARCHAR(18),
		LastName VARCHAR(80) NOT NULL,
		FirstName VARCHAR(40),
		Salutation VARCHAR(40),
		Name VARCHAR(121) NOT NULL,
		OtherStreet VARCHAR(255),
		OtherCity VARCHAR(40),
		OtherState VARCHAR(20),
		OtherPostalCode VARCHAR(20),
		OtherCountry VARCHAR(40),
		MailingStreet VARCHAR(255),
		MailingCity VARCHAR(40),
		MailingState VARCHAR(20),
		MailingPostalCode VARCHAR(20),
		MailingCountry VARCHAR(40),
		Phone VARCHAR(40),
		Fax VARCHAR(40),
		MobilePhone VARCHAR(40),
		HomePhone VARCHAR(40),
		OtherPhone VARCHAR(40),
		AssistantPhone VARCHAR(40),
		ReportsToId VARCHAR(18),
		Email VARCHAR(80),
		Title VARCHAR(80),
		Department VARCHAR(80),
		AssistantName VARCHAR(40),
		LeadSource VARCHAR(40),
		Birthdate DATE,
		Description TEXT,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE,
		LastCURequestDate DATETIME,
		LastCUUpdateDate DATETIME,
		EmailBouncedReason VARCHAR(255),
		EmailBouncedDate DATETIME,
		Level__c VARCHAR(255),
		Languages__c VARCHAR(100)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ContactHistory
*********************************************************************/

CREATE TABLE sforce_ContactHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ContactShare
*********************************************************************/

CREATE TABLE sforce_ContactShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ContactId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		ContactAccessLevel VARCHAR(40) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Contract
*********************************************************************/

CREATE TABLE sforce_Contract(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountId VARCHAR(18) NOT NULL,
		OwnerExpirationNotice VARCHAR(40),
		StartDate DATE,
		EndDate DATE,
		BillingStreet VARCHAR(255),
		BillingCity VARCHAR(40),
		BillingState VARCHAR(20),
		BillingPostalCode VARCHAR(20),
		BillingCountry VARCHAR(40),
		ContractTerm INT,
		OwnerId VARCHAR(18) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		CompanySignedId VARCHAR(18),
		CompanySignedDate DATE,
		CustomerSignedId VARCHAR(18),
		CustomerSignedTitle VARCHAR(40),
		CustomerSignedDate DATE,
		SpecialTerms TEXT,
		ActivatedById VARCHAR(18),
		ActivatedDate DATETIME,
		StatusCode VARCHAR(40) NOT NULL,
		Description TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		ContractNumber VARCHAR(30) NOT NULL,
		LastApprovedDate DATETIME,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ContractContactRole
*********************************************************************/

CREATE TABLE sforce_ContractContactRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ContractId VARCHAR(18) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ContractHistory
*********************************************************************/

CREATE TABLE sforce_ContractHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ContractId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ContractStatus
*********************************************************************/

CREATE TABLE sforce_ContractStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		StatusCode VARCHAR(40),
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Document
*********************************************************************/

CREATE TABLE sforce_Document(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		FolderId VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		Name VARCHAR(255) NOT NULL,
		ContentType VARCHAR(120),
		Type VARCHAR(40),
		IsPublic VARCHAR(5) NOT NULL,
		BodyLength INT NOT NULL,
		Body BLOB,
		Url VARCHAR(255),
		Description VARCHAR(255),
		Keywords VARCHAR(255),
		IsInternalUseOnly VARCHAR(5) NOT NULL,
		AuthorId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_DocumentAttachmentMap
*********************************************************************/

CREATE TABLE sforce_DocumentAttachmentMap(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ParentId VARCHAR(18) NOT NULL,
		DocumentId VARCHAR(18) NOT NULL,
		DocumentSequence INT NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_EmailServicesAddress
*********************************************************************/

CREATE TABLE sforce_EmailServicesAddress(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsActive VARCHAR(5) NOT NULL,
		LocalPart VARCHAR(64) NOT NULL,
		EmailDomainName VARCHAR(255),
		AuthorizedSenders TEXT,
		RunAsUserId VARCHAR(18) NOT NULL,
		FunctionId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_EmailServicesFunction
*********************************************************************/

CREATE TABLE sforce_EmailServicesFunction(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsActive VARCHAR(5) NOT NULL,
		FunctionName VARCHAR(64) NOT NULL,
		AuthorizedSenders TEXT,
		IsAuthenticationRequired VARCHAR(5) NOT NULL,
		IsTlsRequired VARCHAR(5) NOT NULL,
		AttachmentOption VARCHAR(40) NOT NULL,
		ApexClassId VARCHAR(18),
		OverLimitAction VARCHAR(40),
		FunctionInactiveAction VARCHAR(40),
		AddressInactiveAction VARCHAR(40),
		AuthenticationFailureAction VARCHAR(40),
		AuthorizationFailureAction VARCHAR(40),
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_EmailStatus
*********************************************************************/

CREATE TABLE sforce_EmailStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		TaskId VARCHAR(18) NOT NULL,
		WhoId VARCHAR(18),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		TimesOpened INT NOT NULL,
		FirstOpenDate DATETIME,
		LastOpenDate DATETIME,
		EmailTemplateName VARCHAR(80)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_EmailTemplate
*********************************************************************/

CREATE TABLE sforce_EmailTemplate(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		FolderId VARCHAR(18) NOT NULL,
		BrandTemplateId VARCHAR(18),
		TemplateStyle VARCHAR(40) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		TemplateType VARCHAR(40) NOT NULL,
		Encoding VARCHAR(40),
		Description TEXT,
		Subject VARCHAR(255),
		HtmlValue TEXT,
		Body TEXT,
		TimesUsed INT,
		LastUsedDate DATETIME,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Event
*********************************************************************/

CREATE TABLE sforce_Event(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		WhoId VARCHAR(18),
		WhatId VARCHAR(18),
		Subject VARCHAR(80),
		Location VARCHAR(80),
		IsAllDayEvent VARCHAR(5) NOT NULL,
		ActivityDateTime DATETIME,
		ActivityDate DATE,
		DurationInMinutes INT,
		StartDateTime DATETIME,
		EndDateTime DATETIME,
		Description TEXT,
		AccountId VARCHAR(18),
		OwnerId VARCHAR(18) NOT NULL,
		IsPrivate VARCHAR(5) NOT NULL,
		ShowAs VARCHAR(40),
		IsDeleted VARCHAR(5) NOT NULL,
		IsChild VARCHAR(5) NOT NULL,
		IsGroupEvent VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsArchived VARCHAR(5) NOT NULL,
		RecurrenceActivityId VARCHAR(18),
		IsRecurrence VARCHAR(5) NOT NULL,
		RecurrenceStartDateTime DATETIME,
		RecurrenceEndDateOnly DATE,
		RecurrenceTimeZoneSidKey VARCHAR(40),
		RecurrenceType VARCHAR(40),
		RecurrenceInterval INT,
		RecurrenceDayOfWeekMask INT,
		RecurrenceDayOfMonth INT,
		RecurrenceInstance VARCHAR(40),
		RecurrenceMonthOfYear VARCHAR(40),
		ReminderDateTime DATETIME,
		IsReminderSet VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_EventAttendee
*********************************************************************/

CREATE TABLE sforce_EventAttendee(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		EventId VARCHAR(18) NOT NULL,
		AttendeeId VARCHAR(18) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		RespondedDate DATETIME,
		Response VARCHAR(255),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_FiscalYearSettings
*********************************************************************/

CREATE TABLE sforce_FiscalYearSettings(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		PeriodId VARCHAR(18),
		StartDate DATE,
		EndDate DATE,
		Name VARCHAR(80) NOT NULL,
		IsStandardYear VARCHAR(5) NOT NULL,
		YearType VARCHAR(40),
		QuarterLabelScheme VARCHAR(40),
		PeriodLabelScheme VARCHAR(40),
		WeekLabelScheme VARCHAR(40),
		QuarterPrefix VARCHAR(40),
		PeriodPrefix VARCHAR(40),
		WeekStartDay INT,
		Description VARCHAR(255),
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Folder
*********************************************************************/

CREATE TABLE sforce_Folder(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(40) NOT NULL,
		DeveloperName VARCHAR(80),
		AccessType VARCHAR(40) NOT NULL,
		IsReadonly VARCHAR(5) NOT NULL,
		Type VARCHAR(40) NOT NULL,
		NamespacePrefix VARCHAR(15),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ForecastShare
*********************************************************************/

CREATE TABLE sforce_ForecastShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		UserRoleId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		AccessLevel VARCHAR(40) NOT NULL,
		CanSubmit VARCHAR(5) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Group
*********************************************************************/

CREATE TABLE sforce_Group(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(40) NOT NULL,
		RelatedId VARCHAR(18),
		Type VARCHAR(40) NOT NULL,
		Email VARCHAR(255),
		OwnerId VARCHAR(18) NOT NULL,
		DoesSendEmailToMembers VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_GroupMember
*********************************************************************/

CREATE TABLE sforce_GroupMember(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		GroupId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Idea
*********************************************************************/

CREATE TABLE sforce_Idea(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		CommunityId VARCHAR(18),
		SystemModstamp DATETIME NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		Title VARCHAR(255) NOT NULL,
		Body TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		NumComments INT,
		VoteScore INT(0),
		VoteTotal INT(0),
		LastCommentDate DATETIME,
		LastCommentId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_IdeaComment
*********************************************************************/

CREATE TABLE sforce_IdeaComment(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IdeaId VARCHAR(18) NOT NULL,
		CommentBody TEXT,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Lead
*********************************************************************/

CREATE TABLE sforce_Lead(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		MasterRecordId VARCHAR(18),
		LastName VARCHAR(80) NOT NULL,
		FirstName VARCHAR(40),
		Salutation VARCHAR(40),
		Name VARCHAR(121) NOT NULL,
		Title VARCHAR(80),
		Company VARCHAR(255) NOT NULL,
		Street VARCHAR(255),
		City VARCHAR(40),
		State VARCHAR(20),
		PostalCode VARCHAR(20),
		Country VARCHAR(40),
		Phone VARCHAR(40),
		MobilePhone VARCHAR(40),
		Fax VARCHAR(40),
		Email VARCHAR(80),
		Website VARCHAR(255),
		Description TEXT,
		LeadSource VARCHAR(40),
		Status VARCHAR(40) NOT NULL,
		Industry VARCHAR(40),
		Rating VARCHAR(40),
		AnnualRevenue INT(18),
		NumberOfEmployees INT,
		OwnerId VARCHAR(18) NOT NULL,
		IsConverted VARCHAR(5) NOT NULL,
		ConvertedDate DATE,
		ConvertedAccountId VARCHAR(18),
		ConvertedContactId VARCHAR(18),
		ConvertedOpportunityId VARCHAR(18),
		IsUnreadByOwner VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE,
		EmailBouncedReason VARCHAR(255),
		EmailBouncedDate DATETIME,
		SICCode__c VARCHAR(15),
		ProductInterest__c VARCHAR(255),
		Primary__c VARCHAR(255),
		CurrentGenerators__c VARCHAR(100),
		NumberofLocations__c INT(0)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_LeadHistory
*********************************************************************/

CREATE TABLE sforce_LeadHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		LeadId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_LeadShare
*********************************************************************/

CREATE TABLE sforce_LeadShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		LeadId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		LeadAccessLevel VARCHAR(40) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_LeadStatus
*********************************************************************/

CREATE TABLE sforce_LeadStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		IsConverted VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_MailmergeTemplate
*********************************************************************/

CREATE TABLE sforce_MailmergeTemplate(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		Name VARCHAR(80) NOT NULL,
		Description VARCHAR(255),
		Filename VARCHAR(255) NOT NULL,
		BodyLength INT,
		Body BLOB NOT NULL,
		LastUsedDate DATETIME,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Name
*********************************************************************/

CREATE TABLE sforce_Name(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(255),
		LastName VARCHAR(80),
		FirstName VARCHAR(40),
		Type VARCHAR(40),
		Alias VARCHAR(8),
		UserRoleId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Note
*********************************************************************/

CREATE TABLE sforce_Note(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ParentId VARCHAR(18) NOT NULL,
		Title VARCHAR(80) NOT NULL,
		IsPrivate VARCHAR(5) NOT NULL,
		Body TEXT,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_NoteAndAttachment
*********************************************************************/

CREATE TABLE sforce_NoteAndAttachment(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		IsNote VARCHAR(5) NOT NULL,
		ParentId VARCHAR(18) NOT NULL,
		Title VARCHAR(80),
		IsPrivate VARCHAR(5) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpenActivity
*********************************************************************/

CREATE TABLE sforce_OpenActivity(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		AccountId VARCHAR(18),
		WhoId VARCHAR(18),
		WhatId VARCHAR(18),
		Subject VARCHAR(80),
		IsTask VARCHAR(5) NOT NULL,
		ActivityDate DATE,
		OwnerId VARCHAR(18),
		Status VARCHAR(40),
		Priority VARCHAR(40),
		ActivityType VARCHAR(40),
		IsClosed VARCHAR(5) NOT NULL,
		IsAllDayEvent VARCHAR(5) NOT NULL,
		DurationInMinutes INT,
		Location VARCHAR(80),
		Description TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		CallDurationInSeconds INT,
		CallType VARCHAR(40),
		CallDisposition VARCHAR(255),
		CallObject VARCHAR(255),
		ReminderDateTime DATETIME,
		IsReminderSet VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Opportunity
*********************************************************************/

CREATE TABLE sforce_Opportunity(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		AccountId VARCHAR(18),
		IsPrivate VARCHAR(5) NOT NULL,
		Name VARCHAR(120) NOT NULL,
		Description TEXT,
		StageName VARCHAR(40) NOT NULL,
		Amount INT(18),
		Probability VARCHAR(0),
		ExpectedRevenue INT(18),
		TotalOpportunityQuantity INT(0),
		CloseDate DATE NOT NULL,
		Type VARCHAR(40),
		NextStep VARCHAR(255),
		LeadSource VARCHAR(40),
		IsClosed VARCHAR(5) NOT NULL,
		IsWon VARCHAR(5) NOT NULL,
		ForecastCategory VARCHAR(40) NOT NULL,
		ForecastCategoryName VARCHAR(40),
		CampaignId VARCHAR(18),
		HasOpportunityLineItem VARCHAR(5) NOT NULL,
		Pricebook2Id VARCHAR(18),
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		LastActivityDate DATE,
		FiscalQuarter INT,
		FiscalYear INT,
		Fiscal VARCHAR(6) NOT NULL,
		DeliveryInstallationStatus__c VARCHAR(255),
		TrackingNumber__c VARCHAR(12),
		OrderNumber__c VARCHAR(8),
		CurrentGenerators__c VARCHAR(100),
		MainCompetitors__c VARCHAR(100)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityCompetitor
*********************************************************************/

CREATE TABLE sforce_OpportunityCompetitor(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		CompetitorName VARCHAR(40),
		Strengths TEXT,
		Weaknesses TEXT,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityContactRole
*********************************************************************/

CREATE TABLE sforce_OpportunityContactRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityFieldHistory
*********************************************************************/

CREATE TABLE sforce_OpportunityFieldHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		OpportunityId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityHistory
*********************************************************************/

CREATE TABLE sforce_OpportunityHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		StageName VARCHAR(40) NOT NULL,
		Amount INT(18),
		ExpectedRevenue INT(18),
		CloseDate DATE,
		Probability VARCHAR(0),
		ForecastCategory VARCHAR(40),
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityLineItem
*********************************************************************/

CREATE TABLE sforce_OpportunityLineItem(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		SortOrder INT,
		PricebookEntryId VARCHAR(18),
		Quantity INT(0) NOT NULL,
		TotalPrice INT(18),
		UnitPrice INT(18),
		ListPrice INT(18),
		ServiceDate DATE,
		Description VARCHAR(255),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityPartner
*********************************************************************/

CREATE TABLE sforce_OpportunityPartner(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		AccountToId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		ReversePartnerId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityShare
*********************************************************************/

CREATE TABLE sforce_OpportunityShare(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18) NOT NULL,
		UserOrGroupId VARCHAR(18) NOT NULL,
		OpportunityAccessLevel VARCHAR(40) NOT NULL,
		RowCause VARCHAR(40) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_OpportunityStage
*********************************************************************/

CREATE TABLE sforce_OpportunityStage(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		IsActive VARCHAR(5) NOT NULL,
		SortOrder INT,
		IsClosed VARCHAR(5) NOT NULL,
		IsWon VARCHAR(5) NOT NULL,
		ForecastCategory VARCHAR(40) NOT NULL,
		ForecastCategoryName VARCHAR(40) NOT NULL,
		DefaultProbability VARCHAR(0),
		Description VARCHAR(255),
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Organization
*********************************************************************/

CREATE TABLE sforce_Organization(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		Division VARCHAR(80),
		Street VARCHAR(255),
		City VARCHAR(40),
		State VARCHAR(20),
		PostalCode VARCHAR(20),
		Country VARCHAR(40),
		Phone VARCHAR(40),
		Fax VARCHAR(40),
		PrimaryContact VARCHAR(80),
		DefaultLocaleSidKey VARCHAR(40) NOT NULL,
		LanguageLocaleKey VARCHAR(40) NOT NULL,
		ReceivesInfoEmails VARCHAR(5) NOT NULL,
		ReceivesAdminInfoEmails VARCHAR(5) NOT NULL,
		PreferencesRequireOpportunityProducts VARCHAR(5) NOT NULL,
		FiscalYearStartMonth INT,
		UsesStartDateAsFiscalYearName VARCHAR(5) NOT NULL,
		DefaultAccountAccess VARCHAR(40),
		DefaultContactAccess VARCHAR(40),
		DefaultOpportunityAccess VARCHAR(40),
		DefaultLeadAccess VARCHAR(40),
		DefaultCaseAccess VARCHAR(40),
		DefaultCalendarAccess VARCHAR(40),
		DefaultPricebookAccess VARCHAR(40),
		DefaultCampaignAccess VARCHAR(40),
		MaxRulesPerEntity INT,
		MaxActionsPerRule INT,
		SystemModstamp DATETIME NOT NULL,
		ComplianceBccEmail VARCHAR(80),
		UiSkin VARCHAR(40),
		TrialExpirationDate DATETIME,
		OrganizationType VARCHAR(40),
		WebToCaseDefaultOrigin VARCHAR(40),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Partner
*********************************************************************/

CREATE TABLE sforce_Partner(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		OpportunityId VARCHAR(18),
		AccountFromId VARCHAR(18),
		AccountToId VARCHAR(18) NOT NULL,
		Role VARCHAR(40),
		IsPrimary VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		ReversePartnerId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_PartnerRole
*********************************************************************/

CREATE TABLE sforce_PartnerRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		ReverseRole VARCHAR(40),
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Period
*********************************************************************/

CREATE TABLE sforce_Period(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		FiscalYearSettingsId VARCHAR(18),
		Type VARCHAR(40),
		StartDate DATE NOT NULL,
		EndDate DATE NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsForecastPeriod VARCHAR(5) NOT NULL,
		QuarterLabel VARCHAR(40),
		PeriodLabel VARCHAR(40),
		Number INT
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Pricebook2
*********************************************************************/

CREATE TABLE sforce_Pricebook2(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(40) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsStandard VARCHAR(5) NOT NULL,
		Description VARCHAR(255),
		LastModifiedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_PricebookEntry
*********************************************************************/

CREATE TABLE sforce_PricebookEntry(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(255),
		Pricebook2Id VARCHAR(18) NOT NULL,
		Product2Id VARCHAR(18) NOT NULL,
		UnitPrice INT(18) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		UseStandardPrice VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		ProductCode VARCHAR(255),
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ProcessInstance
*********************************************************************/

CREATE TABLE sforce_ProcessInstance(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		TargetObjectId VARCHAR(18) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ProcessInstanceHistory
*********************************************************************/

CREATE TABLE sforce_ProcessInstanceHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsPending VARCHAR(5) NOT NULL,
		ProcessInstanceId VARCHAR(18) NOT NULL,
		TargetObjectId VARCHAR(18),
		StepStatus VARCHAR(40),
		OriginalActorId VARCHAR(18) NOT NULL,
		ActorId VARCHAR(18) NOT NULL,
		RemindersSent INT,
		Comments TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ProcessInstanceStep
*********************************************************************/

CREATE TABLE sforce_ProcessInstanceStep(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ProcessInstanceId VARCHAR(18) NOT NULL,
		StepStatus VARCHAR(40),
		OriginalActorId VARCHAR(18) NOT NULL,
		ActorId VARCHAR(18) NOT NULL,
		Comments TEXT,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_ProcessInstanceWorkitem
*********************************************************************/

CREATE TABLE sforce_ProcessInstanceWorkitem(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		ProcessInstanceId VARCHAR(18) NOT NULL,
		OriginalActorId VARCHAR(18) NOT NULL,
		ActorId VARCHAR(18) NOT NULL,
		IsDeleted VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Product2
*********************************************************************/

CREATE TABLE sforce_Product2(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(255) NOT NULL,
		ProductCode VARCHAR(255),
		Description TEXT,
		IsActive VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		Family VARCHAR(40),
		IsDeleted VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Profile
*********************************************************************/

CREATE TABLE sforce_Profile(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(255) NOT NULL,
		PermissionsEditTask VARCHAR(5) NOT NULL,
		PermissionsEditEvent VARCHAR(5) NOT NULL,
		PermissionsManageUsers VARCHAR(5) NOT NULL,
		PermissionsModifyAllData VARCHAR(5) NOT NULL,
		PermissionsManageCases VARCHAR(5) NOT NULL,
		PermissionsManageSolutions VARCHAR(5) NOT NULL,
		PermissionsCustomizeApplication VARCHAR(5) NOT NULL,
		PermissionsEditReadonlyFields VARCHAR(5) NOT NULL,
		PermissionsRunReports VARCHAR(5) NOT NULL,
		PermissionsViewSetup VARCHAR(5) NOT NULL,
		PermissionsTransferAnyEntity VARCHAR(5) NOT NULL,
		PermissionsManageSelfService VARCHAR(5) NOT NULL,
		PermissionsManageCssUsers VARCHAR(5) NOT NULL,
		PermissionsImportLeads VARCHAR(5) NOT NULL,
		PermissionsManageLeads VARCHAR(5) NOT NULL,
		PermissionsTransferAnyLead VARCHAR(5) NOT NULL,
		PermissionsViewAllData VARCHAR(5) NOT NULL,
		PermissionsEditPublicDocuments VARCHAR(5) NOT NULL,
		PermissionsManageDashboards VARCHAR(5) NOT NULL,
		PermissionsSendSitRequests VARCHAR(5) NOT NULL,
		PermissionsManageCategories VARCHAR(5) NOT NULL,
		PermissionsConvertLeads VARCHAR(5) NOT NULL,
		PermissionsPasswordNeverExpires VARCHAR(5) NOT NULL,
		PermissionsUseTeamReassignWizards VARCHAR(5) NOT NULL,
		PermissionsInstallMultiforce VARCHAR(5) NOT NULL,
		PermissionsPublishMultiforce VARCHAR(5) NOT NULL,
		PermissionsEditOppLineItemUnitPrice VARCHAR(5) NOT NULL,
		PermissionsCreateMultiforce VARCHAR(5) NOT NULL,
		PermissionsSolutionImport VARCHAR(5) NOT NULL,
		PermissionsManageCallCenters VARCHAR(5) NOT NULL,
		PermissionsEditReports VARCHAR(5) NOT NULL,
		PermissionsAuthorApex VARCHAR(5) NOT NULL,
		PermissionsManageMobile VARCHAR(5) NOT NULL,
		PermissionsApiEnabled VARCHAR(5) NOT NULL,
		PermissionsManageCustomReportTypes VARCHAR(5) NOT NULL,
		PermissionsManageAnalyticSnapshots VARCHAR(5) NOT NULL,
		PermissionsCustomSidebarOnAllPages VARCHAR(5) NOT NULL,
		PermissionsDisableNotifications VARCHAR(5) NOT NULL,
		UserLicenseId VARCHAR(18) NOT NULL,
		UserType VARCHAR(40),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		Description VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_QueueSobject
*********************************************************************/

CREATE TABLE sforce_QueueSobject(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		QueueId VARCHAR(18) NOT NULL,
		SobjectType VARCHAR(40) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_RecordType
*********************************************************************/

CREATE TABLE sforce_RecordType(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		Description VARCHAR(255),
		BusinessProcessId VARCHAR(18),
		SobjectType VARCHAR(40) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Scontrol
*********************************************************************/

CREATE TABLE sforce_Scontrol(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(80) NOT NULL,
		DeveloperName VARCHAR(80) NOT NULL,
		Description VARCHAR(255),
		EncodingKey VARCHAR(40) NOT NULL,
		HtmlWrapper TEXT NOT NULL,
		Filename VARCHAR(255),
		BodyLength INT NOT NULL,
		Binary__ch BLOB,
		ContentSource VARCHAR(40),
		SupportsCaching VARCHAR(5) NOT NULL,
		NamespacePrefix VARCHAR(15),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_SelfServiceUser
*********************************************************************/

CREATE TABLE sforce_SelfServiceUser(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		LastName VARCHAR(80) NOT NULL,
		FirstName VARCHAR(40),
		Name VARCHAR(121) NOT NULL,
		Username VARCHAR(80) NOT NULL,
		Email VARCHAR(80) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		TimeZoneSidKey VARCHAR(40) NOT NULL,
		LocaleSidKey VARCHAR(40) NOT NULL,
		ContactId VARCHAR(18) NOT NULL,
		LanguageLocaleKey VARCHAR(40) NOT NULL,
		SuperUser VARCHAR(5) NOT NULL,
		LastLoginDate DATETIME,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Solution
*********************************************************************/

CREATE TABLE sforce_Solution(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		SolutionNumber VARCHAR(30) NOT NULL,
		SolutionName VARCHAR(255) NOT NULL,
		IsPublished VARCHAR(5) NOT NULL,
		IsPublishedInPublicKb VARCHAR(5) NOT NULL,
		Status VARCHAR(40) NOT NULL,
		IsReviewed VARCHAR(5) NOT NULL,
		SolutionNote TEXT,
		OwnerId VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		TimesUsed INT NOT NULL,
		IsHtml VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_SolutionHistory
*********************************************************************/

CREATE TABLE sforce_SolutionHistory(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		SolutionId VARCHAR(18) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		Field VARCHAR(255) NOT NULL,
		OldValue VARCHAR(255),
		NewValue VARCHAR(255)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_SolutionStatus
*********************************************************************/

CREATE TABLE sforce_SolutionStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		IsReviewed VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_StaticResource
*********************************************************************/

CREATE TABLE sforce_StaticResource(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		NamespacePrefix VARCHAR(15),
		Name VARCHAR(255) NOT NULL,
		ContentType VARCHAR(120) NOT NULL,
		BodyLength INT NOT NULL,
		Body BLOB,
		Description VARCHAR(255),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Task
*********************************************************************/

CREATE TABLE sforce_Task(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		WhoId VARCHAR(18),
		WhatId VARCHAR(18),
		Subject VARCHAR(80),
		ActivityDate DATE,
		Status VARCHAR(40) NOT NULL,
		Priority VARCHAR(40) NOT NULL,
		OwnerId VARCHAR(18) NOT NULL,
		Description TEXT,
		IsDeleted VARCHAR(5) NOT NULL,
		AccountId VARCHAR(18),
		IsClosed VARCHAR(5) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		IsArchived VARCHAR(5) NOT NULL,
		CallDurationInSeconds INT,
		CallType VARCHAR(40),
		CallDisposition VARCHAR(255),
		CallObject VARCHAR(255),
		ReminderDateTime DATETIME,
		IsReminderSet VARCHAR(5) NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_TaskPriority
*********************************************************************/

CREATE TABLE sforce_TaskPriority(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		IsHighPriority VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_TaskStatus
*********************************************************************/

CREATE TABLE sforce_TaskStatus(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		MasterLabel VARCHAR(255),
		SortOrder INT,
		IsDefault VARCHAR(5) NOT NULL,
		IsClosed VARCHAR(5) NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_User
*********************************************************************/

CREATE TABLE sforce_User(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Username VARCHAR(80) NOT NULL,
		LastName VARCHAR(80) NOT NULL,
		FirstName VARCHAR(40),
		Name VARCHAR(121) NOT NULL,
		CompanyName VARCHAR(80),
		Division VARCHAR(80),
		Department VARCHAR(80),
		Title VARCHAR(80),
		Street VARCHAR(255),
		City VARCHAR(40),
		State VARCHAR(20),
		PostalCode VARCHAR(20),
		Country VARCHAR(40),
		Email VARCHAR(80) NOT NULL,
		Phone VARCHAR(40),
		Fax VARCHAR(40),
		MobilePhone VARCHAR(40),
		Alias VARCHAR(8) NOT NULL,
		IsActive VARCHAR(5) NOT NULL,
		TimeZoneSidKey VARCHAR(40) NOT NULL,
		UserRoleId VARCHAR(18),
		LocaleSidKey VARCHAR(40) NOT NULL,
		ReceivesInfoEmails VARCHAR(5) NOT NULL,
		ReceivesAdminInfoEmails VARCHAR(5) NOT NULL,
		EmailEncodingKey VARCHAR(40) NOT NULL,
		ProfileId VARCHAR(18) NOT NULL,
		UserType VARCHAR(40),
		LanguageLocaleKey VARCHAR(40) NOT NULL,
		EmployeeNumber VARCHAR(20),
		DelegatedApproverId VARCHAR(18),
		ManagerId VARCHAR(18),
		LastLoginDate DATETIME,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		OfflineTrialExpirationDate DATETIME,
		OfflinePdaTrialExpirationDate DATETIME,
		UserPermissionsMarketingUser VARCHAR(5) NOT NULL,
		UserPermissionsOfflineUser VARCHAR(5) NOT NULL,
		UserPermissionsCallCenterAutoLogin VARCHAR(5) NOT NULL,
		UserPermissionsMobileUser VARCHAR(5) NOT NULL,
		ForecastEnabled VARCHAR(5) NOT NULL,
		UserPreferencesActivityRemindersPopup VARCHAR(5) NOT NULL,
		UserPreferencesEventRemindersCheckboxDefault VARCHAR(5) NOT NULL,
		UserPreferencesTaskRemindersCheckboxDefault VARCHAR(5) NOT NULL,
		UserPreferencesReminderSoundOff VARCHAR(5) NOT NULL,
		UserPreferencesApexPagesDeveloperMode VARCHAR(5) NOT NULL,
		ContactId VARCHAR(18),
		CallCenterId VARCHAR(18),
		Extension VARCHAR(40)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_UserLicense
*********************************************************************/

CREATE TABLE sforce_UserLicense(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		LicenseDefinitionKey VARCHAR(40) NOT NULL,
		Name VARCHAR(40) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_UserPreference
*********************************************************************/

CREATE TABLE sforce_UserPreference(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		UserId VARCHAR(18) NOT NULL,
		Preference VARCHAR(40) NOT NULL,
		Value TEXT,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_UserRole
*********************************************************************/

CREATE TABLE sforce_UserRole(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		Name VARCHAR(40) NOT NULL,
		ParentRoleId VARCHAR(18),
		RollupDescription VARCHAR(80),
		OpportunityAccessForAccountOwner VARCHAR(40) NOT NULL,
		CaseAccessForAccountOwner VARCHAR(40),
		ContactAccessForAccountOwner VARCHAR(40),
		ForecastUserId VARCHAR(18),
		MayForecastManagerShare VARCHAR(5) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL,
		PortalAccountId VARCHAR(18),
		PortalType VARCHAR(40),
		PortalAccountOwnerId VARCHAR(18)
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_Vote
*********************************************************************/

CREATE TABLE sforce_Vote(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		IsDeleted VARCHAR(5) NOT NULL,
		ParentId VARCHAR(18) NOT NULL,
		Type VARCHAR(40) NOT NULL,
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;


/********************************************************************
         TABLE FROM SALESFORCE.COM OBJECT sforce_WebLink
*********************************************************************/

CREATE TABLE sforce_WebLink(
		Id VARCHAR(18) NOT NULL PRIMARY KEY,
		PageOrSobjectType VARCHAR(40) NOT NULL,
		Name VARCHAR(240) NOT NULL,
		Url TEXT,
		EncodingKey VARCHAR(40) NOT NULL,
		LinkType VARCHAR(40) NOT NULL,
		OpenType VARCHAR(40) NOT NULL,
		Height INT,
		Width INT,
		ShowsLocation VARCHAR(5) NOT NULL,
		HasScrollbars VARCHAR(5) NOT NULL,
		HasToolbar VARCHAR(5) NOT NULL,
		HasMenubar VARCHAR(5) NOT NULL,
		ShowsStatus VARCHAR(5) NOT NULL,
		IsResizable VARCHAR(5) NOT NULL,
		Position VARCHAR(40),
		ScontrolId VARCHAR(18),
		MasterLabel VARCHAR(240),
		Description TEXT,
		DisplayType VARCHAR(40) NOT NULL,
		RequireRowSelection VARCHAR(5) NOT NULL,
		NamespacePrefix VARCHAR(15),
		CreatedDate DATETIME NOT NULL,
		CreatedById VARCHAR(18) NOT NULL,
		LastModifiedDate DATETIME NOT NULL,
		LastModifiedById VARCHAR(18) NOT NULL,
		SystemModstamp DATETIME NOT NULL
	)TYPE=InnoDB;

