USE [TestDB]
GO
/****** Object:  View [dbo].[EmployeeDetails]    Script Date: 24-01-2025 17:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmployeeDetails] as

select e.EmployeeId,e.EmployeeName,e.Position,
	d.DepartmentName,p.ProjectName,p.StartDate,p.EndDate
	from Employees e join Departments d on e.DepartmentId=d.DepartmentId
	join Projects p on e.ProjectId=p.ProjectId;
GO
