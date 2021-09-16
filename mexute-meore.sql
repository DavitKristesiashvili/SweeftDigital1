---pirveli varianti 
select [dbo].[Teacher].* from [dbo].[Teacher] 
join [dbo].[TeacherPupil] on [dbo].[TeacherPupil].TeacherID = [dbo].[Teacher].TeacherID 
join [dbo].[Pupil] on [dbo].[Pupil].PupilID = [dbo].[TeacherPupil].PupilID 
where [dbo].[Pupil].FirstName = N'გიორგი' 

---meore varianti 
select [dbo].[Teacher].* from [dbo].[Teacher] where [dbo].[Teacher].TeacherID in 
(select [dbo].[TeacherPupil].TeacherID from [dbo].[TeacherPupil] where [dbo].[TeacherPupil].PupilID in 
(select [dbo].[Pupil].PupilID from [dbo].[Pupil] where [dbo].[Pupil].FirstName = N'გიორგი')) 
