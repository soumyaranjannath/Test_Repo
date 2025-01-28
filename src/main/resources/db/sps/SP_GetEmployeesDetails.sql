--liquibase formatted sql

--changeset soumya:creates get employee details sp
--comment comments from eclipse ide


create procedure [dbo].[SP_Get_EmployeeDetails]
			@DepartId int
			as
			begin
			select e.EmployeeId,e.EmployeeName,e.Position,
	d.DepartmentName,p.ProjectName,p.StartDate,p.EndDate
	from Employees e join Departments d on e.DepartmentId=d.DepartmentId
	join Projects p on e.ProjectId=p.ProjectId and e.DepartmentId=@DepartId		
			end;
GO