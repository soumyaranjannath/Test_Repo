USE [TestDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Departments]    Script Date: 24-01-2025 17:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Get_Departments]
			@DepartId int
			as
			begin
			select * from TestDB.dbo.Departments d where d.DepartmentId=@DepartId
				
			end;
GO
