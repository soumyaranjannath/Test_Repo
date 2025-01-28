--liquibase formatted sql

--changeset soumya:create get employee details views 
--comment comments from eclipse ide
create view [dbo].[EmployeeDetails] as

select e.EmployeeId,e.EmployeeName,e.Position,
	d.DepartmentName,p.ProjectName,p.StartDate,p.EndDate
	from Employees e join Departments d on e.DepartmentId=d.DepartmentId
	join Projects p on e.ProjectId=p.ProjectId;
GO

