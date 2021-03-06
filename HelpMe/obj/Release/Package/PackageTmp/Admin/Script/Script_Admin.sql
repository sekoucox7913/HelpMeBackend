Create Database [RentTrack_Admin]
GO
USE [RentTrack_Admin]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_Company]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] DROP CONSTRAINT [FK_UserMaster_Company]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_UserRole]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] DROP CONSTRAINT [FK_UserMaster_UserRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_UserMaster]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserMaster_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_UserMaster_Select]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[vwUserGet]'))
DROP VIEW [vwUserGet]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[vwUserRoleGet]'))
DROP VIEW [vwUserRoleGet]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSCredit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_SMSCredit]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_SMSSettings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_UserRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRole_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_UserRole_Select]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRoleRights]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_UserRoleRights]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_Company]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_Company_Select]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_EmailSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_EmailSettings]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_Company]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] DROP CONSTRAINT [FK_UserMaster_Company]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_UserRole]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] DROP CONSTRAINT [FK_UserMaster_UserRole]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_UserFullName]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_UserFullName]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_Address1]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_Address1]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_Address2]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_Address2]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_CityName]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_CityName]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_StateName]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_StateName]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_POBox]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_POBox]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_Country]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_Country]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_ContactNo]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_ContactNo]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_CreatedOn]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserMaster_EmailId]') AND type = 'D')
BEGIN
ALTER TABLE [UserMaster] DROP CONSTRAINT [DF_UserMaster_EmailId]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserMaster]') AND type in (N'U'))
DROP TABLE [UserMaster]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserRole_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [UserRole] DROP CONSTRAINT [DF_UserRole_CreatedOn]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserRole_CompanyId]') AND type = 'D')
BEGIN
ALTER TABLE [UserRole] DROP CONSTRAINT [DF_UserRole_CompanyId]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserRole]') AND type in (N'U'))
DROP TABLE [UserRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserRoleRights]') AND type in (N'U'))
DROP TABLE [UserRoleRights]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_GetData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_GetData]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company_Search]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_Company_Search]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_CompanyName]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_CompanyName]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_ContactPerson]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_ContactPerson]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_Address]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_Address]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_Town]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_Town]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_POBox]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_POBox]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_POBoxCode]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_POBoxCode]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_MobileNo]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_MobileNo]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_ContactNo]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_ContactNo]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_EmailId]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_EmailId]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_Description]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_Description]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_CreatedOn]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_CreatedOn]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Company_DeletedOn]') AND type = 'D')
BEGIN
ALTER TABLE [Company] DROP CONSTRAINT [DF_Company_DeletedOn]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Company]') AND type in (N'U'))
DROP TABLE [Company]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DefaultFo__Creat__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [DefaultForms] DROP CONSTRAINT [DF__DefaultFo__Creat__4D94879B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DefaultForms]') AND type in (N'U'))
DROP TABLE [DefaultForms]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EmailSettings]') AND type in (N'U'))
DROP TABLE [EmailSettings]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSCredit__Credi__23F3538A]') AND type = 'D')
BEGIN
ALTER TABLE [SMSCredit] DROP CONSTRAINT [DF__SMSCredit__Credi__23F3538A]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSCredit__Descr__24E777C3]') AND type = 'D')
BEGIN
ALTER TABLE [SMSCredit] DROP CONSTRAINT [DF__SMSCredit__Descr__24E777C3]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSCredit__Creat__25DB9BFC]') AND type = 'D')
BEGIN
ALTER TABLE [SMSCredit] DROP CONSTRAINT [DF__SMSCredit__Creat__25DB9BFC]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSCredit__Delet__26CFC035]') AND type = 'D')
BEGIN
ALTER TABLE [SMSCredit] DROP CONSTRAINT [DF__SMSCredit__Delet__26CFC035]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SMSCredit]') AND type in (N'U'))
DROP TABLE [SMSCredit]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSSettin__Compa__1A69E950]') AND type = 'D')
BEGIN
ALTER TABLE [SMSSettings] DROP CONSTRAINT [DF__SMSSettin__Compa__1A69E950]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSSettin__Total__1B5E0D89]') AND type = 'D')
BEGIN
ALTER TABLE [SMSSettings] DROP CONSTRAINT [DF__SMSSettin__Total__1B5E0D89]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SMSSettin__Sende__1C5231C2]') AND type = 'D')
BEGIN
ALTER TABLE [SMSSettings] DROP CONSTRAINT [DF__SMSSettin__Sende__1C5231C2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SMSSettings]') AND type in (N'U'))
DROP TABLE [SMSSettings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Split]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSCredit_Search]') AND type in (N'P', N'PC'))
DROP PROCEDURE [usp_SMSCredit_Search]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSCredit_Search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [usp_SMSCredit_Search]  
	@CompanyId As Varchar(Max) = ''0'',   
	@Search As nvarchar(Max) = ''''  
As  
Begin  
	If @Search = ''''  
		Set @Search = ''1 = 1''  
	If @CompanyId = ''0''  
		Set @CompanyId = ''%''  
  
	Exec (''Select SMSCredit.SMSCreditId, SMSCredit.CreditNoteNo, SMSCredit.TransactionDate, SMSCredit.CompanyId, Company.CompanyName, SMSCredit.Quantity, SMSCredit.RatePerSMS,   
			Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) As GrossAmount, SMSCredit.TaxPercent,   
			Convert(decimal(18, 2), ((Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) * SMSCredit.TaxPercent) / 100)) As TaxAmount,      
			Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) +   
			Convert(decimal(18, 2), ((Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) * SMSCredit.TaxPercent) / 100)) As TotalAmount,   
			SMSCredit.Description, SMSCredit.CreatedOn  
		From SMSCredit Inner Join Company On SMSCredit.CompanyId = Company.CompanyId  
		Where Isnull(SMSCredit.CompanyId, 0) Like '''''' + @CompanyId + '''''' And SMSCredit.DeletedOn Is Null And '' + @Search)  
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create Function [Split](
	@String varchar(Max), 
	@Delimiter char(1))     
Returns @temptable TABLE 
(
items varchar(Max)
)     
As
Begin
	Declare @idx As Int
	Declare @slice As Varchar(Max)     
	Select @idx = 1     
	if len(@String) < 1 or @String is null  
		Return     
    
	While @idx!= 0     
	Begin     
		set @idx = charindex(@Delimiter,@String)     
		if @idx!=0     
			set @slice = left(@String,@idx - 1)     
		else     
			set @slice = @String     
		
		if(len(@slice)>0)
			insert into @temptable(Items) values(@slice)     

		set @String = right(@String,len(@String) - @idx)     
		if len(@String) = 0 break     
	End 
	Return     
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SMSSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [SMSSettings](
	[SMSSettingsId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL DEFAULT ((0)),
	[UserName] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[TotalSMS] [bigint] NOT NULL DEFAULT ((0)),
	[SenderId] [varchar](max) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_SMSSettings] PRIMARY KEY CLUSTERED 
(
	[SMSSettingsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SMSCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [SMSCredit](
	[SMSCreditId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[CreditNoteNo] [nvarchar](max) NOT NULL DEFAULT (''),
	[TransactionDate] [datetime] NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[RatePerSMS] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL DEFAULT (''),
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[DeletedOn] [datetime] NULL DEFAULT (NULL)
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EmailSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [EmailSettings](
	[EmailSettingsId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[SMTPUserName] [nvarchar](max) NOT NULL,
	[SMTPPassword] [nvarchar](max) NOT NULL,
	[SMTPServer] [nvarchar](max) NOT NULL,
	[SMTPPort] [int] NOT NULL,
	[EnableSSL] [bit] NOT NULL,
 CONSTRAINT [PK_EmailSettings] PRIMARY KEY CLUSTERED 
(
	[EmailSettingsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DefaultForms]') AND type in (N'U'))
BEGIN
CREATE TABLE [DefaultForms](
	[FormId] [bigint] IDENTITY(1,1) NOT NULL,
	[FormName] [nvarchar](max) NOT NULL,
	[FormHRef] [nvarchar](max) NOT NULL,
	[IconPath] [nvarchar](max) NOT NULL,
	[IsPage] [int] NOT NULL,
	[IsActive] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[ModifiedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_DefaultForms] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [Company](
	[CompanyId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL CONSTRAINT [DF_Company_CompanyName]  DEFAULT (''),
	[ContactPerson] [nvarchar](max) NOT NULL CONSTRAINT [DF_Company_ContactPerson]  DEFAULT (''),
	[Address] [nvarchar](max) NULL CONSTRAINT [DF_Company_Address]  DEFAULT (''),
	[Town] [nvarchar](max) NULL CONSTRAINT [DF_Company_Town]  DEFAULT (''),
	[POBox] [nvarchar](max) NULL CONSTRAINT [DF_Company_POBox]  DEFAULT (''),
	[POBoxCode] [nvarchar](max) NULL CONSTRAINT [DF_Company_POBoxCode]  DEFAULT (''),
	[MobileNo] [nvarchar](max) NOT NULL CONSTRAINT [DF_Company_MobileNo]  DEFAULT (''),
	[ContactNo] [nvarchar](max) NULL CONSTRAINT [DF_Company_ContactNo]  DEFAULT (''),
	[EmailId] [nvarchar](max) NULL CONSTRAINT [DF_Company_EmailId]  DEFAULT (''),
	[Description] [nvarchar](max) NULL CONSTRAINT [DF_Company_Description]  DEFAULT (''),
	[ServerName] [varchar](max) NOT NULL CONSTRAINT [DF_Company_ServerName]  DEFAULT (''),
	[AuthType] [int] NOT NULL CONSTRAINT [DF_Company_AuthType]  DEFAULT (0),
	[DatabaseName] [varchar](max) NOT NULL CONSTRAINT [DF_Company_DatabaseName]  DEFAULT (''),
	[UserName] [varchar](max) NOT NULL CONSTRAINT [DF_Company_UserName]  DEFAULT (''),
	[UserPassword] [varchar](max) NOT NULL CONSTRAINT [DF_Company_UserPassword]  DEFAULT (''),
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Company_CreatedOn]  DEFAULT (getdate()),
	[DeletedOn] [datetime] NULL CONSTRAINT [DF_Company_DeletedOn]  DEFAULT (NULL),
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company_Search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [usp_Company_Search]
	@Search As nvarchar(Max) = ''''
As
Begin
	If @Search = ''''
		Set @Search = ''1 = 1''

	Exec (''Select CompanyId, CompanyName, ContactPerson, Address, Town, POBox, POBoxCode, MobileNo, ContactNo, EmailId, Description, CreatedOn, DeletedOn,
				ServerName, AuthType, DatabaseName, UserName, UserPassword
			From Company Where Company.DeletedOn Is Null And '' + @Search)
End

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_GetData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_GetData]  
(
	@ViewName Varchar(Max),
	@FieldName Varchar(Max)= Null
)
As
Begin
	Set NoCount On;
	If @FieldName is null
		Begin
			Exec (''Select * From '' + @ViewName)  
		End
	Else
		Begin
			Exec (''Select '' +  @FieldName + '' From '' + @ViewName)  
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserRoleRights]') AND type in (N'U'))
BEGIN
CREATE TABLE [UserRoleRights](
	[UserRoleId] [bigint] NOT NULL,
	[FormId] [int] NOT NULL,
	[IsView] [int] NOT NULL,
	[IsSave] [int] NOT NULL,
	[IsUpdate] [int] NOT NULL,
	[IsDelete] [int] NOT NULL,
	[IsExport] [int] NOT NULL,
 CONSTRAINT [PK_UserRoleRights] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC,
	[FormId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [UserRole](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserRoleName] [nvarchar](max) NOT NULL,
	[IsActive] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_UserRole_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL,
	[CompanyId] [bigint] NOT NULL CONSTRAINT [DF_UserRole_CompanyId]  DEFAULT ((0)),
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[UserMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [UserMaster](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserRoleId] [bigint] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserType] [int] NOT NULL,
	[TenantId] [bigint] NULL,
	[CompanyId] [bigint] NULL,
	[UserFullName] [nvarchar](max) NOT NULL CONSTRAINT [DF_UserMaster_UserFullName]  DEFAULT (''),
	[Address1] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_Address1]  DEFAULT (''),
	[Address2] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_Address2]  DEFAULT (''),
	[CityName] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_CityName]  DEFAULT (''),
	[StateName] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_StateName]  DEFAULT (''),
	[POBox] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_POBox]  DEFAULT (''),
	[Country] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_Country]  DEFAULT (''),
	[ContactNo] [nvarchar](max) NULL CONSTRAINT [DF_UserMaster_ContactNo]  DEFAULT (''),
	[IsActive] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_UserMaster_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL,
	[EmailId] [varchar](max) NULL CONSTRAINT [DF_UserMaster_EmailId]  DEFAULT (''),
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_EmailSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [usp_EmailSettings]  
	@CompanyId As bigint = 0,  
	@SMTPUserName As nvarchar(max) = '''',  
	@SMTPPassword As nvarchar(max) = '''',  
	@SMTPServer As nvarchar(max) = '''',  
	@SMTPPort As int = 0,  
	@EnableSSL As bit = 0,  
	@Return_Value As BigInt = 0 Output   
As  
Begin  
	If Exists(Select 1 From EmailSettings Where CompanyId = @CompanyId)
		Begin  
			Update EmailSettings Set   
				SMTPUserName = @SMTPUserName, SMTPPassword = @SMTPPassword, SMTPServer = @SMTPServer,   
				SMTPPort = @SMTPPort, EnableSSL = @EnableSSL
			Where CompanyId = @CompanyId  
			
			Select @Return_Value = Isnull(EmailSettingsId, 0) From EmailSettings  
		End  
	Else  
		Begin  
			Insert Into EmailSettings  
			(CompanyId, SMTPUserName, SMTPPassword, SMTPServer, SMTPPort, EnableSSL)  
			Values  
			(@CompanyId, @SMTPUserName, @SMTPPassword, @SMTPServer, @SMTPPort, @EnableSSL)  
     
			Set @Return_Value = Scope_Identity()     
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [usp_Company_Select]
	@Opr As nvarchar(Max) = '''',  
	@CompanyName As nvarchar(Max) = '''',  
	@CompanyId As BigInt = 0  
As  
Begin  
	If @Opr = ''CheckName''  
		Begin  
			Select CompanyId From Company Where Isnull(Company.CompanyName, '''') = @CompanyName And CompanyId <> @CompanyId  
		End  
	Else If @Opr = ''GD''  
		Begin  
			Select CompanyId As [Value], Isnull(Company.CompanyName, '''') As [Text]  
			From Company Where DeletedOn Is Null  
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_Company]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_Company]
	@CompanyId As bigint = 0,
	@CompanyName As nvarchar(Max) = '''', 
	@ContactPerson As nvarchar(Max) = '''', 
	@Address As nvarchar(Max) = '''', 
	@Town As nvarchar(Max) = '''', 
	@POBox As nvarchar(Max) = '''', 
	@POBoxCode As nvarchar(Max) = '''', 
	@MobileNo As nvarchar(Max) = '''', 
	@ContactNo As nvarchar(Max) = '''', 
	@EmailId As nvarchar(Max) = '''', 
	@Description As nvarchar(Max) = '''',
	@ServerName As varchar(Max) = '''',
	@AuthType As int = 0,
	@DatabaseName As varchar(Max) = '''',
	@UserName As varchar(Max) = '''',
	@UserPassword As varchar(Max) = '''',	
	@Opr As Varchar(Max),
	@ReturnValue As BigInt = 0 Output 
As
Begin
	If @Opr = ''I''
		Begin
			Insert Into Company
			(CompanyName, ContactPerson, Address, Town, POBox, POBoxCode, MobileNo, ContactNo, EmailId, Description, CreatedOn, 
				ServerName, AuthType, DatabaseName, UserName, UserPassword)
			Values
			(@CompanyName, @ContactPerson, @Address, @Town, @POBox, @POBoxCode, @MobileNo, @ContactNo, @EmailId, @Description, GetDate(),
				@ServerName, @AuthType, @DatabaseName, @UserName, @UserPassword)
			
			Set @ReturnValue = Scope_Identity()			
		End
	Else If @Opr = ''U''
		Begin
			Update Company Set 
				CompanyName = @CompanyName, ContactPerson = @ContactPerson, Address = @Address, Town = @Town, POBox = @POBox, POBoxCode = @POBoxCode, 
				MobileNo = @MobileNo, ContactNo = @ContactNo, EmailId = @EmailId, Description = @Description
			Where (CompanyId = @CompanyId)
			
			Set @ReturnValue = @CompanyId
		End
	Else If @Opr = ''D''
		Begin
			Update Company Set DeletedOn = GetDate() Where CompanyId = @CompanyId  
			Set @ReturnValue = @CompanyId
		End
	Else If @Opr = ''G''
		Begin
			Select Company.CompanyId, Company.CompanyName, Company.ContactPerson, Company.Address, Company.Town, Company.POBox, Company.POBoxCode, 			
				Company.MobileNo, Company.ContactNo, Company.EmailId, Company.Description, Company.CreatedOn,
				Company.ServerName, Company.AuthType, Company.DatabaseName, Company.UserName, Company.UserPassword
			From Company Where Company.CompanyId = @CompanyId And Company.DeletedOn Is Null
		End
End

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRoleRights]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_UserRoleRights] 
	@UserRoleId BigInt,
	@FormId Int,
	@IsView Int = 0,
	@IsSave Int = 0,
	@IsUpdate Int = 0,
	@IsDelete Int = 0,
	@IsExport Int = 0,
	@Op As nVarchar(Max)
AS
BEGIN
	If @Op = ''I''
		Begin
			Insert Into UserRoleRights (UserRoleId, FormId, IsView, IsSave, IsUpdate, IsDelete, IsExport)
			Values (@UserRoleId, @FormId, @IsView, @IsSave, @IsUpdate, @IsDelete, @IsExport)
		End
	ELSE If @Op = ''U''
		Begin
			Update UserRoleRights Set IsView = @IsView, IsSave = @IsSave, 
				IsUpdate = @IsUpdate, IsDelete = @IsDelete, IsExport = @IsExport
			Where UserRoleId = @UserRoleId And FormId = @FormId
		End
	ELSE If @Op = ''G''
		Begin
			Select * From vwUserRoleRightsGet Where UserRoleId = @UserRoleId
		End
End

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRole_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_UserRole_Select]
	@Op As nvarchar(Max) = '''',
	@UserRoleName As nvarchar(Max) = '''',
	@UserRoleId As BigInt = 0,
	@Search As nvarchar(Max) = ''''
As
Begin
	If @Search = ''''
		Set @Search = ''1 = 1''

	If @Op = ''CheckNameInsert''
		Begin
			Select UserRoleId From UserRole Where UserRoleName = @UserRoleName
		End
	Else If @Op = ''CheckNameUpdate''
		Begin
			Select UserRoleId From UserRole Where UserRoleName = @UserRoleName And UserRoleId <> @UserRoleId	
		End
	Else If @Op = ''GD''
		Begin
			Exec (''Select UserRoleId As [Value], [User Role] As [Text] From vwUserRoleGet Where '' +  @Search + '' Order By [User Role] Asc'')
		End
	Else If @Op = ''Select''
		Begin
			Exec (''Select UserRoleId, [User Role], Status, CreatedOn, ModifiedOn, DeletedOn From vwUserRoleGet Where '' +  @Search + '' Order By [User Role] Asc'')
		End
	Else If @Op = ''UR''
		Begin
			Exec (''Select * From vwUserRoleGet Where '' +  @Search)
		End
End
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_UserRole]
	@UserRoleId As bigint = 0,
	@CompanyId As bigint = 0,
	@UserRoleName As nvarchar(Max) = '''', 
	@IsActive As int = 1,
	@Op As Varchar(Max),
	@ReturnValue As BigInt = 0 Output 
As
Begin
	If @Op = ''I''
		Begin
			Insert Into UserRole
            (CompanyId, UserRoleName, IsActive, CreatedOn, ModifiedOn, DeletedOn)
			Values
			(@CompanyId, @UserRoleName, @IsActive, GetDate(), Null, Null)
			
			Set @ReturnValue = Scope_Identity()			
		End
	Else If @Op = ''U''
		Begin
			Update UserRole Set CompanyId = @CompanyId, UserRoleName = @UserRoleName, IsActive = @IsActive, ModifiedOn = GetDate()
			Where UserRoleId = @UserRoleId
			Set @ReturnValue = @UserRoleId
		End
	Else If @Op = ''D''
		Begin
			Update UserRole Set DeletedOn = GetDate() Where UserRoleId = @UserRoleId
			Set @ReturnValue = @UserRoleId
		End
	Else If @Op = ''G''
		Begin
			Select CompanyId, UserRoleId, UserRoleName, IsActive, CreatedOn, ModifiedOn, DeletedOn
			From UserRole Where UserRoleId = @UserRoleId
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [usp_SMSSettings]      
	@SMSSettingsId As bigint = 0,      
	@CompanyId As BigInt = 0,  
	@UserName As nvarchar(max) = '''',      
	@UserPassword As nvarchar(max) = '''',  
	@SenderId As nvarchar(max) = '''',          
	@Return_Value As BigInt = 0 Output       
As      
Begin      
	If Exists(Select 1 From SMSSettings Where CompanyId = @CompanyId)  
		Begin      
			Update SMSSettings Set UserName = @UserName, UserPassword = @UserPassword, SenderId = @SenderId Where CompanyId = @CompanyId  
			Select @Return_Value = Isnull(SMSSettingsId, 0) From SMSSettings      
		End      
	Else      
		Begin      
			Insert Into SMSSettings (CompanyId, UserName, UserPassword, SenderId)  
			Values (@CompanyId, @UserName, @UserPassword, @SenderId)
         
			Set @Return_Value = Scope_Identity()         
		End    
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_SMSCredit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [usp_SMSCredit]
	@SMSCreditId As bigint = 0,
	@CreditNoteNo As nvarchar(Max) = '''',
	@TransactionDate As varchar(Max) = '''',
	@CompanyId As bigint = 0,
	@Quantity As decimal(18, 2) = 0,
	@RatePerSMS As decimal(18, 2) = 0,
	@TaxPercent As decimal(18, 2) = 0,
	@Description As nvarchar(Max) = '''',
	@Opr As Varchar(Max),
	@Return_Value As BigInt = 0 Output 
As
Begin
	Declare @OldQuantity As decimal(18, 2) = 0
	Declare @OldCompanyId As Bigint = 0			
	If @Opr = ''I''
		Begin
			Insert Into SMSCredit
			(CreditNoteNo, TransactionDate, CompanyId, Quantity, RatePerSMS, TaxPercent, Description, CreatedOn)
			Values
			(@CreditNoteNo, @TransactionDate, @CompanyId, @Quantity, @RatePerSMS, @TaxPercent, @Description, GetDate())
			
			Update SMSSettings Set TotalSMS = TotalSMS + @Quantity Where CompanyId = @CompanyId
			
			Set @Return_Value = Scope_Identity()			
		End
	Else If @Opr = ''U''
		Begin
			Select @OldQuantity = Isnull(Quantity, 0), @OldCompanyId = ISNULL(CompanyId, 0) 
			From SMSCredit Where (SMSCreditId = @SMSCreditId)
						
			Update SMSSettings Set TotalSMS = TotalSMS - @OldQuantity Where CompanyId = @OldCompanyId
			
			Update SMSCredit Set 
				CreditNoteNo = @CreditNoteNo, TransactionDate = @TransactionDate, CompanyId = @CompanyId, Quantity = @Quantity, 
				RatePerSMS = @RatePerSMS, TaxPercent = @TaxPercent, Description = @Description
			Where (SMSCreditId = @SMSCreditId)
			
			Update SMSSettings Set TotalSMS = TotalSMS + @Quantity Where CompanyId = @CompanyId
			
			Set @Return_Value = @SMSCreditId
		End
	Else If @Opr = ''D''
		Begin
			Select @OldQuantity = Isnull(Quantity, 0), @OldCompanyId = ISNULL(CompanyId, 0) 
			From SMSCredit Where (SMSCreditId = @SMSCreditId)
						
			Update SMSSettings Set TotalSMS = TotalSMS - @OldQuantity Where CompanyId = @OldCompanyId			
			
			Update SMSCredit Set DeletedOn = GetDate() Where SMSCreditId = @SMSCreditId  
			Set @Return_Value = @SMSCreditId
		End
	Else If @Opr = ''G''
		Begin
			Select SMSCredit.SMSCreditId, SMSCredit.CreditNoteNo, SMSCredit.TransactionDate, SMSCredit.CompanyId, Company.CompanyName, SMSCredit.Quantity, SMSCredit.RatePerSMS, 
				Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) As GrossAmount, SMSCredit.TaxPercent, 
				Convert(decimal(18, 2), ((Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) * SMSCredit.TaxPercent) / 100)) As TaxAmount,				
				Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) + 
				Convert(decimal(18, 2), ((Convert(decimal(18, 2), (SMSCredit.Quantity * SMSCredit.RatePerSMS)) * SMSCredit.TaxPercent) / 100)) As TotalAmount, 
				SMSCredit.Description, SMSCredit.CreatedOn
			From SMSCredit Inner Join Company On SMSCredit.CompanyId = Company.CompanyId
			Where SMSCredit.SMSCreditId = @SMSCreditId And SMSCredit.DeletedOn Is Null
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[vwUserRoleGet]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [vwUserRoleGet]
AS
SELECT     UserRoleId, UserRoleName AS [User Role], CASE IsActive WHEN 1 THEN ''Active'' WHEN 0 THEN ''InActive'' END AS Status, CreatedOn, ModifiedOn, DeletedOn, 
                      IsActive, CompanyId
FROM         dbo.UserRole
WHERE     (DeletedOn IS NULL)


'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[vwUserGet]'))
EXEC dbo.sp_executesql @statement = N'
CREATE View [vwUserGet] As 
Select dbo.UserMaster.UserId, dbo.UserMaster.UserRoleId, dbo.UserRole.UserRoleName AS [User Role], dbo.UserMaster.UserName AS [User Name], dbo.UserMaster.UserPassword, 
	CASE dbo.UserMaster.UserType 
		WHEN 1 THEN ''Admin Panel'' 
		WHEN 2 THEN ''Landlord'' 
		WHEN 3 THEN ''Tenant'' 
		WHEN 4 THEN ''Broker'' 
		WHEN 5 THEN ''Employee'' 
		WHEN 6 Then ''Company Admin'' 
	Else ''General'' END AS [User Type], 
	CASE dbo.UserMaster.IsActive WHEN 1 THEN ''Active'' WHEN 0 THEN ''InActive'' END AS Status, dbo.UserMaster.CreatedOn, dbo.UserMaster.ModifiedOn, 
	dbo.UserMaster.DeletedOn, dbo.UserMaster.UserType, dbo.UserMaster.IsActive, Isnull(dbo.UserMaster.TenantId, 0) As TenantId, Isnull(dbo.UserMaster.CompanyId, 0) As CompanyId
From dbo.UserMaster 
	INNER JOIN dbo.UserRole ON dbo.UserMaster.UserRoleId = dbo.UserRole.UserRoleId 
Where dbo.UserMaster.DeletedOn Is Null'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserMaster_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[usp_UserMaster_Select]
	@Op As nvarchar(Max) = '''',
	@UserName As nvarchar(Max) = '''',
	@UserId As BigInt = 0,
	@Search As nvarchar(Max) = ''''
As
Begin
	If @Search = ''''
		Set @Search = ''1 = 1''

	If @Op = ''CheckNameInsert''
		Begin
			Select UserId From UserMaster Where UserName = @UserName
		End
	Else If @Op = ''CheckNameUpdate''
		Begin
			Select UserId From UserMaster Where UserName = @UserName And UserId <> @UserId	
		End
	Else If @Op = ''GD''
		Begin
			Exec (''Select UserId As [Value], [User Name] As [Text] From vwUserGet Where '' +  @Search + '' Order By [User Name] Asc'')
		End
	Else If @Op = ''Select''
		Begin
			Exec (''Select UserMaster.UserId, UserMaster.UserRoleId, dbo.UserRole.UserRoleName AS [User Role], dbo.UserMaster.UserName AS [User Name], dbo.UserMaster.UserPassword, 
				UserMaster.UserType, 
				CASE dbo.UserMaster.UserType 
					WHEN 1 THEN ''''Admin Panel'''' 
					WHEN 2 THEN ''''Landlord'''' 
					WHEN 3 THEN ''''Tenant'''' 
					WHEN 4 THEN ''''Broker'''' 
					WHEN 5 THEN ''''Employee'''' 
					WHEN 6 Then ''''Company Admin'''' 
				Else ''''General'''' END AS [User Type],
				CASE dbo.UserMaster.IsActive WHEN 1 THEN ''''Active'''' WHEN 0 THEN ''''InActive'''' END AS Status, dbo.UserMaster.CreatedOn, dbo.UserMaster.ModifiedOn,   
				dbo.UserMaster.DeletedOn, dbo.UserMaster.UserType, dbo.UserMaster.IsActive, Isnull(dbo.UserMaster.TenantId, 0) As TenantId,   
				Isnull(UserMaster.CompanyId, 0) As CompanyId, Isnull(Company.CompanyName, '''''''') As CompanyName,
				UserMaster.UserFullName, UserMaster.Address1, UserMaster.Address2, UserMaster.CityName, UserMaster.IsActive, 
				UserMaster.StateName, UserMaster.POBox, UserMaster.Country, UserMaster.ContactNo, UserMaster.EmailId
			From UserMaster 
				Inner Join UserRole On UserMaster.UserRoleId = UserRole.UserRoleId 
				Left Outer Join Company On UserMaster.CompanyId = Company.CompanyId 
			Where '' +  @Search + '' Order By [User Name] Asc'')			
		End
End' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usp_UserMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [usp_UserMaster]
	@UserId As bigint = 0,
	@UserName As nvarchar(Max) = '''', 
	@UserPassword As nvarchar(Max) = '''',
	@UserRoleId As bigint = 0,
	@UserType As int = 2,
	@IsActive As int = 1,
	@CompanyId As bigint = 0,
	@TenantId As Int = 0,
	@EmailId As Varchar(Max) = '''',
	@ContactNo As Varchar(Max) = '''',
	@Op As Varchar(Max),
	@ReturnValue As BigInt = 0 Output 
As
Begin
	If @TenantId = 0
		Set @TenantId = NULL
		
	If @CompanyId = 0
		Set @CompanyId = Null
		
	If @Op = ''I''
		Begin
			Insert Into UserMaster
            (UserName, UserPassword, UserRoleId, UserType, IsActive, CompanyId, TenantId, EmailId, ContactNo, CreatedOn, ModifiedOn, DeletedOn)
			Values
			(@UserName, @UserPassword, @UserRoleId, @UserType, @IsActive, @CompanyId, @TenantId, @EmailId, @ContactNo, GetDate(), Null, Null)
			
			Set @ReturnValue = Scope_Identity()			
		End
	Else If @Op = ''U''
		Begin
			Update UserMaster Set 
				UserName = @UserName, UserPassword = @UserPassword, UserRoleId = @UserRoleId, UserType = @UserType, 
				CompanyId = @CompanyId, IsActive = @IsActive, EmailId = @EmailId, ContactNo = @ContactNo, ModifiedOn = GetDate(),
				TenantId = @TenantId
			Where UserId = @UserId
			Set @ReturnValue = @UserId
		End
	Else If @Op = ''D''
		Begin
			Update UserMaster Set DeletedOn = GetDate() Where UserId = @UserId
			Set @ReturnValue = @UserId
		End
	Else If @Op = ''G''
		Begin
			Select UserMaster.UserId, UserMaster.UserRoleId, dbo.UserRole.UserRoleName AS [User Role], dbo.UserMaster.UserName AS [User Name], dbo.UserMaster.UserPassword, 
				UserMaster.UserType, 
				CASE dbo.UserMaster.UserType WHEN 1 THEN ''Admin'' WHEN 2 THEN ''Landlord'' WHEN 3 THEN ''Tenant'' WHEN 4 THEN ''Broker'' WHEN 5 THEN ''Employee'' Else '''' END AS [User Type],   
				CASE dbo.UserMaster.IsActive WHEN 1 THEN ''Active'' WHEN 0 THEN ''InActive'' END AS Status, dbo.UserMaster.CreatedOn, dbo.UserMaster.ModifiedOn,   
				dbo.UserMaster.DeletedOn, dbo.UserMaster.UserType, dbo.UserMaster.IsActive, Isnull(dbo.UserMaster.TenantId, 0) As TenantId,   
				Isnull(UserMaster.CompanyId, 0) As CompanyId, Isnull(Company.CompanyName, '''') As CompanyName,
				UserMaster.UserFullName, UserMaster.Address1, UserMaster.Address2, UserMaster.CityName, UserMaster.IsActive, 
				UserMaster.StateName, UserMaster.POBox, UserMaster.Country, UserMaster.ContactNo, UserMaster.EmailId
			From UserMaster 
				Inner Join UserRole On UserMaster.UserRoleId = UserRole.UserRoleId 
				Left Outer Join Company On UserMaster.CompanyId = Company.CompanyId 
			Where UserMaster.UserId = @UserId
		End
End

' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_Company]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_Company] FOREIGN KEY([CompanyId])
REFERENCES [Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_Company]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] CHECK CONSTRAINT [FK_UserMaster_Company]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_UserRole]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_UserRole] FOREIGN KEY([UserRoleId])
REFERENCES [UserRole] ([UserRoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_UserMaster_UserRole]') AND parent_object_id = OBJECT_ID(N'[UserMaster]'))
ALTER TABLE [UserMaster] CHECK CONSTRAINT [FK_UserMaster_UserRole]
GO
/****** Object:  Table [dbo].[DefaultForms]    Script Date: 06/22/2015 19:48:40 ******/
SET IDENTITY_INSERT [dbo].[DefaultForms] ON
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (1, N'Company', N'Company.aspx?p1=8', N'Company.png', 8, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (2, N'User Role', N'UserRole.aspx?p1=8', N'UserRole.png', 8, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (3, N'User Master', N'UserMaster.aspx?p1=8', N'UserMaster.png', 8, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (4, N'SMS Settings', N'SMSSettings.aspx?p1=8', N'SMSSettings.png', 8, 1, CAST(0x0000A4B1004946D9 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (5, N'SMS Credit', N'SMSCredit.aspx?p1=8', N'SMSCredit.png', 8, 1, CAST(0x0000A4B10049473F AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (6, N'Email Settings', N'EmailSettings.aspx?p1=8', N'EmailSettings.png', 8, 1, CAST(0x0000A4B10049479C AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (7, N'Country', N'Search.aspx?p1=1&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAdDb3VudHJ5Cw==', N'Country.png', 1, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (8, N'State/County', N'Search.aspx?p1=1&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAVTdGF0ZQs=', N'State.png', 1, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (9, N'City', N'Search.aspx?p1=1&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAARDaXR5Cw==', N'City.png', 1, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (10, N'Zone/Town', N'Search.aspx?p1=1&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAARab25lCw==', N'Zone.png', 1, 1, CAST(0x0000A4A20127E8F1 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (11, N'Area', N'Search.aspx?p1=1&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAARBcmVhCw==', N'Area.png', 1, 1, CAST(0x0000A4A20127E8F2 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (12, N'Activity Type', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAxBY3Rpdml0eVR5cGUL', N'ActivityType.png', 2, 1, CAST(0x0000A4B100B361C2 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (13, N'Property Type', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAxQcm9wZXJ0eVR5cGUL', N'PropertyType.png', 2, 1, CAST(0x0000A4A500E8349D AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (14, N'Location Type', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAxMb2NhdGlvblR5cGUL', N'LocationType.png', 2, 1, CAST(0x0000A4A20127E8F2 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (15, N'Building Parameter', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAABFCdWlsZGluZ1BhcmFtZXRlcgs=', N'BuildingParameter.png', 2, 1, CAST(0x0000A4A20127E8F2 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (16, N'Amenities', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAlBbWVuaXRpZXML', N'Amenities.png', 2, 1, CAST(0x0000A4A20127E8F2 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (17, N'Feature', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAdGZWF0dXJlCw==', N'Feature.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (18, N'Charge', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAZDaGFyZ2UL', N'Charge.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (19, N'Maintenance Status', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAABFNYWludGVuYW5jZVN0YXR1cws=', N'MaintenanceStatus.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (20, N'Maintenance Category', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAABNNYWludGVuYW5jZUNhdGVnb3J5Cw==', N'MaintenanceCategory.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (21, N'Personal Detail Type', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAABJQZXJzb25hbERldGFpbFR5cGUL', N'PersonalDetailType.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (22, N'Company Detail Type', N'Search.aspx?p1=2&p2=AAEAAAD/////AQAAAAAAAAAGAQAAABFDb21wYW55RGV0YWlsVHlwZQs=', N'CompanyDetailType.png', 2, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (23, N'User Role', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAhVc2VyUm9sZQs=', N'UserRole.png', 3, 1, CAST(0x0000A4A20127E8F3 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (24, N'User', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAARVc2VyCw==', N'User.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (25, N'Import Data', N'Import.aspx?p1=3', N'ImportData.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (26, N'Sage DB', N'sagedb.aspx?p1=3', N'SageDB.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (27, N'Record No. Settings', N'RecordNoSettings.aspx?p1=3', N'RecordNoSettings.png', 3, 1, CAST(0x0000A4B3006DB517 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (28, N'Landlord', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAhMYW5kbG9yZAs=', N'Landlord.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (29, N'Broker', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAZCcm9rZXIL', N'Broker.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (30, N'Employee', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAhFbXBsb3llZQs=', N'Employee.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (31, N'Tenant', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAZUZW5hbnQL', N'Tenant.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (32, N'Lawyer', N'Search.aspx?p1=3&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAZMYXd5ZXIL', N'Lawyer.png', 3, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (33, N'Inventory', N'Search.aspx?p1=4&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAlJbnZlbnRvcnkL', N'Inventory.png', 4, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (34, N'Property', N'PropertySearch.aspx?p1=4&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAhQcm9wZXJ0eQs=', N'Property.png', 4, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (35, N'Bulk Property', N'PropertySearch.aspx?p1=4&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAxCdWxrUHJvcGVydHkL', N'Property.png', 4, 1, CAST(0x0000A4BA00F8D951 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (36, N'Schedule Visit', N'SearchSchedule.aspx?p1=4&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA1TY2hlZHVsZVZpc2l0Cw==', N'Schedule.png', 4, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (37, N'Sales Activity', N'SearchSalesActivity.aspx?p1=4&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA1TYWxlc0FjdGl2aXR5Cw==', N'SalesActivity.png', 4, 1, CAST(0x0000A4B100B3625E AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (38, N'Lease Signup', N'Search.aspx?p1=5&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAtMZWFzZVNpZ25VcAs=', N'LeaseSignup.png', 5, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (39, N'Lease Renewal', N'Search.aspx?p1=5&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAAxMZWFzZVJlbmV3YWwL', N'LeaseRenewal.png', 5, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (40, N'Lease Terminate', N'Search.aspx?p1=5&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA5MZWFzZVRlcm1pbmF0ZQs=', N'LeaseTerminate.png', 5, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (41, N'Issue Recording', N'Search.aspx?p1=6&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA5Jc3N1ZVJlY29yZGluZws=', N'IssueRecording.png', 6, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (42, N'Issue Allocation', N'Search.aspx?p1=6&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA9Jc3N1ZUFsbG9jYXRpb24L', N'IssueAllocation.png', 6, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (43, N'Issue Progress', N'Search.aspx?p1=6&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA1Jc3N1ZVByb2dyZXNzCw==', N'IssueProgress.png', 6, 1, CAST(0x0000A4A20127E8F4 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (44, N'Invoice Generation', N'InvoiceStatus.aspx?p1=7', N'BillGeneration.png', 7, 1, CAST(0x0000A4A20127E8F5 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (45, N'Invoice Payment', N'PaymentStatus.aspx?p1=7', N'BillPayment.png', 7, 1, CAST(0x0000A4A20127E8F5 AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (46, N'Security Refund', N'Search.aspx?p1=7&p2=AAEAAAD/////AQAAAAAAAAAGAQAAAA5TZWN1cml0eVJlZnVuZAs=', N'SecurityRefund.png', 7, 1, CAST(0x0000A4A20127E8F5 AS DateTime), NULL, NULL)

INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (47, N'Email Settings', N'EmailSettings.aspx?p1=9', N'EmailSettings.png', 9, 1, CAST(0x0000A4B1004947FF AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (48, N'Recharge History', N'RechargeHistory.aspx?p1=9', N'RechargeHistory.png', 9, 1, CAST(0x0000A4B10049485F AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (49, N'Email Template', N'EmailTemplateSettings.aspx?p1=9', N'EmailTemplateSettings.png', 9, 1, CAST(0x0000A4B1004948BF AS DateTime), NULL, NULL)
INSERT [dbo].[DefaultForms] ([FormId], [FormName], [FormHRef], [IconPath], [IsPage], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn]) VALUES (50, N'SMS Template', N'SMSTemplateSettings.aspx?p1=9', N'SMSTemplateSettings.png', 9, 1, CAST(0x0000A4B100494919 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[DefaultForms] OFF

/****** Object:  Table [dbo].[UserRole]    Script Date: 05/13/2015 20:55:43 ******/
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([UserRoleId], [UserRoleName], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn], [CompanyId]) VALUES (1, N'Admin', 1, GetDate(), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[UserMaster]    Script Date: 05/13/2015 20:55:43 ******/
SET IDENTITY_INSERT [dbo].[UserMaster] ON
INSERT [dbo].[UserMaster] ([UserId], [UserRoleId], [UserName], [UserPassword], [UserType], [TenantId], [CompanyId], [UserFullName], [Address1], [Address2], [CityName], [StateName], [POBox], [Country], [ContactNo], [IsActive], [CreatedOn], [ModifiedOn], [DeletedOn], [EmailId]) VALUES (1, 1, N'Admin', N'QWRtaW4=', 1, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', 1, GetDate(), NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
/****** Object:  Table [dbo].[UserRoleRights]    Script Date: 05/13/2015 20:55:43 ******/
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 2, 1, 1, 1, 1, 1)
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 3, 1, 1, 1, 1, 1)
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 4, 1, 1, 1, 1, 1)
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 5, 1, 1, 1, 1, 1)
INSERT [dbo].[UserRoleRights] ([UserRoleId], [FormId], [IsView], [IsSave], [IsUpdate], [IsDelete], [IsExport]) VALUES (1, 6, 1, 1, 1, 1, 1)