CREATE TABLE [dbo].[tblCustomers] (
    [uid]      INT           IDENTITY (1, 1) NOT NULL,
    [name]     NVARCHAR (50) NULL,
    [email]    NVARCHAR (50) NULL,
    [password] NVARCHAR (50) NULL,
    [dtAdded]  DATETIME      NULL,
    [status]   INT           NULL,
    PRIMARY KEY CLUSTERED ([uid] ASC)
);
