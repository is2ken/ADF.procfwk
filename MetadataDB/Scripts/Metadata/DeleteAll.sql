﻿--CurrentExecution
IF OBJECT_ID(N'[procfwk].[CurrentExecution]') IS NOT NULL 
	BEGIN
		TRUNCATE TABLE [procfwk].[CurrentExecution];
	END;

--ExecutionLog
IF OBJECT_ID(N'[procfwk].[ExecutionLog]') IS NOT NULL 
	BEGIN
		TRUNCATE TABLE [procfwk].[ExecutionLog];
	END

--PipelineAuthLink
IF OBJECT_ID(N'[procfwk].[PipelineAuthLink]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[PipelineAuthLink];
		DBCC CHECKIDENT ('[procfwk].[PipelineAuthLink]', RESEED, 0);
	END;

--ServicePrincipals
IF OBJECT_ID(N'[dbo].[ServicePrincipals]') IS NOT NULL 
	BEGIN
		DELETE FROM [dbo].[ServicePrincipals];
		DBCC CHECKIDENT ('[dbo].[ServicePrincipals]', RESEED, 0);
	END;

--Properties
IF OBJECT_ID(N'[procfwk].[Properties]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[Properties];
		DBCC CHECKIDENT ('[procfwk].[Properties]', RESEED, 0);
	END;

--PipelineParameters
IF OBJECT_ID(N'[procfwk].[PipelineParameters]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[PipelineParameters];
		DBCC CHECKIDENT ('[procfwk].[PipelineParameters]', RESEED, 0);
	END;

--Pipelines
IF OBJECT_ID(N'[procfwk].[Pipelines]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[Pipelines];
		DBCC CHECKIDENT ('[procfwk].[Pipelines]', RESEED, 0);
	END;

--DataFactorys
IF OBJECT_ID(N'[procfwk].[DataFactorys]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[DataFactorys];
		DBCC CHECKIDENT ('[procfwk].[DataFactorys]', RESEED, 0);
	END;

--Stages
IF OBJECT_ID(N'[procfwk].[Stages]') IS NOT NULL 
	BEGIN
		DELETE FROM [procfwk].[Stages];
		DBCC CHECKIDENT ('[procfwk].[Stages]', RESEED, 0);
	END;