--liquibase formatted sql

--changeset soumyaranjan:removed_e.EmployeeId 
--comment comments from eclipse ide


alter procedure [dbo].[SP_Get_EmployeeDetails]
			@DepartId int
			as
			begin
			select e.EmployeeName,
	d.DepartmentName,p.ProjectName,p.StartDate,p.EndDate
	from Employees e join Departments d on e.DepartmentId=d.DepartmentId
	join Projects p on e.ProjectId=p.ProjectId and e.DepartmentId=@DepartId		
			end;
GO