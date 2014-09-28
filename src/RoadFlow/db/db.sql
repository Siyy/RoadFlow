IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Members'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Members'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Status'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Status'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'IsSign'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'IsSign'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Comment'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Comment'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'CompletedTime1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'CompletedTime1'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'CompletedTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'CompletedTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'OpenTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'OpenTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'GroupID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'GroupID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'InstanceID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'InstanceID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'StepName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'StepName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'StepID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'StepID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'FlowID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'FlowID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'PrevStepID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'PrevStepID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'PrevID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'PrevID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Status'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Status'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Attribute'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Attribute'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'SubTableJson'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'SubTableJson'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Html'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Html'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'LastModifyTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'LastModifyTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateUserName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateUserName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateUserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateUserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'WriteTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'WriteTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'ToUserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'ToUserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'FlowID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'FlowID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'EndTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'EndTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'StartTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'StartTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'UserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'UserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Comment'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Comment'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'MemberID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'MemberID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Script'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Script'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Ico'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Ico'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'WriteTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'WriteTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Comments'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Contents'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Contents'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'InstanceID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'InstanceID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'GroupID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'GroupID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'TaskID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'TaskID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'StepID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'StepID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'FlowID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'FlowID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Status'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Status'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'RunJSON'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'RunJSON'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstallUserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstallUserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstallDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstallDate'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'DesignJSON'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'DesignJSON'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'CreateUserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'CreateUserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'CreateDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'CreateDate'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstanceManager'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstanceManager'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Manager'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Manager'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'IsDefault'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'IsDefault'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'RoleID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'RoleID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'MemberID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'MemberID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'IsMain'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'IsMain'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'OrganizeID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'OrganizeID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'UserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'UserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Email'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Email'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Address'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Address'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Fax'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Fax'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Tel'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Tel'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Officer'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Officer'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Ico'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Ico'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Params'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Params'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'AppID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'AppID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'RoleID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'RoleID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'ParentID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'ParentID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'UserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'UserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Users', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Status'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Status'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Password'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Account'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Account'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Ico'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Ico'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Params'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Params'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'AppID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'AppID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'RoleID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'RoleID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'ParentID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'ParentID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Role', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'UseMember'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UseMember'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Leader'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Leader'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ChargeLeader'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ChargeLeader'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ChildsLength'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ChildsLength'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Depth'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Depth'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ParentID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ParentID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Status'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Status'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Number'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Number'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Log', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'NewXml'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'NewXml'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'OldXml'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'OldXml'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Others'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Others'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Contents'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Contents'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'URL'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'URL'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'IPAddress'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'IPAddress'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'UserName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'UserName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'UserID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'UserID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'WriteTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'WriteTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Sort'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Sort'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Other'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Other'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Value'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Value'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Code'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Code'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'ParentID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'ParentID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'ConnectionString'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'ConnectionString'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Code'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Code'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Note'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Note'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Manager'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Manager'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Params'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Params'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Height'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Height'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Width'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Width'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'OpenMode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'OpenMode'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Address'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Address'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Title'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Title'

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_News_State]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest_News] DROP CONSTRAINT [DF_TempTest_News_State]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_WriteTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest] DROP CONSTRAINT [DF_TempTest_WriteTime]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_DeptID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest] DROP CONSTRAINT [DF_TempTest_DeptID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Log_WriteTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Log] DROP CONSTRAINT [DF_Log_WriteTime]
END

GO
/****** Object:  Table [dbo].[WorkGroup]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkGroup]') AND type in (N'U'))
DROP TABLE [dbo].[WorkGroup]
GO
/****** Object:  Table [dbo].[WorkFlowTask]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowTask]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowTask]
GO
/****** Object:  Table [dbo].[WorkFlowForm]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowForm]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowForm]
GO
/****** Object:  Table [dbo].[WorkFlowDelegation]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowDelegation]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowDelegation]
GO
/****** Object:  Table [dbo].[WorkFlowComment]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowComment]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowComment]
GO
/****** Object:  Table [dbo].[WorkFlowButtons]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowButtons]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowButtons]
GO
/****** Object:  Table [dbo].[WorkFlowArchives]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowArchives]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlowArchives]
GO
/****** Object:  Table [dbo].[WorkFlow]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlow]') AND type in (N'U'))
DROP TABLE [dbo].[WorkFlow]
GO
/****** Object:  Table [dbo].[UsersRole]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRole]') AND type in (N'U'))
DROP TABLE [dbo].[UsersRole]
GO
/****** Object:  Table [dbo].[UsersRelation]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRelation]') AND type in (N'U'))
DROP TABLE [dbo].[UsersRelation]
GO
/****** Object:  Table [dbo].[UsersInfo]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersInfo]') AND type in (N'U'))
DROP TABLE [dbo].[UsersInfo]
GO
/****** Object:  Table [dbo].[UsersApp]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersApp]') AND type in (N'U'))
DROP TABLE [dbo].[UsersApp]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[TempTest_PurchaseList]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_PurchaseList]') AND type in (N'U'))
DROP TABLE [dbo].[TempTest_PurchaseList]
GO
/****** Object:  Table [dbo].[TempTest_Purchase]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_Purchase]') AND type in (N'U'))
DROP TABLE [dbo].[TempTest_Purchase]
GO
/****** Object:  Table [dbo].[TempTest_News]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_News]') AND type in (N'U'))
DROP TABLE [dbo].[TempTest_News]
GO
/****** Object:  Table [dbo].[TempTest_CustomForm]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_CustomForm]') AND type in (N'U'))
DROP TABLE [dbo].[TempTest_CustomForm]
GO
/****** Object:  Table [dbo].[TempTest]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest]') AND type in (N'U'))
DROP TABLE [dbo].[TempTest]
GO
/****** Object:  Table [dbo].[RoleApp]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleApp]') AND type in (N'U'))
DROP TABLE [dbo].[RoleApp]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Organize]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organize]') AND type in (N'U'))
DROP TABLE [dbo].[Organize]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
DROP TABLE [dbo].[Log]
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
DROP TABLE [dbo].[Dictionary]
GO
/****** Object:  Table [dbo].[DBConnection]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBConnection]') AND type in (N'U'))
DROP TABLE [dbo].[DBConnection]
GO
/****** Object:  Table [dbo].[AppLibrary]    Script Date: 2014/9/22 17:14:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppLibrary]') AND type in (N'U'))
DROP TABLE [dbo].[AppLibrary]
GO
/****** Object:  Table [dbo].[AppLibrary]    Script Date: 2014/9/22 17:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppLibrary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppLibrary](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Type] [uniqueidentifier] NOT NULL,
	[OpenMode] [int] NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Params] [varchar](max) NULL,
	[Manager] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_AppLibrary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBConnection]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBConnection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBConnection](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Type] [varchar](500) NOT NULL,
	[ConnectionString] [varchar](max) NOT NULL,
	[Note] [varchar](max) NULL,
 CONSTRAINT [PK_DBConnection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dictionary](
	[ID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Code] [varchar](500) NULL,
	[Value] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Other] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_Dictionary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[WriteTime] [datetime] NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[UserName] [nvarchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[URL] [varchar](max) NULL,
	[Contents] [varchar](max) NULL,
	[Others] [varchar](max) NULL,
	[OldXml] [varchar](max) NULL,
	[NewXml] [varchar](max) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organize]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organize]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Organize](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](2000) NOT NULL,
	[Number] [varchar](900) NOT NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Sort] [int] NOT NULL,
	[Depth] [int] NOT NULL,
	[ChildsLength] [int] NOT NULL,
	[ChargeLeader] [varchar](200) NULL,
	[Leader] [varchar](200) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Organize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UseMember] [varchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleApp]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleApp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleApp](
	[ID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[AppID] [uniqueidentifier] NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Params] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
	[Ico] [varchar](200) NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_RoleApp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTest]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTest](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NULL,
	[UserID] [varchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[DeptID] [varchar](50) NULL,
	[DeptName] [nvarchar](500) NULL,
	[Date1] [datetime] NULL,
	[Date2] [datetime] NULL,
	[Type] [varchar](500) NULL,
	[Reason] [nvarchar](max) NULL,
	[WriteTime] [datetime] NULL,
	[Days] [float] NULL,
	[test] [varchar](5000) NULL,
	[test1] [varchar](5000) NULL,
	[test2] [varchar](5000) NULL,
	[test3] [varchar](5000) NULL,
	[flowcompleted] [int] NULL,
 CONSTRAINT [PK_TempTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTest_CustomForm]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_CustomForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTest_CustomForm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Contents] [nvarchar](4000) NOT NULL,
	[FlowCompleted] [int] NULL,
 CONSTRAINT [PK_TempTest_CustomForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TempTest_News]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_News]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTest_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Title1] [nvarchar](50) NULL,
	[UserID] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Contents] [text] NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_TempTest_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTest_Purchase]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_Purchase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTest_Purchase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[UserID] [varchar](50) NOT NULL,
	[UserDept] [varchar](50) NOT NULL,
	[SqDateTime] [datetime] NULL,
	[TypeOther] [nvarchar](500) NULL,
	[Note] [nvarchar](500) NULL,
	[IsCompleted] [int] NULL,
 CONSTRAINT [PK_TempTest1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTest_PurchaseList]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTest_PurchaseList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTest_PurchaseList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Sum1] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
	[Type] [varchar](50) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_TempTest_PurchaseList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersApp]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersApp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersApp](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[AppID] [uniqueidentifier] NULL,
	[Title] [nvarchar](200) NULL,
	[Params] [varchar](500) NULL,
	[Ico] [varchar](500) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_UsersApp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersInfo]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersInfo](
	[UserID] [uniqueidentifier] NOT NULL,
	[Officer] [nvarchar](500) NULL,
	[Tel] [varchar](500) NULL,
	[Fax] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[Email] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[MSN] [varchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_UsersInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersRelation]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersRelation](
	[UserID] [uniqueidentifier] NOT NULL,
	[OrganizeID] [uniqueidentifier] NOT NULL,
	[IsMain] [int] NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_UsersRelation] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[OrganizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UsersRole]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersRole](
	[MemberID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_UsersRole] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkFlow]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlow](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Type] [uniqueidentifier] NOT NULL,
	[Manager] [varchar](5000) NOT NULL,
	[InstanceManager] [varchar](5000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserID] [uniqueidentifier] NOT NULL,
	[DesignJSON] [varchar](max) NULL,
	[InstallDate] [datetime] NULL,
	[InstallUserID] [uniqueidentifier] NULL,
	[RunJSON] [varchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlow_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowArchives]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowArchives]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowArchives](
	[ID] [uniqueidentifier] NOT NULL,
	[FlowID] [uniqueidentifier] NOT NULL,
	[StepID] [uniqueidentifier] NOT NULL,
	[FlowName] [nvarchar](500) NOT NULL,
	[StepName] [nvarchar](500) NOT NULL,
	[TaskID] [uniqueidentifier] NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
	[InstanceID] [varchar](500) NOT NULL,
	[Title] [nvarchar](4000) NOT NULL,
	[Contents] [text] NOT NULL,
	[Comments] [text] NOT NULL,
	[WriteTime] [datetime] NOT NULL,
 CONSTRAINT [PK_WorkFlowArchives] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowButtons]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowButtons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowButtons](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Ico] [varchar](500) NULL,
	[Script] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowButtons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowComment]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowComment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowComment](
	[ID] [uniqueidentifier] NOT NULL,
	[MemberID] [varchar](max) NOT NULL,
	[Comment] [nvarchar](500) NOT NULL,
	[Type] [int] NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowDelegation]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowDelegation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowDelegation](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[FlowID] [uniqueidentifier] NULL,
	[ToUserID] [uniqueidentifier] NOT NULL,
	[WriteTime] [datetime] NOT NULL,
	[Note] [nvarchar](4000) NULL,
 CONSTRAINT [PK_WorkFlowDelegate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkFlowForm]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowForm](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Type] [uniqueidentifier] NOT NULL,
	[CreateUserID] [uniqueidentifier] NOT NULL,
	[CreateUserName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastModifyTime] [datetime] NOT NULL,
	[Html] [text] NULL,
	[SubTableJson] [text] NULL,
	[Attribute] [varchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowTask]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkFlowTask]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkFlowTask](
	[ID] [uniqueidentifier] NOT NULL,
	[PrevID] [uniqueidentifier] NOT NULL,
	[PrevStepID] [uniqueidentifier] NOT NULL,
	[FlowID] [uniqueidentifier] NOT NULL,
	[StepID] [uniqueidentifier] NOT NULL,
	[StepName] [nvarchar](500) NOT NULL,
	[InstanceID] [varchar](50) NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[SenderID] [uniqueidentifier] NOT NULL,
	[SenderName] [nvarchar](50) NOT NULL,
	[SenderTime] [datetime] NOT NULL,
	[ReceiveID] [uniqueidentifier] NOT NULL,
	[ReceiveName] [nvarchar](50) NOT NULL,
	[ReceiveTime] [datetime] NOT NULL,
	[OpenTime] [datetime] NULL,
	[CompletedTime] [datetime] NULL,
	[CompletedTime1] [datetime] NULL,
	[Comment] [varchar](max) NULL,
	[IsSign] [int] NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowTask] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkGroup]    Script Date: 2014/9/22 17:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkGroup](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Members] [varchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'8cff8e9f-f539-41c9-80ce-06a97f481390', N'日志查询', N'Log', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 0, 0, 0, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'303def4d-5ad8-420c-98ec-14b0882a300b', N'实例管理', N'WorkFlowTasks/Instance', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'90cba9bf-8fe2-4bbc-a472-1dcf4becf5d6', N'流程设计', N'WorkFlowDesigner', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'b8a7bca3-9a32-45eb-b685-1e8c05c78bd3', N'请假', N'/Views/WorkFlowFormDesigner/Forms/5646bede-9d15-96d6-01e4-0f763c306ed5.cshtml', N'2a1070f6-af14-45b3-8292-fe0962701c04', 0, NULL, NULL, N'', NULL, N'流程表单', N'5646bede-9d15-96d6-01e4-0f763c306ed5')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'297f012f-4987-4cdd-b2c0-1f9672d65d64', N'应用程序库', N'AppLibrary', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'a6c6e23f-1726-486b-b91c-3fad52f3f0f7', N'已办事项', N'WorkFlowTasks/CompletedList', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'bb411263-3dfc-4e4c-92e4-45049327bc42', N'数据库连接', N'DBConnection', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'2193be16-fea9-4903-b80a-45b2dacb02b5', N'表单设计', N'WorkFlowFormDesigner', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'3553dd3d-491c-463c-832f-512e33959f44', N'工作委托', N'WorkFlowDelegation', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'f597f0ab-6589-411f-a9ee-53068b19772c', N'自定义表单', N'WorkFlowRun/Index', N'90d6ad24-28f5-49d3-ac3f-cb473fb64cc5', 0, NULL, NULL, N'flowid=538beb68-4e56-439e-b50f-be6b3b9f4957', NULL, N'流程应用', N'538beb68-4e56-439e-b50f-be6b3b9f4957')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'd66621bd-1a4b-4438-bf2c-577fda5eeb03', N'物资采购申请', N'WorkFlowRun/Index', N'90d6ad24-28f5-49d3-ac3f-cb473fb64cc5', 0, NULL, NULL, N'flowid=c41d6eb9-e5f5-4171-a457-0cafe6b22757', NULL, N'流程应用', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'fb298019-4aba-405c-ab4e-6a24400eb769', N'新闻发布', N'/Views/WorkFlowFormDesigner/Forms/40e57ecf-806f-14a9-dea5-404fbbc183d6.cshtml', N'719c6c30-3d6a-44e2-8730-637c651f1df7', 0, NULL, NULL, N'', NULL, N'', N'40e57ecf-806f-14a9-dea5-404fbbc183d6')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'e5676181-e55c-4553-948b-6a8b3d2cf747', N'意见管理(个人)', N'WorkFlowComments?isoneself=1', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'7f4c74d6-4113-4196-ada8-70c8e30a4a55', N'自定义表单', N'/Views/Test/CustomForm.cshtml', N'626480b3-eaa9-4705-acbb-82901db4fda4', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'3b90b7c6-7b0e-4d55-9920-73430831adcf', N'角色应用', N'RoleApp', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 2, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'11304c22-887c-4ebf-8718-95326a6a58b4', N'数据字典', N'Dict', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 1, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', N'WorkFlowRun/Index', N'48d05cf9-81c2-4713-87ab-1a45321500de', 0, NULL, NULL, N'flowid=a6509c1b-f49f-47a6-829d-ec43b9210eb2', NULL, N'', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'fe9eb92c-66a3-41c3-a79e-a860887c63a9', N'物品申购单', N'/Views/WorkFlowFormDesigner/Forms/f307d89f-06a9-6f63-d7c5-90f7e8521d35.cshtml', N'719c6c30-3d6a-44e2-8730-637c651f1df7', 0, NULL, NULL, N'', NULL, N'流程表单', N'f307d89f-06a9-6f63-d7c5-90f7e8521d35')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'15578cd3-9d10-49ee-b0bf-aaabc70a436e', N'按钮管理', N'WorkFlowButtons', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'072a784c-8a0e-402f-804f-aae783d10f46', N'待办事项', N'WorkFlowTasks/WaitList', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'f0dfb92c-7fd7-42ea-bfd1-b7ef8a91fab3', N'在线用户', N'OnlineUsers', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'261add53-0856-4361-8785-c6ca48a9622d', N'请假1', N'/Views/WorkFlowFormDesigner/Forms/9024ae44-e4b4-90aa-f603-187b1c158f52.cshtml', N'626480b3-eaa9-4705-acbb-82901db4fda4', 0, NULL, NULL, N'', NULL, N'流程表单', N'9024ae44-e4b4-90aa-f603-187b1c158f52')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'35024003-1206-4c20-b7d2-d0bca4134056', N'归档中心', N'WorkFlowArchives', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'9e65d8b1-6353-4846-a655-d778187a8b57', N'工作委托(个人)', N'WorkFlowDelegation?isoneself=1', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'dd12865d-63e6-44fe-83fc-d98cc9e093c0', N'组织机构', N'Members', N'94decd1d-8c60-4c85-8f00-e740c1d4847b', 2, 900, 500, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'1821a63f-d884-4778-9b80-f08177ab05d7', N'新闻发布', N'WorkFlowRun/Index', N'48d05cf9-81c2-4713-87ab-1a45321500de', 0, NULL, NULL, N'flowid=86875775-2f25-443d-ac42-57124f3479a5', NULL, N'流程应用', N'86875775-2f25-443d-ac42-57124f3479a5')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'8523cec5-750b-4fb6-b665-fa33600a4378', N'签名管理', N'WorkFlowSign', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'b4ccf4c8-671f-4211-9f57-fbd371f4ff42', N'意见管理', N'WorkFlowComments', N'ba6a867d-75ec-4223-b123-84229e29ff0c', 0, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[DBConnection] ([ID], [Name], [Type], [ConnectionString], [Note]) VALUES (N'06075250-30dc-4d32-bf97-e922cb30fac8', N'平台连接', N'SqlServer', N'Data Source=(local);Initial Catalog=RoadFlow;UID=rw;PWD=rw', N'')
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'48d05cf9-81c2-4713-87ab-1a45321500de', N'7bc7c158-3492-41dd-8082-388495edf20c', N'办公类流程', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'b50d5b1e-436a-48a4-b1fb-1f3cfb5579af', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出窗口(模态)', NULL, N'4', NULL, NULL, 5)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'f3a258bf-c3c9-4591-9792-22401e017c83', N'52e83a92-6ddf-43c2-86a9-944ce7421cbb', N'应用程序打开方式', N'appopenmodel', NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'7bc7c158-3492-41dd-8082-388495edf20c', N'df2acf3d-a35d-4b36-9caf-c2e3d5b9cd2c', N'流程分类', N'FlowTypes', NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'cbeb8fff-3b38-4f31-99e2-411a52976a37', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出层(模态)', NULL, N'2', NULL, NULL, 3)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'2a2bbee3-9883-4185-a64c-4430aa20e0cb', N'00000000-0000-0000-0000-000000000000', N'数据字典', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'97867c71-9bbd-4894-b5cd-4ab0142803cc', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'标签方式', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'719c6c30-3d6a-44e2-8730-637c651f1df7', N'df2acf3d-a35d-4b36-9caf-c2e3d5b9cd2c', N'表单分类', N'FormTypes', NULL, NULL, NULL, 2)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'5f1a27c8-2e7a-419a-9dff-701602a5c40f', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出窗口', NULL, N'3', NULL, NULL, 4)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'7283b92f-21b4-4b0a-8b00-72cc9656f4dc', N'719c6c30-3d6a-44e2-8730-637c651f1df7', N'自定义表单', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'626480b3-eaa9-4705-acbb-82901db4fda4', N'2a1070f6-af14-45b3-8292-fe0962701c04', N'办公类表单', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'ba6a867d-75ec-4223-b123-84229e29ff0c', N'df2acf3d-a35d-4b36-9caf-c2e3d5b9cd2c', N'流程管理', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'b8bffd9a-1ab5-447d-9f5d-933e327e77c4', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出层', NULL, N'1', NULL, NULL, 2)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'52e83a92-6ddf-43c2-86a9-944ce7421cbb', N'2a2bbee3-9883-4185-a64c-4430aa20e0cb', N'系统字典条目', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'268ee7df-e4ac-4b6a-bfff-ae995ccdc7fa', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'新窗口', NULL, N'5', NULL, NULL, 6)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'df2acf3d-a35d-4b36-9caf-c2e3d5b9cd2c', N'52e83a92-6ddf-43c2-86a9-944ce7421cbb', N'应用程序库分类', N'AppLibraryTypes', NULL, NULL, NULL, 2)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'90d6ad24-28f5-49d3-ac3f-cb473fb64cc5', N'7bc7c158-3492-41dd-8082-388495edf20c', N'业务类流程', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'74facc24-969f-4604-bc21-ce9e14dfa1ed', N'2a1070f6-af14-45b3-8292-fe0962701c04', N'合同类表单', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'94decd1d-8c60-4c85-8f00-e740c1d4847b', N'df2acf3d-a35d-4b36-9caf-c2e3d5b9cd2c', N'系统管理', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort]) VALUES (N'2a1070f6-af14-45b3-8292-fe0962701c04', N'719c6c30-3d6a-44e2-8730-637c651f1df7', N'普通表单', NULL, NULL, NULL, NULL, 2)

INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'3975624c-148f-4838-88c9-12af85d2e05e', N'财务部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 3, 1, 4, N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', N'u_c2d3012a-c816-4149-ac04-9da0b60e3867', NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'82682cf5-50e1-4901-911b-1a935b5ddb6c', N'总经理', N'04f12beb-d99d-43df-ac9a-3042957d6bda,82682cf5-50e1-4901-911b-1a935b5ddb6c', 3, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 1, 1, 1, N'', N'', NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'04f12beb-d99d-43df-ac9a-3042957d6bda', N'路德软件技术有限公司', N'04f12beb-d99d-43df-ac9a-3042957d6bda', 1, 0, N'00000000-0000-0000-0000-000000000000', 1, 0, 12, NULL, NULL, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'74ceda12-c919-4d80-b0f2-3ac254adb65a', N'出纳', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e,74ceda12-c919-4d80-b0f2-3ac254adb65a', 3, 0, N'3975624c-148f-4838-88c9-12af85d2e05e', 3, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'1e9fba5a-7ba2-48dc-a89f-9377837912f7', N'会计', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e,1e9fba5a-7ba2-48dc-a89f-9377837912f7', 3, 0, N'3975624c-148f-4838-88c9-12af85d2e05e', 1, 2, 1, N'', N'', NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'96f75a51-779b-491a-9773-cb5f90cef11e', N'研发部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,96f75a51-779b-491a-9773-cb5f90cef11e', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 2, 1, 4, N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', N'u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [ChargeLeader], [Leader], [Note]) VALUES (N'4f4865de-fda0-417b-9465-d7648309b772', N'销售部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,4f4865de-fda0-417b-9465-d7648309b772', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 4, 1, 2, NULL, NULL, NULL)
INSERT [dbo].[Role] ([ID], [Name], [UseMember], [Note]) VALUES (N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'系统管理员', N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL)
INSERT [dbo].[Role] ([ID], [Name], [UseMember], [Note]) VALUES (N'8de5f921-f574-4f3d-bb39-8917ee67443b', N'工作人员', NULL, NULL)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'507eba3a-1559-4f68-ad3f-02160e82408d', N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'd66621bd-1a4b-4438-bf2c-577fda5eeb03', N'物资采购申请', NULL, 2, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'77b14053-24f3-49e3-a3fc-033cc0468d6b', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'3553dd3d-491c-463c-832f-512e33959f44', N'工作委托', NULL, 6, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'188dc07e-1562-42f4-ab4c-05e03e1540f8', N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'1821a63f-d884-4778-9b80-f08177ab05d7', N'新闻发布', NULL, 4, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'8a66eb6a-c615-4ffc-a0ce-0612309e3b72', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'e5676181-e55c-4553-948b-6a8b3d2cf747', N'意见管理', NULL, 4, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'a8249985-deaa-493b-926d-159430647986', N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'f597f0ab-6589-411f-a9ee-53068b19772c', N'自定义表单', NULL, 3, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'47a2dc9a-f438-4a3e-8efc-1ec59a3300cd', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'a6c6e23f-1726-486b-b91c-3fad52f3f0f7', N'已办事项', NULL, 2, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'ce5b7f56-275b-4733-b485-298102f1479c', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'b4ccf4c8-671f-4211-9f57-fbd371f4ff42', N'意见管理', NULL, 4, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'431c2a81-d12d-4d20-914f-37d526585232', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'9e65d8b1-6353-4846-a655-d778187a8b57', N'工作委托', NULL, 5, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'3f4de343-5d3a-48fa-a64f-386c1e9e1076', N'b27ab200-ffd4-41ea-af41-5047b761e39a', N'8de5f921-f574-4f3d-bb39-8917ee67443b', NULL, N'工作任务', NULL, 2, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'b27ab200-ffd4-41ea-af41-5047b761e39a', N'00000000-0000-0000-0000-000000000000', N'8de5f921-f574-4f3d-bb39-8917ee67443b', NULL, N'管理目录', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'46a9d6a9-0e68-409c-95b8-5350301f70ed', N'b27ab200-ffd4-41ea-af41-5047b761e39a', N'8de5f921-f574-4f3d-bb39-8917ee67443b', NULL, N'工作流程', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程处理', NULL, 3, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'0a9e2201-c921-47d0-9497-5ed9cf22f672', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'072a784c-8a0e-402f-804f-aae783d10f46', N'待办事项', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'ae221280-9561-4d93-9cf2-63c6d6ad7698', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'f0dfb92c-7fd7-42ea-bfd1-b7ef8a91fab3', N'在线用户', NULL, 10, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'74e0add2-3c51-4e6a-b1dc-6a256918ca4c', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'15578cd3-9d10-49ee-b0bf-aaabc70a436e', N'按钮管理', NULL, 3, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程测试', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程管理', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'系统管理', NULL, 4, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'6135e10e-c0aa-464b-b78a-86b9fb8eb4a4', N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'64cc2dd2-e224-444c-8ffe-8ba7942dae25', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'35024003-1206-4c20-b7d2-d0bca4134056', N'归档中心', NULL, 7, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'233d8ad4-8369-4201-b9a7-927d51ff0e35', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'dd12865d-63e6-44fe-83fc-d98cc9e093c0', N'组织机构', NULL, 4, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'461795cc-af9d-4bf9-bddb-9736bfb97bdb', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'8cff8e9f-f539-41c9-80ce-06a97f481390', N'日志查询', NULL, 5, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'aa80e3aa-6547-416e-839b-a25bc7f2a099', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'90cba9bf-8fe2-4bbc-a472-1dcf4becf5d6', N'流程设计', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'4051d9f8-35c8-45d1-bc1e-a49be6e71240', N'46a9d6a9-0e68-409c-95b8-5350301f70ed', N'8de5f921-f574-4f3d-bb39-8917ee67443b', N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'c46c55df-5c9f-4740-9a0f-b2b1cbaeb9d0', N'46a9d6a9-0e68-409c-95b8-5350301f70ed', N'8de5f921-f574-4f3d-bb39-8917ee67443b', N'd66621bd-1a4b-4438-bf2c-577fda5eeb03', N'物资采购申请', NULL, 2, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'58f06d96-1ebe-456d-b86b-b97d24e62ab0', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'303def4d-5ad8-420c-98ec-14b0882a300b', N'实例管理', NULL, 5, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'72844f88-d2ec-495c-a2da-bb11e1bb7fec', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'2193be16-fea9-4903-b80a-45b2dacb02b5', N'表单设计', NULL, 2, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'32e8c7fa-5607-4949-90bd-c722ce30d15a', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'3b90b7c6-7b0e-4d55-9920-73430831adcf', N'角色应用', NULL, 8, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'b0fdbfd5-4f5e-4637-9af5-cbb851273696', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'8523cec5-750b-4fb6-b665-fa33600a4378', N'签名管理', NULL, 3, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'4c520912-9454-4ed9-8060-cc3a612862aa', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'11304c22-887c-4ebf-8718-95326a6a58b4', N'数据字典', NULL, 6, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'f3d4099f-de82-4d49-a89c-e5ad83e0988b', N'3f4de343-5d3a-48fa-a64f-386c1e9e1076', N'8de5f921-f574-4f3d-bb39-8917ee67443b', N'072a784c-8a0e-402f-804f-aae783d10f46', N'待办事项', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'3e0bbdee-92b4-4303-b434-ed752fc20902', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'297f012f-4987-4cdd-b2c0-1f9672d65d64', N'应用程序库', NULL, 7, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'ad60040d-99a1-420a-8c47-eda6166f2b74', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'bb411263-3dfc-4e4c-92e4-45049327bc42', N'数据库连接', NULL, 9, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'ceae1645-9785-45e1-822e-f082db3ea902', N'00000000-0000-0000-0000-000000000000', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'管理目录', NULL, 1, NULL, 0)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort], [Ico], [Type]) VALUES (N'fe38ae0b-ec56-4e60-b253-f5a77e0ef7a1', N'3f4de343-5d3a-48fa-a64f-386c1e9e1076', N'8de5f921-f574-4f3d-bb39-8917ee67443b', N'a6c6e23f-1726-486b-b91c-3fad52f3f0f7', N'已办事项', NULL, 2, NULL, 0)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'11bb23de-0061-43f1-b6a8-0748673956fc', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A33A017542B0 AS DateTime), CAST(0x0000A33B017542B0 AS DateTime), N'1', N'生病了', NULL, 1, NULL, NULL, N'/Content/Upload/201405/29/size.png', NULL, 1)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'8b33b29d-6c49-4c73-bef3-07782602ef34', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A37300A93080 AS DateTime), CAST(0x0000A37800A93080 AS DateTime), N'5', N'4444', NULL, 4, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'c3df08c4-51f1-4ada-bea3-0f7f17c3778f', N'请假申请(徐洪)', N'', NULL, N'', NULL, CAST(0x0000A3A000B42D00 AS DateTime), CAST(0x0000A3B000B42D00 AS DateTime), N'1', N'5', NULL, 5, NULL, NULL, N'/RoadFlow/Content/UploadFiles/201409/05/111.xps', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'868e4630-e544-439e-8bb0-22502301ecd7', N'请假申请(李晨新)', N'u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', NULL, N'4f4865de-fda0-417b-9465-d7648309b772', NULL, CAST(0x0000A36C010300B0 AS DateTime), CAST(0x0000A379010300B0 AS DateTime), N'3', N'1111', NULL, 1, NULL, NULL, N'/Content/Upload/201407/05/111.xps', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'5dd88527-146b-4425-a6dd-252148e1919e', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A37900AB1CB0 AS DateTime), CAST(0x0000A42700AB1CB0 AS DateTime), N'4', N'4444', NULL, 4, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'd2e62d0a-3783-41c9-ada9-5f430bf34810', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A37800E8A2B0 AS DateTime), CAST(0x0000A39500E8A2B0 AS DateTime), N'2', N'1234231', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'2e3d1a8c-328f-4313-af6e-6330d3979610', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A35400E74320 AS DateTime), CAST(0x0000A35700E74320 AS DateTime), N'1', N'ggg', NULL, 2, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'89ed8ee1-c6e4-4450-9ad5-64a474a9c667', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A37F0182FE50 AS DateTime), CAST(0x0000A3960182FE50 AS DateTime), N'1', N'2344235', NULL, 3, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'4e2ea108-0f8e-4998-b1fb-6f82e5689d1d', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A37200BC6A60 AS DateTime), CAST(0x0000A37900BC6A60 AS DateTime), N'2', N'53535', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'156ad268-7258-4145-9a72-7ebdd1e6bcae', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A36A00A62B10 AS DateTime), CAST(0x0000A36900A67160 AS DateTime), N'3', N'44444', NULL, 4, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'84568982-06ff-48c3-8278-7ffcbf2701d0', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A39500AA0370 AS DateTime), CAST(0x0000A37900AA0370 AS DateTime), N'3', N'111', NULL, 4, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'292381da-1773-4b2e-9164-81ce00a33b3d', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A38F00E7CFC0 AS DateTime), CAST(0x0000A38F00E7CFC0 AS DateTime), N'2', N'6', NULL, 6, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'78031597-5c13-455e-abb1-84453d220250', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A34E01739CD0 AS DateTime), CAST(0x0000A35701739CD0 AS DateTime), N'2', N'11', NULL, 1, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'496a4eb1-7c18-48f3-8aff-93c85e8a54c7', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A37300BBDDC0 AS DateTime), CAST(0x0000A36100BBDDC0 AS DateTime), N'2', N'1111', NULL, 1, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'49811d79-b78e-4359-90fa-9bc69e37b066', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'11960c7c-da40-4f20-8963-a99a85c338c0', NULL, N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A35C00000000 AS DateTime), CAST(0x0000A37200000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'439d7ee3-4718-405f-b846-b7f852e88e7d', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A38300B9F190 AS DateTime), CAST(0x0000A38300B9F190 AS DateTime), N'2', N'33', NULL, 3, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'2d5f8227-5e87-48d6-ba6b-dfe5a3562c9e', N'请假申请(李晨新)', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', NULL, N'04f12beb-d99d-43df-ac9a-3042957d6bda', NULL, CAST(0x0000A37900AB6300 AS DateTime), CAST(0x0000A37700ABA950 AS DateTime), N'3', N'1423141324', NULL, 1, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'673d43b3-e3b4-4f15-8fe3-e44c51768e75', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [Days], [test], [test1], [test2], [test3], [flowcompleted]) VALUES (N'94c1d05c-61ba-43b1-9c34-f27ddf3d9ac0', N'请假申请(徐洪)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A37800E8E900 AS DateTime), CAST(0x0000A3CF00E8E900 AS DateTime), N'2', N'22', NULL, 2, NULL, NULL, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TempTest_CustomForm] ON 

INSERT [dbo].[TempTest_CustomForm] ([ID], [Title], [Contents], [FlowCompleted]) VALUES (1, N'11111111111', N'qwerqwerew', 0)
INSERT [dbo].[TempTest_CustomForm] ([ID], [Title], [Contents], [FlowCompleted]) VALUES (2, N'rwe', N'werqwrwer', 0)
SET IDENTITY_INSERT [dbo].[TempTest_CustomForm] OFF
SET IDENTITY_INSERT [dbo].[TempTest_News] ON 

INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1002, N'', N'', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1003, N'wertw', N'wertewrt', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1004, N'', N'', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1005, N'qwer', N'qwerwqer', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>qwre</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1006, N'11111111111', N'11111111111111111111111111', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>111111111</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1007, N'wqerwqerwqerwqeweqr', N'qwerqwerqwerwqerwq', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1008, N'1234213412341234', N'1234213412342134', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1009, N'12341234', N'1234123412342314', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1010, N'qqqqqqqqqqqq', N'qqqqqqqqqqqqqqqqqqqq', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>123421342134qqqqqq</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1011, N'wqerweqr', N'qwerwqerweqrweqr', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>123412341234213</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1012, N'weqr', N'eqwrweqr', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>wqerweqrqwerqwerweq</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1013, N'qerqwerqrqewr', N'qwerwqerewq', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>qwerweqrqwer</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (1014, N'11111111111111', N'1111111111111111111111111', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>111111111111111111111</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (2002, N'', N'', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', NULL, 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (2003, N'1234123', N'41234123', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>431241234321</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3002, N'ggggggggggg', N'wqrwqrewqer', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>qwrwqerweqr</p>', 1)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3003, N'ggggggg', N'gggggg', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>ggggg</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3004, N'ggggggg', N'gggggg', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>ggggg</p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3005, N'ggggggg', N'gggggg', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'0', N'<p>ggggg</p>', 1)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3006, N'ggggggggggggg', N'', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'1', N'<p>12341234123431<br/></p>', 0)
INSERT [dbo].[TempTest_News] ([ID], [Title], [Title1], [UserID], [Type], [Contents], [State]) VALUES (3007, N'111111111111111cccccccc', N'qwerqew', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'1', N'<p>wereqwreqwrcccccccccccccccccccccc</p>', 1)
SET IDENTITY_INSERT [dbo].[TempTest_News] OFF
SET IDENTITY_INSERT [dbo].[TempTest_Purchase] ON 

INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (20, N'1431412342314231', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A37700000000 AS DateTime), NULL, N'12342314', NULL)
INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (1020, N'55555555555555', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A38300000000 AS DateTime), NULL, N'55555', NULL)
INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (1021, N'1111111111111', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A38300000000 AS DateTime), NULL, N'23424234', 1)
INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (2021, N'12342134', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A38E00000000 AS DateTime), NULL, N'2421342', NULL)
INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (2022, N'qwereqw', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A38E00000000 AS DateTime), NULL, N'1234', NULL)
INSERT [dbo].[TempTest_Purchase] ([ID], [Title], [UserID], [UserDept], [SqDateTime], [TypeOther], [Note], [IsCompleted]) VALUES (2023, N'1241234', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a', N'96f75a51-779b-491a-9773-cb5f90cef11e', CAST(0x0000A38E00000000 AS DateTime), NULL, N'qerewqrweqr', NULL)
SET IDENTITY_INSERT [dbo].[TempTest_Purchase] OFF
SET IDENTITY_INSERT [dbo].[TempTest_PurchaseList] ON 

INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (50, 20, N'1234213', N'4213', N'41234', 1, CAST(1234.00 AS Decimal(18, 2)), CAST(0x0000A36A00000000 AS DateTime), NULL, N'12342134')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (1050, 1020, N'rfefefr', N'ferfr', N'efre', 5, CAST(55555.00 AS Decimal(18, 2)), CAST(0x0000A39D00000000 AS DateTime), NULL, N'5555')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (1051, 1021, N'1111', N'erwf', N'erwf', 234, CAST(234234.00 AS Decimal(18, 2)), CAST(0x0000A38300000000 AS DateTime), NULL, N'234234')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2051, 2021, N'eqwr', N'wqer', N'weqr', 2, CAST(24.00 AS Decimal(18, 2)), CAST(0x0000A38E00000000 AS DateTime), NULL, N'1241234')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2052, 2021, N'qwer', N'qwer', N'qwre', NULL, NULL, CAST(0x0000A38E00000000 AS DateTime), NULL, N'')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2053, 2022, N'qwer', N'qwer', N'wqer', 2, CAST(24.00 AS Decimal(18, 2)), CAST(0x0000A38E00000000 AS DateTime), NULL, N'qwrr')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2054, 2022, N'h', N'hh', N'hhh', 6, CAST(66.00 AS Decimal(18, 2)), CAST(0x0000A38E00000000 AS DateTime), NULL, N'qwer')
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2055, 2022, N'2134', N'2134', N'234', 3, CAST(234.00 AS Decimal(18, 2)), CAST(0x0000A38E00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[TempTest_PurchaseList] ([ID], [PurchaseID], [Name], [Model], [Unit], [Quantity], [Sum1], [Date], [Type], [Note]) VALUES (2056, 2023, N'234', N'2134', N'2134', 2134, CAST(234.00 AS Decimal(18, 2)), CAST(0x0000A38E00000000 AS DateTime), NULL, N'1234xxxx')
SET IDENTITY_INSERT [dbo].[TempTest_PurchaseList] OFF
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', N'admin', N'EA7E14A9A82A30571D3ABB68B9951A72', 0, 1, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'0362149c-af22-491f-baef-37bffcc1fd5c', N'毛明明', N'mmm', N'7577447B52FB96045ADD91A8F2AB06FB', 0, 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'张刚', N'zg', N'32D782480428DFB43FC52A3E89BD8B2E', 0, 2, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', N'xh', N'ECD43EBFA68902CD4E0DCBD8D44D694C', 0, 2, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'王中平', N'wzp', N'A58EC1C8100D0E28ECAB5FE090F41CE2', 0, 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'周丽', N'zl', N'C6E72931096E04CBCC3F04ECA9A65515', 0, 1, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'fded2b24-e7a0-41e4-90ed-aab7148ae113', N'王磊', N'wl', N'A812D75485728C38E831E7D9724C7BA8', 0, 3, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'李晨新', N'lcx', N'5558FE1D778166F58C7E8CB7C505A2D0', 0, 1, N'0')
INSERT [dbo].[UsersApp] ([ID], [UserID], [ParentID], [RoleID], [AppID], [Title], [Params], [Ico], [Sort]) VALUES (N'b161d811-e52f-41aa-b2be-eacb592e440b', N'1acf9c22-bfb6-4673-a698-a58233747b92', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', NULL, NULL, 11)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 4)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'0362149c-af22-491f-baef-37bffcc1fd5c', N'4f4865de-fda0-417b-9465-d7648309b772', 1, 4)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 3)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'8d61ad4d-0742-411f-9fcb-935862185d56', N'04f12beb-d99d-43df-ac9a-3042957d6bda', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 2)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'4f4865de-fda0-417b-9465-d7648309b772', 0, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'1e9fba5a-7ba2-48dc-a89f-9377837912f7', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'74ceda12-c919-4d80-b0f2-3ac254adb65a', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'fded2b24-e7a0-41e4-90ed-aab7148ae113', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'82682cf5-50e1-4901-911b-1a935b5ddb6c', 1, 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'0362149c-af22-491f-baef-37bffcc1fd5c', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'fded2b24-e7a0-41e4-90ed-aab7148ae113', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'物资采购申请', N'90d6ad24-28f5-49d3-ac3f-cb473fb64cc5', N'96f75a51-779b-491a-9773-cb5f90cef11e', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', CAST(0x0000A32400B79416 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"c41d6eb9-e5f5-4171-a457-0cafe6b22757","name":"物资采购申请","type":"90d6ad24-28f5-49d3-ac3f-cb473fb64cc5","manager":"96f75a51-779b-491a-9773-cb5f90cef11e","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_Purchase","primaryKey":"ID"},{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_PurchaseList","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_Purchase","field":"IsCompleted"},"steps":[{"id":"122d7c1a-6479-4537-bb4d-b982d81d623d","name":"填写申请","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":28,"y":50,"width":114,"height":54},"behavior":{"flowType":"1","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"205be606-8380-4ec9-8335-c605e41b72c8","name":"部门审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"后续步骤说明：金额小于1000元由公办室直接采购,大于等于1000元由分管领导审核,大于等于3000元由总经理审核,大于等于5000元需要领导会签","position":{"x":180,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"9","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"d01ecc37-98e9-4901-8816-82efc70eb219","name":"分管领导审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":351,"y":98,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"10","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"05c306f4-2896-4d12-85fd-195ecfb8db0e","name":"总经理审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":351,"y":165,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","name":"领导会签","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":353,"y":231,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_c2d3012a-c816-4149-ac04-9da0b60e3867","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","name":"办公室采购","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":529,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":1},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":2}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"3167d841-b10b-403a-b4ca-3bb54c60bee0","name":"通知发起人领用","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":680,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":0}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"572db0d0-1bab-4462-9811-d8360de3ef8a","from":"122d7c1a-6479-4537-bb4d-b982d81d623d","to":"205be606-8380-4ec9-8335-c605e41b72c8","customMethod":"","sql":"","noaccordMsg":""},{"id":"da353191-ff6f-489d-a37c-2a52e2ae4839","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"d01ecc37-98e9-4901-8816-82efc70eb219","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=1000 and (select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<3000"},{"id":"9c2e5b80-7101-4268-b080-1967c693f0aa","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"05c306f4-2896-4d12-85fd-195ecfb8db0e","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=3000 and (select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<5000"},{"id":"faaf7a13-7e5f-423e-bf0f-39e4206daef1","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=5000"},{"id":"3443bfbe-6076-4e24-9eb3-a046485cda20","from":"05c306f4-2896-4d12-85fd-195ecfb8db0e","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"79d5384e-53f4-4ecf-8af8-a7ab4d718fef","from":"d01ecc37-98e9-4901-8816-82efc70eb219","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"aeb9c6f5-d51a-4e19-b3f2-91e060a4e5f6","from":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"f42ded8b-50d4-46c4-8d0b-38a666f10b01","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<1000"},{"id":"988033e4-ef06-48f8-9b80-f96c47807aaa","from":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","to":"3167d841-b10b-403a-b4ca-3bb54c60bee0","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A38E00FE2645 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"c41d6eb9-e5f5-4171-a457-0cafe6b22757","name":"物资采购申请","type":"90d6ad24-28f5-49d3-ac3f-cb473fb64cc5","manager":"96f75a51-779b-491a-9773-cb5f90cef11e","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_Purchase","primaryKey":"ID"},{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_PurchaseList","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_Purchase","field":"IsCompleted"},"steps":[{"id":"122d7c1a-6479-4537-bb4d-b982d81d623d","name":"填写申请","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":28,"y":50,"width":114,"height":54},"behavior":{"flowType":"1","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"205be606-8380-4ec9-8335-c605e41b72c8","name":"部门审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"后续步骤说明：金额小于1000元由公办室直接采购,大于等于1000元由分管领导审核,大于等于3000元由总经理审核,大于等于5000元需要领导会签","position":{"x":180,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"9","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"d01ecc37-98e9-4901-8816-82efc70eb219","name":"分管领导审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":351,"y":98,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"10","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"05c306f4-2896-4d12-85fd-195ecfb8db0e","name":"总经理审核","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":351,"y":165,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","name":"领导会签","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":353,"y":231,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_c2d3012a-c816-4149-ac04-9da0b60e3867","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","name":"办公室采购","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":529,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":1},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":2}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"3167d841-b10b-403a-b4ca-3bb54c60bee0","name":"通知发起人领用","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":680,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fe9eb92c-66a3-41c3-a79e-a860887c63a9","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":0}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.UserDept","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.SqDateTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.TypeOther","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.Note","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_Purchase.IsCompleted","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.PurchaseID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Name","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Model","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Unit","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Quantity","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Sum1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Date","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_PurchaseList.Note","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"572db0d0-1bab-4462-9811-d8360de3ef8a","from":"122d7c1a-6479-4537-bb4d-b982d81d623d","to":"205be606-8380-4ec9-8335-c605e41b72c8","customMethod":"","sql":"","noaccordMsg":""},{"id":"da353191-ff6f-489d-a37c-2a52e2ae4839","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"d01ecc37-98e9-4901-8816-82efc70eb219","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=1000 and (select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<3000"},{"id":"9c2e5b80-7101-4268-b080-1967c693f0aa","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"05c306f4-2896-4d12-85fd-195ecfb8db0e","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=3000 and (select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<5000"},{"id":"faaf7a13-7e5f-423e-bf0f-39e4206daef1","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)>=5000"},{"id":"3443bfbe-6076-4e24-9eb3-a046485cda20","from":"05c306f4-2896-4d12-85fd-195ecfb8db0e","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"79d5384e-53f4-4ecf-8af8-a7ab4d718fef","from":"d01ecc37-98e9-4901-8816-82efc70eb219","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"aeb9c6f5-d51a-4e19-b3f2-91e060a4e5f6","from":"b4d9efa0-23d5-49e3-8fdd-403a06b37ca2","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"","noaccordMsg":""},{"id":"f42ded8b-50d4-46c4-8d0b-38a666f10b01","from":"205be606-8380-4ec9-8335-c605e41b72c8","to":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","customMethod":"","sql":"(select sum(sum1) from TempTest_PurchaseList where PurchaseID=TempTest_Purchase.ID)<1000"},{"id":"988033e4-ef06-48f8-9b80-f96c47807aaa","from":"dbe24bf8-981c-4f83-b936-f671fe1b4f57","to":"3167d841-b10b-403a-b4ca-3bb54c60bee0","customMethod":"","sql":"","noaccordMsg":""}]}', 2)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'86875775-2f25-443d-ac42-57124f3479a5', N'新闻发布', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A33A016564C5 AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'{"id":"86875775-2f25-443d-ac42-57124f3479a5","name":"新闻发布","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_News","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_News","field":"State"},"steps":[{"id":"a292842c-3041-4492-b098-82092a3dd651","name":"编辑新闻","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fb298019-4aba-405c-ab4e-6a24400eb769","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Contents","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.State","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"18337d9c-be91-4963-8d0a-ae188829a3b6","name":"审核新闻","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fb298019-4aba-405c-ab4e-6a24400eb769","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.State","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"e7f35492-3b0c-4869-8afb-40c6e289bafe","from":"a292842c-3041-4492-b098-82092a3dd651","to":"18337d9c-be91-4963-8d0a-ae188829a3b6","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A3AE00F82DF0 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"86875775-2f25-443d-ac42-57124f3479a5","name":"新闻发布","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_News","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_News","field":"State"},"steps":[{"id":"a292842c-3041-4492-b098-82092a3dd651","name":"编辑新闻","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fb298019-4aba-405c-ab4e-6a24400eb769","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Contents","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.State","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"18337d9c-be91-4963-8d0a-ae188829a3b6","name":"审核新闻","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fb298019-4aba-405c-ab4e-6a24400eb769","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Title1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_News.State","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"e7f35492-3b0c-4869-8afb-40c6e289bafe","from":"a292842c-3041-4492-b098-82092a3dd651","to":"18337d9c-be91-4963-8d0a-ae188829a3b6","customMethod":"","sql":"","noaccordMsg":""}]}', 2)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'7cbe9adf-f2f0-4c42-aa16-8a0e01cceb73', N'请假1', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A38401785E82 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"7cbe9adf-f2f0-4c42-aa16-8a0e01cceb73","name":"请假1","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"ddbac27a-6304-4492-9953-3831ef2ca773","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"261add53-0856-4361-8785-c6ca48a9622d","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"6530203d-3608-4ee7-9410-74b780b5dbad","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"261add53-0856-4361-8785-c6ca48a9622d","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"693fc416-8721-402d-bd10-09f71d72b3db","from":"ddbac27a-6304-4492-9953-3831ef2ca773","to":"6530203d-3608-4ee7-9410-74b780b5dbad","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A38401785EFC AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"7cbe9adf-f2f0-4c42-aa16-8a0e01cceb73","name":"请假1","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"ddbac27a-6304-4492-9953-3831ef2ca773","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"261add53-0856-4361-8785-c6ca48a9622d","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"6530203d-3608-4ee7-9410-74b780b5dbad","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"261add53-0856-4361-8785-c6ca48a9622d","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"693fc416-8721-402d-bd10-09f71d72b3db","from":"ddbac27a-6304-4492-9953-3831ef2ca773","to":"6530203d-3608-4ee7-9410-74b780b5dbad","customMethod":"","sql":"","noaccordMsg":""}]}', 4)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'228e2aff-e2b1-4fa6-8414-a7ae387c550b', N'test111111', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A35C011B7817 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"228e2aff-e2b1-4fa6-8414-a7ae387c550b","name":"test111111","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"ecbbd989-1d20-49e6-9f83-4d116ac632ac","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"8055e2ca-5f23-4f79-9afa-1d3a293f4d3d","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"421349bc-d7c2-492f-b474-c772d6cd7222","from":"ecbbd989-1d20-49e6-9f83-4d116ac632ac","to":"8055e2ca-5f23-4f79-9afa-1d3a293f4d3d","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A371012D93F4 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"228e2aff-e2b1-4fa6-8414-a7ae387c550b","name":"test111111","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"ecbbd989-1d20-49e6-9f83-4d116ac632ac","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"8055e2ca-5f23-4f79-9afa-1d3a293f4d3d","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"421349bc-d7c2-492f-b474-c772d6cd7222","from":"ecbbd989-1d20-49e6-9f83-4d116ac632ac","to":"8055e2ca-5f23-4f79-9afa-1d3a293f4d3d","customMethod":"","sql":"","noaccordMsg":""}]}', 4)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'06c95070-552e-4c91-acbe-aa7df709bf60', N'vvvvvvvvvvvvv', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A371012CFEBF AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"06c95070-552e-4c91-acbe-aa7df709bf60","name":"vvvvvvvvvvvvv","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"78729c72-7539-492b-853a-592754a89e49","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"236a33e4-fadf-46ee-a32e-01c8be21953f","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"da83e0b8-8926-466f-9b7c-7a3fdc168192","from":"78729c72-7539-492b-853a-592754a89e49","to":"236a33e4-fadf-46ee-a32e-01c8be21953f","customMethod":"","sql":"","noaccordMsg":""}]}', NULL, NULL, NULL, 4)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'538beb68-4e56-439e-b50f-be6b3b9f4957', N'自定义表单', N'90d6ad24-28f5-49d3-ac3f-cb473fb64cc5', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', CAST(0x0000A355010D142A AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"538beb68-4e56-439e-b50f-be6b3b9f4957","name":"自定义表单","type":"90d6ad24-28f5-49d3-ac3f-cb473fb64cc5","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_CustomForm","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_CustomForm","field":"FlowCompleted"},"steps":[{"id":"1844d7a6-5f8f-445e-b4b8-ec2ea2c0e2f7","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"7f4c74d6-4113-4196-ada8-70c8e30a4a55","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.FlowCompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"51ebcb52-b939-432f-b6f3-4f9543cb3255","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"7f4c74d6-4113-4196-ada8-70c8e30a4a55","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":0},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":1},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":2}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.FlowCompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"4771f439-16be-4b1a-aecd-a77e359ea214","from":"1844d7a6-5f8f-445e-b4b8-ec2ea2c0e2f7","to":"51ebcb52-b939-432f-b6f3-4f9543cb3255","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A38300BCE7CF AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"538beb68-4e56-439e-b50f-be6b3b9f4957","name":"自定义表单","type":"90d6ad24-28f5-49d3-ac3f-cb473fb64cc5","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest_CustomForm","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest_CustomForm","field":"FlowCompleted"},"steps":[{"id":"1844d7a6-5f8f-445e-b4b8-ec2ea2c0e2f7","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"7f4c74d6-4113-4196-ada8-70c8e30a4a55","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.FlowCompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"51ebcb52-b939-432f-b6f3-4f9543cb3255","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"7f4c74d6-4113-4196-ada8-70c8e30a4a55","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":0},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":1},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":2}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.Contents","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest_CustomForm.FlowCompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"4771f439-16be-4b1a-aecd-a77e359ea214","from":"1844d7a6-5f8f-445e-b4b8-ec2ea2c0e2f7","to":"51ebcb52-b939-432f-b6f3-4f9543cb3255","customMethod":"","sql":"","noaccordMsg":""}]}', 2)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'00a66778-8f22-4b90-a5a4-cf8a64e8ee5f', N'qqqqqqqqqqqqqqq', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A371012CE4AC AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"00a66778-8f22-4b90-a5a4-cf8a64e8ee5f","name":"qqqqqqqqqqqqqqq","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"5cb50b43-e118-4673-86fc-d2c7867ae547","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"b1ec50f0-56f1-40d0-8d94-1fd2197a8c24","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"ae1128c1-09e1-4d39-af3e-1b9db59ecfc2","from":"5cb50b43-e118-4673-86fc-d2c7867ae547","to":"b1ec50f0-56f1-40d0-8d94-1fd2197a8c24","customMethod":"","sql":"","noaccordMsg":""}]}', NULL, NULL, NULL, 4)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'请假申请', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378', CAST(0x0000A22000AE1E2B AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"a6509c1b-f49f-47a6-829d-ec43b9210eb2","name":"请假申请","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","instanceManager":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","name":"填写请假单","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":173,"y":114,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"0","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":1},{"id":"other_splitline","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"ce0c165a-778b-4817-a9c5-21f862f1c96e","name":"领导审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"2.5","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":492,"y":28,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"fabd66d0-e260-4a4b-b774-3302a1617cc5","name":"部门主管审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"请假天数大于3天由人事部经理审批，大于5天由领导审批。","position":{"x":322,"y":114,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"9","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":2},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":3},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":4},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":5}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","name":"反馈发起人","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":585,"y":114,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":1},{"id":"other_splitline","sort":2},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":3},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":4},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":5}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"baac846e-4ee2-44ee-b684-8cedb39578bb","name":"人事部经理审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":494,"y":193,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_1acf9c22-bfb6-4673-a698-a58233747b92","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":2},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":3},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"028177ab-ffe6-4e33-b210-6aeb94f3a0fd","from":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","to":"fabd66d0-e260-4a4b-b774-3302a1617cc5","customMethod":"","noaccordMsg":"","sql":""},{"id":"a1346972-fa3b-4133-8730-142de051d5c2","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"Days<=3"},{"id":"dba640aa-6016-405e-8417-11b2ec1abeb4","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"ce0c165a-778b-4817-a9c5-21f862f1c96e","customMethod":"","noaccordMsg":"","sql":"Days>5"},{"id":"8819d082-8a8c-4d4e-b7c9-6752eff8ec2a","from":"ce0c165a-778b-4817-a9c5-21f862f1c96e","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"1a7746f0-3a3d-4937-8e3a-65fe0646bff8","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"baac846e-4ee2-44ee-b684-8cedb39578bb","customMethod":"","noaccordMsg":"","sql":"Days>3 AND Days<=5"},{"id":"3e639661-e46c-4041-b3ba-3d1d63212b67","from":"baac846e-4ee2-44ee-b684-8cedb39578bb","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A39D00BA0ECD AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"a6509c1b-f49f-47a6-829d-ec43b9210eb2","name":"请假申请","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","instanceManager":"u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_23c3e9fc-6d8a-4ea0-925a-0a0671d61378","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","name":"填写请假单","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":173,"y":114,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"0","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"719c6c30-3d6a-44e2-8730-637c651f1df7","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":1},{"id":"other_splitline","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"ce0c165a-778b-4817-a9c5-21f862f1c96e","name":"领导审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"2.5","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":492,"y":28,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"u_8086d01f-7ae3-402e-b543-d34f1059f79a","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"fabd66d0-e260-4a4b-b774-3302a1617cc5","name":"部门主管审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"请假天数大于3天由人事部经理审批，大于5天由领导审批。","position":{"x":322,"y":114,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"9","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":2},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":3},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":4},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":5}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","name":"反馈发起人","opinionDisplay":"1","expiredPrompt":"1","signatureType":"0","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":585,"y":114,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"29b358e1-ad64-4f09-846c-4554ae6b85c4","sort":1},{"id":"other_splitline","sort":2},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":3},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":4},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":5}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"baac846e-4ee2-44ee-b684-8cedb39578bb","name":"人事部经理审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":494,"y":193,"width":114,"height":54},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"u_1acf9c22-bfb6-4673-a698-a58233747b92","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"2a1070f6-af14-45b3-8292-fe0962701c04","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":2},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":3},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"028177ab-ffe6-4e33-b210-6aeb94f3a0fd","from":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","to":"fabd66d0-e260-4a4b-b774-3302a1617cc5","customMethod":"","noaccordMsg":"","sql":""},{"id":"a1346972-fa3b-4133-8730-142de051d5c2","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"Days<=3"},{"id":"dba640aa-6016-405e-8417-11b2ec1abeb4","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"ce0c165a-778b-4817-a9c5-21f862f1c96e","customMethod":"","noaccordMsg":"","sql":"Days>5"},{"id":"8819d082-8a8c-4d4e-b7c9-6752eff8ec2a","from":"ce0c165a-778b-4817-a9c5-21f862f1c96e","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"1a7746f0-3a3d-4937-8e3a-65fe0646bff8","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"baac846e-4ee2-44ee-b684-8cedb39578bb","customMethod":"","noaccordMsg":"","sql":"Days>3 AND Days<=5"},{"id":"3e639661-e46c-4041-b3ba-3d1d63212b67","from":"baac846e-4ee2-44ee-b684-8cedb39578bb","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""}]}', 2)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'f5ee3288-75ed-4419-993d-f738e6d151ed', N'134132', N'48d05cf9-81c2-4713-87ab-1a45321500de', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A371012D226A AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"f5ee3288-75ed-4419-993d-f738e6d151ed","name":"134132","type":"48d05cf9-81c2-4713-87ab-1a45321500de","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"flowcompleted"},"steps":[{"id":"6792d1d5-4e83-413a-aba0-f33057cb1aff","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":10,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"ec9d21f5-c615-4978-9636-4f5042cf23cb","name":"新步骤","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"0","archivesParams":"","note":"","position":{"x":180,"y":50,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"fff225cb-5c78-4851-b5a6-8db2cf4e13b6","name":"","type":"626480b3-eaa9-4705-acbb-82901db4fda4","srot":0}],"buttons":[{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":0},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":1}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Days","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.flowcompleted","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"54b4fb0d-1a13-4d1e-af6e-7e0ade0bc2e6","from":"6792d1d5-4e83-413a-aba0-f33057cb1aff","to":"ec9d21f5-c615-4978-9636-4f5042cf23cb","customMethod":"","sql":"","noaccordMsg":""}]}', NULL, NULL, NULL, 4)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'29b358e1-ad64-4f09-846c-4554ae6b85c4', N'打印', N'/Images/ico/printer.gif', N'formPrint();', N'打印当前表单', 10)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'da7c699c-3c55-4657-8781-6881ac9117b7', N'刷新', N'/Images/ico/Refresh.png', N'window.location=window.location;', N'刷新当前流程页面', 6)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'347b811c-7568-4472-9a61-6c31f66980ae', N'转交', N'/Images/ico/arrow_medium_lower_right.png', N'flowRedirect();', N'将当前任务转交给其他人处理', 9)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'86b7fa6c-891f-4565-9309-81672d3ba80a', N'退回', N'/Images/ico/arrow_medium_left.png', N'flowBack();', N'退回到上一步或某一步', 2)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'954effa8-03b8-461a-aaa8-8727d090dcb9', N'完成', N'/Images/ico/role.gif', N'flowCompleted();', N'完成流程，流程最后一步配置此按钮', 3)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'3b271f67-0433-4082-ad1a-8df1b967b879', N'保存', N'/Images/ico/save.gif', N'flowSave();', N'当前任务处理后可先保存，下次再提交任务', 4)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'8982b97c-adba-4a3a-afd9-9a3ef6ff12d8', N'发送', N'/Images/ico/arrow_medium_right.png', N'flowSend();', N'发送到下一步', 1)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'da606ff2-cdf2-4363-8212-cc7c633fb2f2', N'关闭', N'/Images/ico/application_osx_remove.png', N'if(confirm("您真的关闭窗口吗?"))
{
      top.mainTab.closeTab();
}', N'关闭窗口', 5)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'b8a7af17-7ad5-4699-b679-d421691dd737', N'过程查看', N'/Images/ico/topic.gif', N'showProcess();', N'查看流程处理过程', 8)
INSERT [dbo].[WorkFlowComment] ([ID], [MemberID], [Comment], [Type], [Sort]) VALUES (N'53faa4e2-1396-48ae-8153-087101ee0d5c', N'', N'不同意', 0, 2)
INSERT [dbo].[WorkFlowComment] ([ID], [MemberID], [Comment], [Type], [Sort]) VALUES (N'6ea44f47-8f2a-4eb6-bf34-dfd4c12d420a', N'', N'同意', 0, 1)
INSERT [dbo].[WorkFlowComment] ([ID], [MemberID], [Comment], [Type], [Sort]) VALUES (N'29f87ad4-c4bd-4a37-8f46-ea0c26471a91', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'拟同意', 1, 1)
INSERT [dbo].[WorkFlowDelegation] ([ID], [UserID], [StartTime], [EndTime], [FlowID], [ToUserID], [WriteTime], [Note]) VALUES (N'00000000-0000-0000-0000-000000000000', N'0362149c-af22-491f-baef-37bffcc1fd5c', CAST(0x0000A37800DFD8B0 AS DateTime), CAST(0x0000A39D00DFD8B0 AS DateTime), N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'1acf9c22-bfb6-4673-a698-a58233747b92', CAST(0x0000A3AD00AF3391 AS DateTime), NULL)
INSERT [dbo].[WorkFlowDelegation] ([ID], [UserID], [StartTime], [EndTime], [FlowID], [ToUserID], [WriteTime], [Note]) VALUES (N'230378b0-af17-426e-a9b8-8e1c4de80cd2', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A34D01731030 AS DateTime), CAST(0x0000A34E01735680 AS DateTime), N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'0362149c-af22-491f-baef-37bffcc1fd5c', CAST(0x0000A383010B12D7 AS DateTime), N'gg')
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [Type], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [SubTableJson], [Attribute], [Status]) VALUES (N'5646bede-9d15-96d6-01e4-0f763c306ed5', N'请假', N'626480b3-eaa9-4705-acbb-82901db4fda4', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A3100153FA8B AS DateTime), CAST(0x0000A34F01042B02 AS DateTime), N'<p style="text-align: center;"><br/></p><p><br/></p><p style="text-align: center;"><span style="font-size: 24px;"><strong>&nbsp;<input ondblclick="if(editor.ui._dialogs.formflownameDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formflownameDialog.iframeUrl=editor.ui._dialogs.formflownameDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formflownameDialog.open();" title="双击可设置属性" value="流程名称" isflow="1" type1="flow_flowname" fontcolor="" fontsize="24px" type="text"/>-<input ondblclick="if(editor.ui._dialogs.formflowstepnameDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formflowstepnameDialog.iframeUrl=editor.ui._dialogs.formflowstepnameDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formflowstepnameDialog.open();" title="双击可设置属性" value="流程当前步骤名称" isflow="1" type1="flow_flowstepname" fontcolor="" fontsize="24px" type="text"/><span style="font-size: 16px;"><span style="font-size: 18px;"> </span></span></strong></span></p><p>&nbsp;<br/></p><table class="flowformtable" cellpadding="0" cellspacing="1"><tbody><tr class="firstRow"><td valign="top" width="513">请假人：<input name="TempTest.UserID" title="双击可设置属性" id="TempTest.UserID" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" value="组织机构选择" more="0" type1="flow_org" defaultvalue="0" org_type=",2," type="text"/></td><td valign="top" width="513">所在部门：<input name="TempTest.DeptID" title="双击可设置属性" id="TempTest.DeptID" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" value="组织机构选择" more="0" type1="flow_org" defaultvalue="2" org_type=",0," org_rang="0"/></td></tr><tr><td valign="top" width="513">开始时间：<input name="TempTest.Date1" title="双击可设置属性" id="TempTest.Date1" ondblclick="if(editor.ui._dialogs.formdatetimeDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formdatetimeDialog.iframeUrl=editor.ui._dialogs.formdatetimeDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formdatetimeDialog.open();" value="日期时间选择" type1="flow_datetime" istime="1" defaultvalue="" type="text"/></td><td valign="top" width="513">结束时间：<input name="TempTest.Date2" title="双击可设置属性" id="TempTest.Date2" ondblclick="if(editor.ui._dialogs.formdatetimeDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formdatetimeDialog.iframeUrl=editor.ui._dialogs.formdatetimeDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formdatetimeDialog.open();" value="日期时间选择" type1="flow_datetime" istime="1" defaultvalue=""/></td></tr><tr><td valign="top" width="513">请假类型：<input name="TempTest.Type" title="双击可设置属性" id="TempTest.Type" ondblclick="if(editor.ui._dialogs.formradioDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formradioDialog.iframeUrl=editor.ui._dialogs.formradioDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formradioDialog.open();" value="单选按钮组" type1="flow_radio" datasource="1" dictid="" customopts="[{&quot;title&quot;:&quot;事假&quot;,&quot;value&quot;:&quot;0&quot;},{&quot;title&quot;:&quot;病假&quot;,&quot;value&quot;:&quot;1&quot;},{&quot;title&quot;:&quot;婚假&quot;,&quot;value&quot;:&quot;2&quot;},{&quot;title&quot;:&quot;年假&quot;,&quot;value&quot;:&quot;3&quot;},{&quot;title&quot;:&quot;产假&quot;,&quot;value&quot;:&quot;4&quot;},{&quot;title&quot;:&quot;陪护假&quot;,&quot;value&quot;:&quot;5&quot;},{&quot;title&quot;:&quot;其它&quot;,&quot;value&quot;:&quot;6&quot;}]" type="text"/></td><td valign="top" width="513">请假天数：<input ondblclick="if(editor.ui._dialogs.formtextDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextDialog.iframeUrl=editor.ui._dialogs.formtextDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextDialog.open();" title="双击可设置属性" id="TempTest.Days" type1="flow_text" name="TempTest.Days" value="文本框" defaultvalue="" valuetype="4" type="text"/></td></tr><tr><td colspan="1" rowspan="1" style="word-break: break-all;" valign="top">相关附件：<input ondblclick="if(editor.ui._dialogs.formfilesDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formfilesDialog.iframeUrl=editor.ui._dialogs.formfilesDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formfilesDialog.open();" title="双击可设置属性" type1="flow_files" id="TempTest.test2" name="TempTest.test2" value="附件管理" filetype="" type="text"/>&nbsp; //如病假上传医院证明等</td><td colspan="1" rowspan="1" valign="top"><br/></td></tr><tr><td style="word-break: break-all;" colspan="2" valign="top"><p>请假事由：</p><p><input name="TempTest.Reason" title="双击可设置属性" id="TempTest.Reason" style="width: 85%; height: 70px;" ondblclick="if(editor.ui._dialogs.formtextareaDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextareaDialog.iframeUrl=editor.ui._dialogs.formtextareaDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextareaDialog.open();" maxlength="500" value="文本域" type1="flow_textarea" isflow="1" valuetype="0" defaultvalue="" width1="85%" height1="70px" type="text"/><span id="_baidu_bookmark_start_0" style="display: none; line-height: 0px;">?</span></p></td></tr></tbody></table><p>&nbsp;</p>', N'[]', N'{"name":"请假","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest","dbtablepk":"ID","dbtabletitle":"Title","apptype":"2a1070f6-af14-45b3-8292-fe0962701c04","autotitle":true,"id":"5646bede-9d15-96d6-01e4-0f763c306ed5","hasEditor":"0","validatealerttype":"1"}', 1)
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [Type], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [SubTableJson], [Attribute], [Status]) VALUES (N'9024ae44-e4b4-90aa-f603-187b1c158f52', N'请假1', N'626480b3-eaa9-4705-acbb-82901db4fda4', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38401780DC6 AS DateTime), CAST(0x0000A38401780DC6 AS DateTime), N'<p><br/></p><p><br/></p><p style="text-align: center;">请假申请<br/></p><p><br/></p><p><br/></p><table class="flowformtable" cellpadding="0" cellspacing="1"><tbody><tr class="firstRow"><td width="264" valign="top" style="word-break: break-all;">请假人：</td><td width="264" valign="top"><input ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" title="双击可设置属性" type="text" type1="flow_org" id="TempTest.UserID" name="TempTest.UserID" value="组织机构选择" defaultvalue="0" more="0" org_type=",2,"/></td><td width="264" valign="top" style="word-break: break-all;">所在部门：</td><td width="264" valign="top"><input ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" title="双击可设置属性" type="text" type1="flow_org" id="TempTest.DeptID" name="TempTest.DeptID" value="组织机构选择" defaultvalue="2" more="0" org_type=",0,"/></td></tr><tr><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td></tr><tr><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td></tr><tr><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td><td width="264" valign="top"><br/></td></tr></tbody></table><p><br/></p>', N'[]', N'{"hasEditor":"0","name":"请假1","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest","dbtablepk":"ID","dbtabletitle":"Title","apptype":"626480b3-eaa9-4705-acbb-82901db4fda4","autotitle":false,"validatealerttype":"1","id":"9024ae44-e4b4-90aa-f603-187b1c158f52"}', 2)
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [Type], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [SubTableJson], [Attribute], [Status]) VALUES (N'40e57ecf-806f-14a9-dea5-404fbbc183d6', N'新闻发布', N'626480b3-eaa9-4705-acbb-82901db4fda4', N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A33A0166A906 AS DateTime), CAST(0x0000A33A0166A906 AS DateTime), N'<p><br/></p><p style="text-align: center;"><strong><span style="font-size: 24px;">新闻发布</span></strong></p><p><br/></p><table class="flowformtable" cellpadding="0" cellspacing="1"><tbody><tr class="firstRow"><td style="word-break: break-all;" valign="top" width="1108">当前步骤：<input ondblclick="if(editor.ui._dialogs.formflowstepnameDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formflowstepnameDialog.iframeUrl=editor.ui._dialogs.formflowstepnameDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formflowstepnameDialog.open();" title="双击可设置属性" value="流程当前步骤名称" isflow="1" type1="flow_flowstepname" fontcolor="" fontsize="" type="text"/>&nbsp;<input ondblclick="if(editor.ui._dialogs.formhiddenDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formhiddenDialog.iframeUrl=editor.ui._dialogs.formhiddenDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formhiddenDialog.open();" title="双击可设置属性" style="width:45px;" readonly="readonly" type1="flow_hidden" id="TempTest_News.UserID" name="TempTest_News.UserID" value="隐藏域" defaultvalue="0" type="text"/></td></tr><tr><td style="word-break: break-all;" valign="top" width="1108">新闻标题：<input ondblclick="if(editor.ui._dialogs.formtextDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextDialog.iframeUrl=editor.ui._dialogs.formtextDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextDialog.open();" title="双击可设置属性" id="TempTest_News.Title" type1="flow_text" name="TempTest_News.Title" value="文本框" style="width:80%" width1="80%" defaultvalue="" maxlength="500" valuetype="0" type="text"/></td></tr><tr><td style="word-break: break-all;" valign="top" width="1108">内容概要：<input ondblclick="if(editor.ui._dialogs.formtextareaDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextareaDialog.iframeUrl=editor.ui._dialogs.formtextareaDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextareaDialog.open();" title="双击可设置属性" id="TempTest_News.Title1" name="TempTest_News.Title1" type1="flow_textarea" isflow="1" value="文本域" style="width:80%;height:50px" width1="80%" height1="50px" valuetype="0" defaultvalue="" maxlength="1000" type="text"/></td></tr><tr><td style="word-break: break-all;" valign="top" width="1108">新闻类别：<input ondblclick="if(editor.ui._dialogs.formselectDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formselectDialog.iframeUrl=editor.ui._dialogs.formselectDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formselectDialog.open();" title="双击可设置属性" type1="flow_select" id="TempTest_News.Type" name="TempTest_News.Type" datasource="1" dictid="" value="下拉列表框" customopts="[{&quot;title&quot;:&quot;企业动态&quot;,&quot;value&quot;:&quot;0&quot;},{&quot;title&quot;:&quot;媒体报道&quot;,&quot;value&quot;:&quot;1&quot;},{&quot;title&quot;:&quot;业界动态&quot;,&quot;value&quot;:&quot;2&quot;}]" type="text"/></td></tr><tr><td style="word-break: break-all;" valign="top" width="1108"><p>新闻内容：</p><p><input ondblclick="if(editor.ui._dialogs.formhtmlDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formhtmlDialog.iframeUrl=editor.ui._dialogs.formhtmlDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formhtmlDialog.open();" title="双击可设置属性" isflow="1" type1="flow_html" id="TempTest_News.Contents" name="TempTest_News.Contents" value="HTML编辑器" style="width:99%;height:300px" width1="99%" height1="300px" type="text"/></p></td></tr></tbody></table><p><br/></p>', N'[]', N'{"hasEditor":"0","name":"新闻发布","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest_News","dbtablepk":"ID","dbtabletitle":"Title","apptype":"流程表单","autotitle":false,"validatealerttype":"1","id":"40e57ecf-806f-14a9-dea5-404fbbc183d6"}', 1)
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [Type], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [SubTableJson], [Attribute], [Status]) VALUES (N'f307d89f-06a9-6f63-d7c5-90f7e8521d35', N'物品申购单', N'626480b3-eaa9-4705-acbb-82901db4fda4', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A325016CF403 AS DateTime), CAST(0x0000A38E010EB9C2 AS DateTime), N'<p><br/></p><p><br/></p><p style="text-align: center;"><span style="font-size: 24px;"><strong>物资采购申请单</strong></span></p><p><span style="font-size: 12px;"><strong><br/></strong></span></p><table class="flowformtable" cellspacing="1" cellpadding="0" data-sort="sortDisabled"><tbody><tr class="firstRow"><td valign="top" style="-ms-word-break: break-all;" colspan="2">标题：<input name="TempTest_Purchase.Title" title="双击可设置属性" id="TempTest_Purchase.Title" style="width: 80%;" ondblclick="if(editor.ui._dialogs.formtextDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextDialog.iframeUrl=editor.ui._dialogs.formtextDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextDialog.open();" type="text" maxlength="500" value="文本框" type1="flow_text" defaultvalue="" valuetype="0" width1="80%"/></td></tr><tr><td width="513" valign="top" style="-ms-word-break: break-all;">申请日期：<input name="TempTest_Purchase.SqDateTime" title="双击可设置属性" id="TempTest_Purchase.SqDateTime" ondblclick="if(editor.ui._dialogs.formdatetimeDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formdatetimeDialog.iframeUrl=editor.ui._dialogs.formdatetimeDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formdatetimeDialog.open();" type="text" value="日期时间选择" type1="flow_datetime" defaultvalue="4" istime="0"/></td><td width="513" valign="middle" style="-ms-word-break: break-all;">所在步骤：<input title="双击可设置属性" ondblclick="if(editor.ui._dialogs.formflowstepnameDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formflowstepnameDialog.iframeUrl=editor.ui._dialogs.formflowstepnameDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formflowstepnameDialog.open();" type="text" value="流程当前步骤名称" type1="flow_flowstepname" isflow="1" fontsize="" fontcolor=""/></td></tr><tr><td width="513" valign="top" style="-ms-word-break: break-all;">申请人：<input name="TempTest_Purchase.UserID" title="双击可设置属性" id="TempTest_Purchase.UserID" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" type="text" value="组织机构选择" type1="flow_org" more="0" defaultvalue="0" org_type=",2,"/></td><td width="513" valign="top" style="-ms-word-break: break-all;">所在部门：<input name="TempTest_Purchase.UserDept" title="双击可设置属性" id="TempTest_Purchase.UserDept" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" type="text" value="组织机构选择" type1="flow_org" more="0" defaultvalue="2" org_type=",0," org_rang="0"/></td></tr><tr><td valign="top" style="-ms-word-break: break-all;" colspan="2"><p>申购物品明细：</p><p><input ondblclick="if(editor.ui._dialogs.formsubtableDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formsubtableDialog.iframeUrl=editor.ui._dialogs.formsubtableDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formsubtableDialog.open();" title="双击可设置属性" type="text" isflow="1" readonly="readonly" type1="flow_subtable" id="TempTest_PurchaseList_ID_ID_PurchaseID" style="width:99%;height:50px;" value="从表"/></p></td></tr><tr><td valign="top" style="-ms-word-break: break-all;" rowspan="1" colspan="2">备注：<input name="TempTest_Purchase.Note" title="双击可设置属性" id="TempTest_Purchase.Note" style="width: 80%; height: 40px;" ondblclick="if(editor.ui._dialogs.formtextareaDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextareaDialog.iframeUrl=editor.ui._dialogs.formtextareaDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextareaDialog.open();" type="text" value="文本域" type1="flow_textarea" isflow="1" defaultvalue="" valuetype="0"/></td></tr></tbody></table><p>&nbsp;</p>', N'[{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"1","showname":"物品名称","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"1","showname":"规格型号","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"单位","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"数量","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"1","text_maxlength":"","text_width":"50px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"1","showname":"预计金额","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"1","showname":"要求日期","editmode":{"editmode":"datetime","datetime_defaultvalue":"4","datetime_width":"80px","datetime_min":"2014/05/01","datetime_max":"2014/05/30","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"1","showname":"物品类别","editmode":{"editmode":"select","select_width":"","select_ds":"select_dsstring","select_ds_dict":"","select_ds_sql":"","select_ds_string":"0,办公文具;1,办公家具;2,电脑外设;3,电器;4,保洁用品;5,礼品;6,其它","title":"下拉列表"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"1","showname":"申购原因","editmode":{"editmode":"files","files_width":"100px","files_filetype":"","title":"附件"},"issum":"0","index":""}],"id":"subtable_TempTest_PurchaseList_ID_ID_PurchaseID"},{"secondtable":"UsersInfo","primarytablefiled":"ID","secondtableprimarykey":"UserID","secondtablerelationfield":"Officer","colnums":[{"name":"UsersInfo_UserID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Officer","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Tel","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Fax","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Address","isshow":"1","showname":"fsdfdsaf","editmode":{"editmode":"datetime","datetime_defaultvalue":"","datetime_width":"","datetime_min":"","datetime_max":"","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"UsersInfo_Email","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_QQ","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_MSN","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Note","isshow":"0","showname":"","editmode":{},"issum":"0","index":""}],"id":"subtable_UsersInfo_ID_UserID_Officer"},{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"0","showname":"","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"0","showname":"","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"0","showname":"","editmode":{},"issum":"0","index":""}],"id":"subtable_TempTest_PurchaseList_ID_ID_PurchaseID"},{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"1","showname":"物品名称","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"100px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"1","showname":"规格型号","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"100px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"单位","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"数量","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"1","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"1","showname":"预计金额","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"80px","title":"文本框"},"issum":"1","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"1","showname":"要求日期","editmode":{"editmode":"datetime","datetime_defaultvalue":"","datetime_width":"70px","datetime_min":"","datetime_max":"","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"1","showname":"申购原因","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""}],"id":"TempTest_PurchaseList_ID_ID_PurchaseID"}]', N'{"name":"物品申购单","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest_Purchase","dbtablepk":"ID","dbtabletitle":"Title","apptype":"流程表单","autotitle":false,"id":"f307d89f-06a9-6f63-d7c5-90f7e8521d35","hasEditor":"0","validatealerttype":"2"}', 1)
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [Type], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [SubTableJson], [Attribute], [Status]) VALUES (N'ed4c778b-d04d-4e5d-b9e9-c02846222de5', N'12343214', N'626480b3-eaa9-4705-acbb-82901db4fda4', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37700E39EDE AS DateTime), CAST(0x0000A37700E39EDE AS DateTime), N'<p>&nbsp;</p><p>&nbsp;</p><p style="text-align: center;"><span style="font-size: 24px;"><strong>物资采购申请单</strong></span></p><p><span style="font-size: 12px;"><strong><br/></strong></span></p><table class="flowformtable" cellspacing="1" cellpadding="0" data-sort="sortDisabled"><tbody><tr class="firstRow"><td valign="top" style="-ms-word-break: break-all;" colspan="2">标题：<input name="TempTest_Purchase.Title" title="双击可设置属性" id="TempTest_Purchase.Title" style="width: 80%;" ondblclick="if(editor.ui._dialogs.formtextDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextDialog.iframeUrl=editor.ui._dialogs.formtextDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextDialog.open();" type="text" maxlength="500" value="文本框" type1="flow_text" defaultvalue="" valuetype="0" width1="80%"/></td></tr><tr><td width="513" valign="top" style="-ms-word-break: break-all;">申请日期：<input name="TempTest_Purchase.SqDateTime" title="双击可设置属性" id="TempTest_Purchase.SqDateTime" ondblclick="if(editor.ui._dialogs.formdatetimeDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formdatetimeDialog.iframeUrl=editor.ui._dialogs.formdatetimeDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formdatetimeDialog.open();" type="text" value="日期时间选择" type1="flow_datetime" defaultvalue="4" istime="0"/></td><td width="513" valign="middle" style="-ms-word-break: break-all;">所在步骤：<input title="双击可设置属性" ondblclick="if(editor.ui._dialogs.formflowstepnameDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formflowstepnameDialog.iframeUrl=editor.ui._dialogs.formflowstepnameDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formflowstepnameDialog.open();" type="text" value="流程当前步骤名称" type1="flow_flowstepname" isflow="1" fontsize="" fontcolor=""/></td></tr><tr><td width="513" valign="top" style="-ms-word-break: break-all;">申请人：<input name="TempTest_Purchase.UserID" title="双击可设置属性" id="TempTest_Purchase.UserID" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" type="text" value="组织机构选择" type1="flow_org" more="0" defaultvalue="0" org_type=",2,"/></td><td width="513" valign="top" style="-ms-word-break: break-all;">所在部门：<input name="TempTest_Purchase.UserDept" title="双击可设置属性" id="TempTest_Purchase.UserDept" ondblclick="if(editor.ui._dialogs.formorgDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formorgDialog.iframeUrl=editor.ui._dialogs.formorgDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formorgDialog.open();" type="text" value="组织机构选择" type1="flow_org" more="0" defaultvalue="2" org_type=",0," org_rang="0"/></td></tr><tr><td valign="top" style="-ms-word-break: break-all;" colspan="2"><p>申购物品明细：</p><p><input title="双击可设置属性" id="TempTest_PurchaseList_ID_ID_PurchaseID" style="width: 99%; height: 50px;" ondblclick="if(editor.ui._dialogs.formsubtableDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formsubtableDialog.iframeUrl=editor.ui._dialogs.formsubtableDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formsubtableDialog.open();" type="text" readonly="readonly" value="从表" type1="flow_subtable" isflow="1"/></p></td></tr><tr><td valign="top" style="-ms-word-break: break-all;" rowspan="1" colspan="2">备注：<input name="TempTest_Purchase.Note" title="双击可设置属性" id="TempTest_Purchase.Note" style="width: 80%; height: 40px;" ondblclick="if(editor.ui._dialogs.formtextareaDialog.iframeUrl.indexOf(&#39;?&#39;)==-1){editor.ui._dialogs.formtextareaDialog.iframeUrl=editor.ui._dialogs.formtextareaDialog.iframeUrl+&#39;?edit=1&#39;;}editor.ui._dialogs.formtextareaDialog.open();" type="text" value="文本域" type1="flow_textarea" isflow="1" defaultvalue="" valuetype="0"/></td></tr></tbody></table><p>&nbsp;</p>', N'[{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"1","showname":"物品名称","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"1","showname":"规格型号","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"单位","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"数量","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"1","text_maxlength":"","text_width":"50px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"1","showname":"预计金额","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"1","showname":"要求日期","editmode":{"editmode":"datetime","datetime_defaultvalue":"4","datetime_width":"80px","datetime_min":"2014/05/01","datetime_max":"2014/05/30","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"1","showname":"物品类别","editmode":{"editmode":"select","select_width":"","select_ds":"select_dsstring","select_ds_dict":"","select_ds_sql":"","select_ds_string":"0,办公文具;1,办公家具;2,电脑外设;3,电器;4,保洁用品;5,礼品;6,其它","title":"下拉列表"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"1","showname":"申购原因","editmode":{"editmode":"files","files_width":"100px","files_filetype":"","title":"附件"},"issum":"0","index":""}],"id":"subtable_TempTest_PurchaseList_ID_ID_PurchaseID"},{"secondtable":"UsersInfo","primarytablefiled":"ID","secondtableprimarykey":"UserID","secondtablerelationfield":"Officer","colnums":[{"name":"UsersInfo_UserID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Officer","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Tel","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Fax","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Address","isshow":"1","showname":"fsdfdsaf","editmode":{"editmode":"datetime","datetime_defaultvalue":"","datetime_width":"","datetime_min":"","datetime_max":"","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"UsersInfo_Email","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_QQ","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_MSN","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"UsersInfo_Note","isshow":"0","showname":"","editmode":{},"issum":"0","index":""}],"id":"subtable_UsersInfo_ID_UserID_Officer"},{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"0","showname":"","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"0","showname":"","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"0","showname":"","editmode":{},"issum":"0","index":""}],"id":"subtable_TempTest_PurchaseList_ID_ID_PurchaseID"},{"secondtable":"TempTest_PurchaseList","primarytablefiled":"ID","secondtableprimarykey":"ID","secondtablerelationfield":"PurchaseID","colnums":[{"name":"TempTest_PurchaseList_ID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_PurchaseID","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Name","isshow":"1","showname":"物品名称","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"100px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Model","isshow":"1","showname":"规格型号","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"100px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Unit","isshow":"1","showname":"单位","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Quantity","isshow":"1","showname":"数量","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"60px","title":"文本框"},"issum":"1","index":""},{"name":"TempTest_PurchaseList_Sum1","isshow":"1","showname":"预计金额","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"80px","title":"文本框"},"issum":"1","index":""},{"name":"TempTest_PurchaseList_Date","isshow":"1","showname":"要求日期","editmode":{"editmode":"datetime","datetime_defaultvalue":"","datetime_width":"70px","datetime_min":"","datetime_max":"","datetime_istime":"0","title":"日期时间"},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Type","isshow":"0","showname":"","editmode":{},"issum":"0","index":""},{"name":"TempTest_PurchaseList_Note","isshow":"1","showname":"申购原因","editmode":{"editmode":"text","text_defaultvalue":"","text_valuetype":"0","text_maxlength":"","text_width":"","title":"文本框"},"issum":"0","index":""}],"id":"TempTest_PurchaseList_ID_ID_PurchaseID"}]', N'{"name":"12343214","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest_Purchase","dbtablepk":"ID","dbtabletitle":"Title","apptype":"流程表单","autotitle":false,"id":"ed4c778b-d04d-4e5d-b9e9-c02846222de5","hasEditor":"0","validatealerttype":"2"}', 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'80d97011-57e3-44cc-949d-044c18bfa91d', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3002', N'7cf4af7a-474d-49d2-9cd0-2fabdab0b209', 0, N'wqr', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300EDABE2 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300EDABE2 AS DateTime), CAST(0x0000A38300EDAD9F AS DateTime), NULL, CAST(0x0000A3AD00B3862B AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ddd99862-1a0a-441c-b25f-045dfbb5d215', N'415586e7-06c4-4e4f-844d-06486734cf4f', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3007', N'a81920aa-3221-4030-8288-7badf21cc263', 0, N'111111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5CB97 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5CB97 AS DateTime), CAST(0x0000A3AD00B5CCD3 AS DateTime), NULL, CAST(0x0000A3AD00B5E39F AS DateTime), N'同意', 1, 3, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'2d2ea656-ae47-4ecd-9d59-05768b306031', N'1ce81542-dd87-4c36-8e0a-58e909dce5fd', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'11bb23de-0061-43f1-b6a8-0748673956fc', N'85bf3b59-24a7-4b57-ad91-bdeb8807667d', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A33A0175C51C AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A33A0175C51C AS DateTime), CAST(0x0000A33A0175D25D AS DateTime), NULL, CAST(0x0000A33A0177EA07 AS DateTime), N'同意', 0, 2, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'f45a2665-790d-4617-aad4-059dd8d86981', N'443cc37c-cd5d-4875-bf3e-d0f31ae7c465', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'c3df08c4-51f1-4ada-bea3-0f7f17c3778f', N'cb0e338f-ce10-475c-b160-d470d9151a8a', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39D00B46C90 AS DateTime), N'0362149c-af22-491f-baef-37bffcc1fd5c', N'毛明明', CAST(0x0000A39D00B46C90 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, N'该任务由徐洪指派', 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ea2485a5-7b1e-4031-a61a-0610df9280f5', N'5aa6f9f1-60a4-4a3b-891c-6543b4618f8b', N'205be606-8380-4ec9-8335-c605e41b72c8', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'd01ecc37-98e9-4901-8816-82efc70eb219', N'分管领导审核', N'2023', N'8a38087f-73cc-4899-be0e-02b0f60ab3f4', 0, N'1241234', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBFF42 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBFF42 AS DateTime), CAST(0x0000A38E00FCE2C1 AS DateTime), NULL, CAST(0x0000A38E00FD2799 AS DateTime), N'不同意', 1, 3, N'该任务由李晨新指派', 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'415586e7-06c4-4e4f-844d-06486734cf4f', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3007', N'a81920aa-3221-4030-8288-7badf21cc263', 0, N'qerqewr', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5BAE9 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5BAE9 AS DateTime), CAST(0x0000A3AD00B5BC3E AS DateTime), NULL, CAST(0x0000A3AD00B5CB97 AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ee82f092-58cf-4bd5-9c2b-07c2deabe9ba', N'495493d1-bce8-4715-8799-182295dbf341', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F3CB74 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F3CB74 AS DateTime), CAST(0x0000A38E00F3CCDF AS DateTime), NULL, CAST(0x0000A38E00F3EE9B AS DateTime), NULL, 0, 2, N'退回任务', 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'924c61b7-274e-42b4-9bc8-0fee8755c91b', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'94c1d05c-61ba-43b1-9c34-f27ddf3d9ac0', N'bae77e5a-c6f5-4263-8990-b9adfbbd9b7f', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37800E92807 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37800E92807 AS DateTime), NULL, NULL, CAST(0x0000A37800E9280D AS DateTime), N'111', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'495493d1-bce8-4715-8799-182295dbf341', N'c37ac179-d1f2-4fc0-a388-d18d0c367d74', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F2C526 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F2C526 AS DateTime), CAST(0x0000A38E00F2C681 AS DateTime), NULL, CAST(0x0000A38E00F3CB64 AS DateTime), NULL, 0, 3, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'dde5f132-0048-4d96-b1d5-1a5820c78206', N'e5368d30-115d-491d-ac97-c6384795e3b2', N'205be606-8380-4ec9-8335-c605e41b72c8', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'b4d9efa0-23d5-49e3-8fdd-403a06b37ca2', N'领导会签', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AE560 AS DateTime), N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'李晨新', CAST(0x0000A383011AE560 AS DateTime), CAST(0x0000A383011B70D9 AS DateTime), NULL, CAST(0x0000A383011B804D AS DateTime), N'同意', 1, 2, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'30f7b2e8-7dc4-484f-82cc-1f49a1e1db9d', N'e5368d30-115d-491d-ac97-c6384795e3b2', N'205be606-8380-4ec9-8335-c605e41b72c8', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'b4d9efa0-23d5-49e3-8fdd-403a06b37ca2', N'领导会签', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AE560 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AE560 AS DateTime), CAST(0x0000A383011AE6FF AS DateTime), NULL, CAST(0x0000A383011AF279 AS DateTime), N'111', 1, 2, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'b894855f-1eea-43d5-a506-27560c76356f', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'538beb68-4e56-439e-b50f-be6b3b9f4957', N'1844d7a6-5f8f-445e-b4b8-ec2ea2c0e2f7', N'新步骤', N'2', N'db06973d-8cf2-4790-9d77-895aa85d3387', 0, N'rwe', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300B64AFE AS DateTime), N'0362149c-af22-491f-baef-37bffcc1fd5c', N'毛明明', CAST(0x0000A38300B64AFE AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, N'该任务由徐洪指派', 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'5796e971-1e73-483f-8777-2e5652903c51', N'e5368d30-115d-491d-ac97-c6384795e3b2', N'205be606-8380-4ec9-8335-c605e41b72c8', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'b4d9efa0-23d5-49e3-8fdd-403a06b37ca2', N'领导会签', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AE560 AS DateTime), N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'王中平', CAST(0x0000A383011AE560 AS DateTime), CAST(0x0000A383011B4B0C AS DateTime), NULL, CAST(0x0000A383011B57A3 AS DateTime), N'同意', 1, 2, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'aa7146cb-2a1c-43db-bad8-36a8128471f4', N'80d97011-57e3-44cc-949d-044c18bfa91d', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3002', N'7cf4af7a-474d-49d2-9cd0-2fabdab0b209', 0, N'wqr', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B3862B AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B3862B AS DateTime), CAST(0x0000A3AD00B3878F AS DateTime), NULL, CAST(0x0000A3AD00B39B2A AS DateTime), N'同意', 1, 3, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'534df5d4-f555-4c10-aacd-3b7ae9f9177f', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'292381da-1773-4b2e-9164-81ce00a33b3d', N'3368aa08-03bd-4ea0-bcc2-34ad0c376d7d', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38F00E7FE5F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38F00E7FE5F AS DateTime), NULL, NULL, CAST(0x0000A38F00E7FE93 AS DateTime), N'同意', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ea85d4d7-6e64-459b-95c6-42a7e74c0b0d', N'a49e767b-856e-4fd5-bca9-82be80ac5932', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3006', N'069a48ec-3dff-4ea8-939a-2a52b36d3138', 0, N'12341234312', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B34F89 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B34F89 AS DateTime), CAST(0x0000A3AD00B35109 AS DateTime), NULL, CAST(0x0000A3AD00B36D72 AS DateTime), NULL, 0, 2, N'退回任务', 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'88e7bf73-8846-431a-b6d2-43e3426a6e02', N'534df5d4-f555-4c10-aacd-3b7ae9f9177f', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'292381da-1773-4b2e-9164-81ce00a33b3d', N'3368aa08-03bd-4ea0-bcc2-34ad0c376d7d', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38F00E7FEB6 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38F00E7FEB6 AS DateTime), CAST(0x0000A38F00E80084 AS DateTime), NULL, CAST(0x0000A38F00E8B6DA AS DateTime), N'同意', 0, 2, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'0194b80a-723c-4e3a-919d-49be86d0ae57', N'aa7146cb-2a1c-43db-bad8-36a8128471f4', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3002', N'7cf4af7a-474d-49d2-9cd0-2fabdab0b209', 0, N'wqr', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B39B2A AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B39B2A AS DateTime), CAST(0x0000A3AD00B39CD2 AS DateTime), NULL, CAST(0x0000A3AD00B3ADD3 AS DateTime), NULL, 0, 2, N'退回任务', 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'e776f867-01e3-4696-ac5a-4dd920045e38', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2021', N'1f888199-e3f7-4ae1-aa76-d04a60375322', 0, N'12342134', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00EFD16F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00EFD16F AS DateTime), CAST(0x0000A38E00EFD37E AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'8e3c5655-ffc1-4e58-a697-4e099378508a', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3830113ECA1 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3830113ECA1 AS DateTime), CAST(0x0000A3830113EDF3 AS DateTime), NULL, CAST(0x0000A383011AD68A AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'6917abd0-baae-4c68-9aa7-4f46e47bf1bb', N'd6a4c0cc-5ce5-4a70-836f-85e68caf3715', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'93536eaf-2ea1-4a29-9d88-8bad1927a96e', N'反馈发起人', N'439d7ee3-4718-405f-b846-b7f852e88e7d', N'0f013e96-7650-491e-a9a5-26e7b6f28c41', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38301079553 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38301079553 AS DateTime), CAST(0x0000A383010796D8 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'1d7d805b-82a7-4820-9985-53973969f2cb', N'ea2485a5-7b1e-4031-a61a-0610df9280f5', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2023', N'8a38087f-73cc-4899-be0e-02b0f60ab3f4', 0, N'1241234', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FD279E AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FD279E AS DateTime), CAST(0x0000A38E00FD28E6 AS DateTime), NULL, NULL, N'', 0, 1, N'退回任务', 4)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ef09089e-b20d-4772-8bc4-55d381c86d8a', N'2d2ea656-ae47-4ecd-9d59-05768b306031', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'93536eaf-2ea1-4a29-9d88-8bad1927a96e', N'反馈发起人', N'11bb23de-0061-43f1-b6a8-0748673956fc', N'85bf3b59-24a7-4b57-ad91-bdeb8807667d', 0, N'请假申请(徐洪)', N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A33A0177EA09 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A33A0177EA09 AS DateTime), CAST(0x0000A34600F0EEBF AS DateTime), NULL, CAST(0x0000A34600F1068F AS DateTime), NULL, 0, 2, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'1ce81542-dd87-4c36-8e0a-58e909dce5fd', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'11bb23de-0061-43f1-b6a8-0748673956fc', N'85bf3b59-24a7-4b57-ad91-bdeb8807667d', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A33A01759519 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A33A01759519 AS DateTime), CAST(0x0000A33A0175B4F7 AS DateTime), NULL, CAST(0x0000A33A0175C51B AS DateTime), N'同意', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'40a84511-94ca-4656-b70b-5df19fb8ff4b', N'924c61b7-274e-42b4-9bc8-0fee8755c91b', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'94c1d05c-61ba-43b1-9c34-f27ddf3d9ac0', N'bae77e5a-c6f5-4263-8990-b9adfbbd9b7f', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37800E9280F AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A37800E9280F AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'fd731c23-a6f4-4518-a374-6445c1835d75', N'46e57d31-83c9-42ac-9d1c-ff1e33275971', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F473ED AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F473ED AS DateTime), CAST(0x0000A38E00F4758D AS DateTime), NULL, CAST(0x0000A38E00F4C16A AS DateTime), NULL, 0, 2, N'退回任务', 5)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'9913bfa7-1f60-4290-ba1a-64ca906f8e0f', N'ddd99862-1a0a-441c-b25f-045dfbb5d215', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3007', N'a81920aa-3221-4030-8288-7badf21cc263', 0, N'qerqewr', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5E3A0 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5E3A0 AS DateTime), CAST(0x0000A3AD00B5E4DF AS DateTime), NULL, CAST(0x0000A3AD00B5F87A AS DateTime), NULL, 0, 2, N'退回任务', 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'9cd7139e-1ac1-4077-9906-651e9ad9b8ed', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2023', N'8a38087f-73cc-4899-be0e-02b0f60ab3f4', 0, N'1241234', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBD3C0 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBD3C0 AS DateTime), NULL, NULL, CAST(0x0000A38E00FBD3C1 AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'5aa6f9f1-60a4-4a3b-891c-6543b4618f8b', N'9cd7139e-1ac1-4077-9906-651e9ad9b8ed', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'2023', N'8a38087f-73cc-4899-be0e-02b0f60ab3f4', 0, N'1241234', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBD8C7 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00FBD8C7 AS DateTime), CAST(0x0000A38E00FBDA51 AS DateTime), NULL, CAST(0x0000A38E00FBFF41 AS DateTime), NULL, 0, 2, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'7a50f029-2e50-42f3-8989-66ee3a5088a8', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'49811d79-b78e-4359-90fa-9bc69e37b066', N'b5d8d66c-7b97-414e-a1a2-db2d1dcedbe1', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37F01831854 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37F01831854 AS DateTime), CAST(0x0000A37F01831A12 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'296923d5-e887-4232-aa7a-6f1a9792839c', N'9913bfa7-1f60-4290-ba1a-64ca906f8e0f', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3007', N'a81920aa-3221-4030-8288-7badf21cc263', 0, N'111111111111111cccccccc', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5F87A AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B5F87A AS DateTime), CAST(0x0000A3AD00B5F9EE AS DateTime), NULL, CAST(0x0000A3AE00F840BE AS DateTime), NULL, 0, 2, NULL, 4)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'a49e767b-856e-4fd5-bca9-82be80ac5932', N'6c4a7cb3-3d26-4223-ac6a-84919c3a02d3', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3006', N'069a48ec-3dff-4ea8-939a-2a52b36d3138', 0, N'12341234312', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B03D83 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B03D83 AS DateTime), CAST(0x0000A3AD00B03EDD AS DateTime), NULL, CAST(0x0000A3AD00B34F78 AS DateTime), N'同意', 1, 3, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'6c4a7cb3-3d26-4223-ac6a-84919c3a02d3', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3006', N'069a48ec-3dff-4ea8-939a-2a52b36d3138', 0, N'12341234312', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B03D7C AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B03D7C AS DateTime), NULL, NULL, CAST(0x0000A3AD00B03D80 AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'd6a4c0cc-5ce5-4a70-836f-85e68caf3715', N'8f65d1fb-c170-461a-90c5-99b310f69bd0', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'439d7ee3-4718-405f-b846-b7f852e88e7d', N'0f013e96-7650-491e-a9a5-26e7b6f28c41', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3830105621F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3830105621F AS DateTime), CAST(0x0000A3830105653A AS DateTime), NULL, CAST(0x0000A38301079551 AS DateTime), N'111', 0, 2, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'41cde5d0-eb3e-4866-9b61-888244293536', N'67f0c769-9ede-4195-b02c-aba071b22127', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'89ed8ee1-c6e4-4450-9ad5-64a474a9c667', N'c7a247f2-7a60-4e0d-a3e6-f0fdb078f8e3', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39C00BDFDDD AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39C00BDFDDD AS DateTime), CAST(0x0000A39C00BDFFA4 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'b9b06c50-8791-489d-a25a-89d13c7f177d', N'6666c367-978f-4cc7-9831-f3025e4798df', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'673d43b3-e3b4-4f15-8fe3-e44c51768e75', N'e811aa8a-babd-4429-a884-51e940a471eb', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3770111A160 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3770111A160 AS DateTime), CAST(0x0000A3770111A35C AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'f78a7c6f-33b2-46db-8aba-964a06d98c6b', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'1020', N'2c951a7f-e7d1-417c-b78c-1320fcb1500d', 0, N'55555555555555', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38301133594 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38301133594 AS DateTime), CAST(0x0000A38301133705 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'8f65d1fb-c170-461a-90c5-99b310f69bd0', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'439d7ee3-4718-405f-b846-b7f852e88e7d', N'0f013e96-7650-491e-a9a5-26e7b6f28c41', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300BA3E38 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300BA3E38 AS DateTime), CAST(0x0000A38300BA3FC4 AS DateTime), NULL, CAST(0x0000A3830105620A AS DateTime), N'111', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'ea1c14eb-5714-4ebf-bdd3-a817ed6f01d2', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'86875775-2f25-443d-ac42-57124f3479a5', N'a292842c-3041-4492-b098-82092a3dd651', N'编辑新闻', N'3005', N'983fa8ec-0eaa-453b-80ee-d1be7039b1b6', 0, N'ggggggg', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300EE57DE AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38300EE57DE AS DateTime), CAST(0x0000A38300EE5922 AS DateTime), NULL, CAST(0x0000A38300EE5A7D AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'4f1484b4-9e52-4601-9e59-aa3a2a76e139', N'fd731c23-a6f4-4518-a374-6445c1835d75', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F4C16C AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F4C16C AS DateTime), CAST(0x0000A38E00F4C2EF AS DateTime), NULL, CAST(0x0000A38E00F6D08B AS DateTime), NULL, 0, 3, NULL, 6)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'67f0c769-9ede-4195-b02c-aba071b22127', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'89ed8ee1-c6e4-4450-9ad5-64a474a9c667', N'c7a247f2-7a60-4e0d-a3e6-f0fdb078f8e3', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37F0183354F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37F0183354F AS DateTime), CAST(0x0000A37F018336B6 AS DateTime), NULL, CAST(0x0000A39C00BDFDD7 AS DateTime), N'同意', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'32e30416-35ef-499c-9a6f-aed0e3aaf8aa', N'fbd07167-07a1-4bab-9af4-dc112f9562da', N'dbe24bf8-981c-4f83-b936-f671fe1b4f57', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'3167d841-b10b-403a-b4ca-3bb54c60bee0', N'通知发起人领用', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011BB9D4 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011BB9D4 AS DateTime), CAST(0x0000A383011BBB17 AS DateTime), NULL, CAST(0x0000A383013B8E72 AS DateTime), N'同意', 0, 2, NULL, 5)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'9bb10af7-2427-47f4-bfab-bcc84660850f', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'd2e62d0a-3783-41c9-ada9-5f430bf34810', N'd88f87a2-3b61-4b81-b90c-ed003f1f6aaa', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37800E8E7DC AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A37800E8E7DC AS DateTime), NULL, NULL, CAST(0x0000A37800EA26BB AS DateTime), NULL, 0, 1, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'b6761c26-c680-469a-a7a6-c2a47644be60', N'67f0c769-9ede-4195-b02c-aba071b22127', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'89ed8ee1-c6e4-4450-9ad5-64a474a9c667', N'c7a247f2-7a60-4e0d-a3e6-f0fdb078f8e3', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39C00BDFDDA AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A39C00BDFDDA AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'8fd18394-ecc5-4fc7-9ccb-c3150b4b40e0', N'4f1484b4-9e52-4601-9e59-aa3a2a76e139', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F6D08F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F6D08F AS DateTime), CAST(0x0000A38E00F6D1D2 AS DateTime), NULL, CAST(0x0000A38E00F6E43F AS DateTime), NULL, 0, 2, N'退回任务', 7)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'e5368d30-115d-491d-ac97-c6384795e3b2', N'8e3c5655-ffc1-4e58-a697-4e099378508a', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AD692 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011AD692 AS DateTime), CAST(0x0000A383011AD832 AS DateTime), NULL, CAST(0x0000A383011AE560 AS DateTime), NULL, 0, 2, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'97b39276-e436-42fa-b094-c6e4b1640681', N'0194b80a-723c-4e3a-919d-49be86d0ae57', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3002', N'7cf4af7a-474d-49d2-9cd0-2fabdab0b209', 0, N'ggggggggggg', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B3ADD4 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B3ADD4 AS DateTime), CAST(0x0000A3AD00B3AF33 AS DateTime), NULL, CAST(0x0000A3AE00F88FED AS DateTime), NULL, 0, 2, NULL, 4)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'443cc37c-cd5d-4875-bf3e-d0f31ae7c465', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'c3df08c4-51f1-4ada-bea3-0f7f17c3778f', N'cb0e338f-ce10-475c-b160-d470d9151a8a', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39D00B46C86 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A39D00B46C86 AS DateTime), NULL, NULL, CAST(0x0000A39D00B46C8E AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'c37ac179-d1f2-4fc0-a388-d18d0c367d74', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'填写申请', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F2BEC0 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F2BEC0 AS DateTime), CAST(0x0000A38E00F2C013 AS DateTime), NULL, CAST(0x0000A38E00F2C50E AS DateTime), NULL, 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'93c4103e-6b67-4777-b017-da120f90c08b', N'8fd18394-ecc5-4fc7-9ccb-c3150b4b40e0', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F6E440 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F6E440 AS DateTime), CAST(0x0000A38E00F6E584 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 8)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'c1ad9edd-bdeb-4966-8276-daec4f710145', N'6666c367-978f-4cc7-9831-f3025e4798df', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'673d43b3-e3b4-4f15-8fe3-e44c51768e75', N'e811aa8a-babd-4429-a884-51e940a471eb', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3770111A160 AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A3770111A160 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'fbd07167-07a1-4bab-9af4-dc112f9562da', N'dde5f132-0048-4d96-b1d5-1a5820c78206', N'b4d9efa0-23d5-49e3-8fdd-403a06b37ca2', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'dbe24bf8-981c-4f83-b936-f671fe1b4f57', N'办公室采购', N'1021', N'db091181-48f7-4fd9-bc70-b31e7a5fe062', 0, N'1111111111111', N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'李晨新', CAST(0x0000A383011B804E AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A383011B804E AS DateTime), CAST(0x0000A383011BAC96 AS DateTime), NULL, CAST(0x0000A383011BB9D3 AS DateTime), N'同意', 1, 2, NULL, 4)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'eee4b109-e78a-4ba7-9bff-de8b79cb07bd', N'88e7bf73-8846-431a-b6d2-43e3426a6e02', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'ce0c165a-778b-4817-a9c5-21f862f1c96e', N'领导审批', N'292381da-1773-4b2e-9164-81ce00a33b3d', N'3368aa08-03bd-4ea0-bcc2-34ad0c376d7d', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38F00E8B6E0 AS DateTime), N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'李晨新', CAST(0x0000A38F00E8B6E0 AS DateTime), CAST(0x0000A39200B85F53 AS DateTime), CAST(0x0000A38F0111E9BD AS DateTime), NULL, NULL, NULL, 1, NULL, 3)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'3d749432-1c6e-4f4c-b285-f2c171947650', N'ea85d4d7-6e64-459b-95c6-42a7e74c0b0d', N'a292842c-3041-4492-b098-82092a3dd651', N'86875775-2f25-443d-ac42-57124f3479a5', N'18337d9c-be91-4963-8d0a-ae188829a3b6', N'审核新闻', N'3006', N'069a48ec-3dff-4ea8-939a-2a52b36d3138', 0, N'ggggggggggggg', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3AD00B36D73 AS DateTime), N'23c3e9fc-6d8a-4ea0-925a-0a0671d61378', N'阿迪敏', CAST(0x0000A3AD00B36D73 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, 4)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'6666c367-978f-4cc7-9831-f3025e4798df', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'673d43b3-e3b4-4f15-8fe3-e44c51768e75', N'e811aa8a-babd-4429-a884-51e940a471eb', 0, N'请假申请(徐洪)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3770111A136 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A3770111A136 AS DateTime), NULL, NULL, CAST(0x0000A3770111A14A AS DateTime), N'同意', 1, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'46e57d31-83c9-42ac-9d1c-ff1e33275971', N'ee82f092-58cf-4bd5-9c2b-07c2deabe9ba', N'122d7c1a-6479-4537-bb4d-b982d81d623d', N'c41d6eb9-e5f5-4171-a457-0cafe6b22757', N'205be606-8380-4ec9-8335-c605e41b72c8', N'部门审核', N'2022', N'900cc395-5788-4dca-bc47-505bcb313c61', 0, N'qwereqw', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F3EE9C AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', CAST(0x0000A38E00F3EE9C AS DateTime), CAST(0x0000A38E00F3EFFF AS DateTime), NULL, CAST(0x0000A38E00F473E6 AS DateTime), NULL, 0, 3, NULL, 4)
INSERT [dbo].[WorkGroup] ([ID], [Name], [Members], [Note]) VALUES (N'53ba1155-8739-4353-af76-8b65d77cfcfa', N'测试', N'f5d7bcaa-d12f-48a9-96d1-73e979da8042', NULL)
INSERT [dbo].[WorkGroup] ([ID], [Name], [Members], [Note]) VALUES (N'9ae062c9-f614-4465-ae16-c3f4d813a4c3', N'工作组中的工作组', N'3975624c-148f-4838-88c9-12af85d2e05e,w_53ba1155-8739-4353-af76-8b65d77cfcfa', NULL)
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Log_WriteTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF_Log_WriteTime]  DEFAULT (getdate()) FOR [WriteTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_DeptID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest] ADD  CONSTRAINT [DF_TempTest_DeptID]  DEFAULT (newid()) FOR [DeptID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_WriteTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest] ADD  CONSTRAINT [DF_TempTest_WriteTime]  DEFAULT (getdate()) FOR [WriteTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TempTest_News_State]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TempTest_News] ADD  CONSTRAINT [DF_TempTest_News_State]  DEFAULT ((0)) FOR [State]
END

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'OpenMode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打开方式{0-默认,1-弹出模态窗口,2-弹出窗口,3-新窗口}' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'OpenMode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弹出窗口宽度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Width'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弹出窗口高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Height'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Params'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Params'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Manager'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Manager'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', N'COLUMN',N'Code'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一标识符，流程应用时为流程ID，表单应用时对应表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary', @level2type=N'COLUMN',@level2name=N'Code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'AppLibrary', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'应用程序库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLibrary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'ConnectionString'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'ConnectionString'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'DBConnection', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'数据库连接表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DBConnection'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'ParentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Code'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Value'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Value'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Other'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Other'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Dictionary', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'数据字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'WriteTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'写入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'WriteTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'IPAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'URL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发生URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'URL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Contents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Contents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'Others'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'Others'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'OldXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更改前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'OldXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Log', N'COLUMN',N'NewXml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更改后' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log', @level2type=N'COLUMN',@level2name=N'NewXml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Log', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Log'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Number'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Number'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型:1 单位 2 部门 3 岗位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态  0 正常 1 冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ParentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Depth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Depth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ChildsLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下级长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ChildsLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'ChargeLeader'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分管领导' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ChargeLeader'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Leader'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本级领导' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Leader'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Organize', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'组织机构表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'UseMember'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色成员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UseMember'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Role', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Role', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'ParentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'RoleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'AppID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'AppID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Params'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Params'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Ico'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Ico'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:模板应用 1:个人应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'RoleApp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'角色应用表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleApp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Account'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Account'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'Users', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'ParentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'RoleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'AppID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'AppID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Params'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Params'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Ico'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Ico'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersApp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'用户个人应用表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersApp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Officer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Officer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Tel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Tel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'用户其它信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'OrganizeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'OrganizeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'IsMain'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否主要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'IsMain'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRelation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'用户与组织机构关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRelation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'MemberID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'RoleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', N'COLUMN',N'IsDefault'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'UsersRole', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'用户与角色关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersRole'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Manager'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Manager'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstanceManager'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例管理人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstanceManager'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'CreateUserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'DesignJSON'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'DesignJSON'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstallDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstallDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'InstallUserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'InstallUserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'RunJSON'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'RunJSON'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 1:设计中 2:已安装 3:已卸载 4:已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlow', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'流程表（设计时）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'FlowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'FlowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'StepID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'StepID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'TaskID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'TaskID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'GroupID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'GroupID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'InstanceID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'InstanceID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Contents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Contents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'Comments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'意见内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowArchives', N'COLUMN',N'WriteTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'写入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowArchives', @level2type=N'COLUMN',@level2name=N'WriteTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Ico'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Ico'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Script'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Script'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowButtons', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'流程按钮表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowButtons'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'MemberID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Comment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Comment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 0管理员添加 1用户添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowComment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'流程处理常用意见表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowComment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'StartTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'EndTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'FlowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托流程(为空时表示所有流程)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'FlowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'ToUserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被委托人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'ToUserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'WriteTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设置委托时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'WriteTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowDelegation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'工作委托表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowDelegation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateUserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateUserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'LastModifyTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Html'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单html' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Html'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'SubTableJson'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从表设置数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'SubTableJson'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Attribute'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Attribute'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：0 保存 1 编译 2作废' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowForm', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'流程表单表（设计时）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'PrevID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'PrevID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'PrevStepID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'PrevStepID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'FlowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'FlowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'StepID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'StepID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'StepName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'StepName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'InstanceID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例ID(业务表数据ID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'InstanceID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'GroupID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组ID(一个实例组ID相同)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'GroupID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'SenderTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'SenderTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'ReceiveTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'ReceiveTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'OpenTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打开时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'OpenTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'CompletedTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'CompletedTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'CompletedTime1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'CompletedTime1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Comment'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Comment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'IsSign'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否简章' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'IsSign'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 0 待处理 1打开 2完成 3退回 4他人已处理 5他人已退回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', N'COLUMN',N'Sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一组实例的序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask', @level2type=N'COLUMN',@level2name=N'Sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkFlowTask', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'流程任务表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowTask'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Members'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作组成员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Members'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', N'COLUMN',N'Note'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup', @level2type=N'COLUMN',@level2name=N'Note'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'说明' , N'SCHEMA',N'dbo', N'TABLE',N'WorkGroup', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'说明', @value=N'工作组表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkGroup'
GO
