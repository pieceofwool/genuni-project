USE [master]
GO
/****** Object:  Database [generation]    Script Date: 14/09/2022 11:36:39 ******/
CREATE DATABASE [generation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'generation', FILENAME = N'C:\Program Files (x86)\Parallels\Plesk\Databases\MSSQL\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\generation.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'generation_log', FILENAME = N'C:\Program Files (x86)\Parallels\Plesk\Databases\MSSQL\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\generation_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [generation] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [generation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [generation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [generation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [generation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [generation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [generation] SET ARITHABORT OFF 
GO
ALTER DATABASE [generation] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [generation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [generation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [generation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [generation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [generation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [generation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [generation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [generation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [generation] SET  ENABLE_BROKER 
GO
ALTER DATABASE [generation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [generation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [generation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [generation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [generation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [generation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [generation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [generation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [generation] SET  MULTI_USER 
GO
ALTER DATABASE [generation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [generation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [generation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [generation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [generation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [generation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [generation] SET QUERY_STORE = OFF
GO
USE [generation]
GO
/****** Object:  User [generation]    Script Date: 14/09/2022 11:36:39 ******/
CREATE USER [generation] FOR LOGIN [generation] WITH DEFAULT_SCHEMA=[generation]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [generation]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [generation]
GO
ALTER ROLE [db_datareader] ADD MEMBER [generation]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [generation]
GO
/****** Object:  Schema [generation]    Script Date: 14/09/2022 11:36:39 ******/
CREATE SCHEMA [generation]
GO
/****** Object:  View [dbo].[V_CORSI_JOIN_MATERIE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_CORSI_JOIN_MATERIE]
AS
SELECT        dbo.MATERIE.Cod_Corso, dbo.CORSI.Titolo, dbo.CORSI.Descrizione, dbo.CORSI.Data_Partenza, dbo.CORSI.Costo, dbo.MATERIE.Titolo AS MATERIE
FROM            dbo.CORSI INNER JOIN
                         dbo.MATERIE ON dbo.CORSI.Chiave = dbo.MATERIE.Cod_Corso
WHERE        (dbo.CORSI.Status_Corsi = 'A')
GO
/****** Object:  View [dbo].[V_CORSI_MATERIE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_CORSI_MATERIE]
AS
SELECT dbo.CORSI.Chiave, dbo.MATERIE.Cod_Docente, dbo.CORSI.Titolo AS Corso, dbo.CORSI.Data_Partenza, dbo.MATERIE.Titolo AS Materia, dbo.MATERIE.Costo_Docente, dbo.MATERIE.Accettato
FROM     dbo.CORSI RIGHT OUTER JOIN
                  dbo.MATERIE ON dbo.CORSI.Chiave = dbo.MATERIE.Cod_Corso
GO
/****** Object:  View [dbo].[v_CORSI_TEST_RISULTATO]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_CORSI_TEST_RISULTATO]
AS
SELECT dbo.CORSI.Chiave AS chiavecorso, dbo.CORSI.Titolo AS Corso, dbo.TEST.Chiave AS chiavetest, dbo.DOMANDE.Voti, dbo.ESTERNI.Chiave AS chiavestudente, dbo.ESTERNI.Tipo
FROM     dbo.CLASSI INNER JOIN
                  dbo.CORSI ON dbo.CLASSI.Cod_Corso = dbo.CORSI.Chiave INNER JOIN
                  dbo.TEST INNER JOIN
                  dbo.DOMANDE ON dbo.TEST.Chiave = dbo.DOMANDE.Cod_Test ON dbo.CORSI.Chiave = dbo.TEST.Cod_Corso INNER JOIN
                  dbo.ESTERNI ON dbo.CLASSI.Cod_Studente = dbo.ESTERNI.Chiave
WHERE  (dbo.ESTERNI.Tipo = '1')
GO
/****** Object:  View [dbo].[V_CORSI_UTENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_CORSI_UTENTI]
AS
SELECT        dbo.CORSI.Chiave, dbo.CORSI.Cod_Utente, SUBSTRING(CAST(dbo.CORSI.Data_Creazione AS nvarchar(50)), 1, 10) AS Data_Creazione, dbo.CORSI.Titolo, dbo.CORSI.Tipo, dbo.CORSI.Descrizione, 
                         SUBSTRING(CAST(dbo.CORSI.Data_Partenza AS nvarchar(50)), 1, 10) AS Data_Partenza, dbo.CORSI.Status_Corsi, SUBSTRING(CAST(dbo.CORSI.Data_Status AS nvarchar(50)), 1, 10) AS Data_Status, dbo.CORSI.Costo, 
                         dbo.CORSI.Avatar_Corso, dbo.CORSI.Tipo_Img, dbo.UTENTI.Nome, dbo.UTENTI.Cognome
FROM            dbo.CORSI LEFT OUTER JOIN
                         dbo.UTENTI ON dbo.CORSI.Cod_Utente = dbo.UTENTI.Chiave
GO
/****** Object:  View [dbo].[V_CORSISELECTALL_DOCENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[V_CORSISELECTALL_DOCENTI]
AS
SELECT        dbo.MATERIE.Cod_Docente, dbo.MATERIE.Cod_Corso, dbo.ESTERNI.Cognome, dbo.CORSI.Titolo
FROM            dbo.MATERIE INNER JOIN
                         dbo.CORSI ON dbo.MATERIE.Cod_Corso = dbo.CORSI.Chiave INNER JOIN
                         dbo.ESTERNI ON dbo.MATERIE.Cod_Docente = dbo.ESTERNI.Chiave
GO
/****** Object:  View [dbo].[V_CRONISTORIADOCENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_CRONISTORIADOCENTI]
AS
SELECT dbo.ESTERNI.Chiave, dbo.ESTERNI.Nome, dbo.ESTERNI.Cognome, dbo.ESTERNI.Avatar, dbo.ESTERNI.TipoImg, dbo.COMPETENZE.Cv, dbo.COMPETENZE.Skills
FROM     dbo.ESTERNI INNER JOIN
                  dbo.COMPETENZE ON dbo.ESTERNI.Chiave = dbo.COMPETENZE.Cod_Docente
GO
/****** Object:  View [dbo].[V_DOCENTI_SKILLS]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DOCENTI_SKILLS]
AS
SELECT dbo.ESTERNI.Chiave, dbo.ESTERNI.Ragione_Sociale, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.COMPETENZE.Skills
FROM     dbo.ESTERNI LEFT OUTER JOIN
                  dbo.COMPETENZE ON dbo.ESTERNI.Chiave = dbo.COMPETENZE.Cod_Docente
WHERE  (dbo.ESTERNI.Tipo = 'D') AND (dbo.ESTERNI.Abilitato = 1)
GO
/****** Object:  View [dbo].[V_ESTERNI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ESTERNI]
AS
SELECT dbo.ESTERNI.Usr AS docente, dbo.MATERIE.Titolo AS materia, dbo.CORSI.Titolo AS corso
FROM     dbo.ESTERNI INNER JOIN
                  dbo.MATERIE ON dbo.ESTERNI.Chiave = dbo.MATERIE.Cod_Docente INNER JOIN
                  dbo.CORSI ON dbo.MATERIE.Cod_Corso = dbo.CORSI.Chiave
GO
/****** Object:  View [dbo].[V_ESTERNI_CorsiConStatus]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ESTERNI_CorsiConStatus]
AS
SELECT dbo.ESTERNI.Usr AS docente, dbo.MATERIE.Titolo AS materia, dbo.CORSI.Titolo AS corso, dbo.CORSI.Status_Corsi AS stato
FROM     dbo.ESTERNI INNER JOIN
                  dbo.MATERIE ON dbo.ESTERNI.Chiave = dbo.MATERIE.Cod_Docente INNER JOIN
                  dbo.CORSI ON dbo.MATERIE.Cod_Corso = dbo.CORSI.Chiave
GO
/****** Object:  View [dbo].[v_ESTERNI_STUDENTI_CORSI_FREQUENTATI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_ESTERNI_STUDENTI_CORSI_FREQUENTATI]
AS
SELECT dbo.CORSI.Titolo, dbo.CORSI.Avatar_Corso, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.ESTERNI.Chiave, dbo.ESTERNI.Tipo, dbo.CORSI.Chiave AS Cod_Corso, dbo.CORSI.Data_Partenza
FROM     dbo.CLASSI INNER JOIN
                  dbo.CORSI ON dbo.CLASSI.Cod_Corso = dbo.CORSI.Chiave INNER JOIN
                  dbo.ESTERNI ON dbo.CLASSI.Cod_Studente = dbo.ESTERNI.Chiave
WHERE  (dbo.ESTERNI.Tipo = 'S')
GO
/****** Object:  View [dbo].[V_GENMONEY_ACQUISTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GENMONEY_ACQUISTI]
AS
SELECT        dbo.GENMONEY.Cod_Corso, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.ESTERNI.CF, dbo.CORSI.Titolo AS Corso, dbo.CORSI.Tipo, SUBSTRING(CAST(dbo.GENMONEY.Data_Transazione AS nvarchar(50)), 1, 10) 
                         AS Data_Transazione, dbo.GENMONEY.Ammontare
FROM            dbo.GENMONEY INNER JOIN
                         dbo.ESTERNI ON dbo.GENMONEY.Cod_Studente = dbo.ESTERNI.Chiave INNER JOIN
                         dbo.CORSI ON dbo.GENMONEY.Cod_Corso = dbo.CORSI.Chiave
GO
/****** Object:  View [dbo].[v_GENMONEY_COUNT_STUDENTE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GENMONEY_COUNT_STUDENTE]
AS
SELECT SUM(dbo.GENMONEY.Ammontare) AS [Totale GenMoney], dbo.GENMONEY.Cod_Studente
FROM     dbo.ESTERNI INNER JOIN
                  dbo.GENMONEY ON dbo.ESTERNI.Chiave = dbo.GENMONEY.Cod_Studente
GROUP BY dbo.GENMONEY.Cod_Studente
GO
/****** Object:  View [dbo].[V_MATERIE_COSTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MATERIE_COSTI]
AS
SELECT        TOP (100) PERCENT dbo.MATERIE.Cod_Corso, dbo.CORSI.Titolo AS Corso, dbo.CORSI.Tipo AS [Tipo materia], dbo.MATERIE.Titolo AS Materia, SUBSTRING(CAST(dbo.CORSI.Data_Partenza AS nvarchar(50)), 1, 10) 
                         AS Data_Partenza, dbo.ESTERNI.Ragione_Sociale, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.ESTERNI.Piva, dbo.ESTERNI.CF, dbo.MATERIE.Costo_Docente, dbo.ESTERNI.Tipo AS [Tipo docente], 
                         dbo.ESTERNI.Chiave
FROM            dbo.MATERIE INNER JOIN
                         dbo.CORSI ON dbo.MATERIE.Cod_Corso = dbo.CORSI.Chiave INNER JOIN
                         dbo.ESTERNI ON dbo.MATERIE.Cod_Docente = dbo.ESTERNI.Chiave
WHERE        (dbo.ESTERNI.Tipo = 'D')
ORDER BY dbo.MATERIE.Costo_Docente DESC
GO
/****** Object:  View [dbo].[v_MATERIE_INFO]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_MATERIE_INFO]
AS
SELECT dbo.MATERIE.Titolo AS Materia, dbo.PROGRAMMI.Link AS [Lezione frontale], dbo.PROGRAMMI.Titolo_Materiale AS Materiale, dbo.PROGRAMMI.Materiale AS [Tipo materiale], dbo.PROGRAMMI.Tipo_Materiale, 
                  dbo.TEST.Data_Test AS [Data Test], dbo.MATERIE.Chiave, dbo.MATERIE.Preparato, dbo.MATERIE.Accettato
FROM     dbo.TEST INNER JOIN
                  dbo.CORSI INNER JOIN
                  dbo.MATERIE INNER JOIN
                  dbo.PROGRAMMI ON dbo.MATERIE.Chiave = dbo.PROGRAMMI.Cod_Materia ON dbo.CORSI.Chiave = dbo.MATERIE.Cod_Corso ON dbo.TEST.Cod_Corso = dbo.CORSI.Chiave
WHERE  (dbo.MATERIE.Preparato = 1) AND (dbo.MATERIE.Accettato = 1)
GO
/****** Object:  View [dbo].[V_VOTI_STUDENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_VOTI_STUDENTI]
AS
SELECT dbo.CLASSI.Chiave, dbo.CLASSI.Cod_Corso, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.CLASSI.Punteggio
FROM     dbo.CLASSI INNER JOIN
                  dbo.ESTERNI ON dbo.CLASSI.Cod_Studente = dbo.ESTERNI.Chiave
GO
/****** Object:  View [generation].[V_CLASSI_STUDENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [generation].[V_CLASSI_STUDENTI]
AS
SELECT dbo.CLASSI.Cod_Corso, dbo.ESTERNI.Cognome, dbo.ESTERNI.Nome, dbo.CLASSI.Punteggio, dbo.CLASSI.Cod_Studente
FROM     dbo.CLASSI INNER JOIN
                  dbo.ESTERNI ON dbo.CLASSI.Cod_Studente = dbo.ESTERNI.Chiave
GO
/****** Object:  View [generation].[v_CORSI_UTENTI_FILTRO_Q]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [generation].[v_CORSI_UTENTI_FILTRO_Q]
AS
SELECT        dbo.CORSI.Chiave, dbo.CORSI.Cod_Utente, SUBSTRING(CAST(dbo.CORSI.Data_Creazione AS nvarchar(50)), 1, 10) AS Data_Creazione, dbo.CORSI.Titolo, dbo.CORSI.Tipo, dbo.CORSI.Descrizione, 
                         SUBSTRING(CAST(dbo.CORSI.Data_Partenza AS nvarchar(50)), 1, 10) AS Data_Partenza, dbo.CORSI.Status_Corsi, SUBSTRING(CAST(dbo.CORSI.Data_Status AS nvarchar(50)), 1, 10) AS Data_Status, dbo.CORSI.Costo, 
                         dbo.CORSI.Avatar_Corso, dbo.CORSI.Tipo_Img, dbo.UTENTI.Nome, dbo.UTENTI.Cognome
FROM            dbo.CORSI LEFT OUTER JOIN
                         dbo.UTENTI ON dbo.CORSI.Cod_Utente = dbo.UTENTI.Chiave
WHERE        (dbo.CORSI.Status_Corsi = 'Q')
GO
/****** Object:  View [generation].[V_SALDO_STUDENTI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [generation].[V_SALDO_STUDENTI]
AS
SELECT SUM(Ammontare) AS Ammontare, Cod_Studente
FROM     dbo.GENMONEY
GROUP BY Cod_Studente
GO
/****** Object:  Table [dbo].[CHAT]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHAT](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Corso] [int] NULL,
	[Cod_Studente] [int] NULL,
	[Cod_Interno] [int] NULL,
	[Data_Post] [datetime] NULL,
	[Contenuto] [text] NULL,
 CONSTRAINT [PK_CHAT] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASSI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASSI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Corso] [int] NULL,
	[Cod_Studente] [int] NULL,
	[Punteggio] [int] NULL,
 CONSTRAINT [PK_CLASSI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPETENZE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPETENZE](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Docente] [int] NULL,
	[Cv] [varbinary](max) NULL,
	[Skills] [text] NULL,
 CONSTRAINT [PK_COMPETENZE] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORSI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORSI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Utente] [int] NULL,
	[Data_Creazione] [date] NULL,
	[Titolo] [nvarchar](50) NULL,
	[Tipo] [nvarchar](50) NULL,
	[Descrizione] [nvarchar](max) NULL,
	[Data_Partenza] [date] NULL,
	[Status_Corsi] [char](1) NULL,
	[Data_Status] [date] NULL,
	[Costo] [int] NULL,
	[Avatar_Corso] [varbinary](max) NULL,
	[Tipo_Img] [nvarchar](100) NULL,
 CONSTRAINT [PK_CORSI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOMANDE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOMANDE](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Test] [int] NULL,
	[Domanda] [nvarchar](max) NULL,
	[Risposta1] [nvarchar](max) NULL,
	[Risposta2] [nvarchar](max) NULL,
	[Risposta3] [nvarchar](max) NULL,
	[Voti] [char](6) NULL,
 CONSTRAINT [PK_DOMANDE] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTERNI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTERNI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [char](1) NULL,
	[Usr] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
	[Ragione_Sociale] [nvarchar](50) NULL,
	[Cognome] [nvarchar](50) NULL,
	[Nome] [nvarchar](50) NULL,
	[Data_Nascita] [date] NULL,
	[Piva] [char](11) NULL,
	[CF] [char](16) NULL,
	[Indirizzo] [nvarchar](50) NULL,
	[Cap] [char](5) NULL,
	[Citta] [nvarchar](50) NULL,
	[Provincia] [char](2) NULL,
	[Nazionalita] [nvarchar](50) NULL,
	[Data_Registrazione] [date] NULL,
	[Abilitato] [bit] NULL,
	[Avatar] [varbinary](max) NULL,
	[TipoImg] [nvarchar](100) NULL,
 CONSTRAINT [PK_ESTERNI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENMONEY]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENMONEY](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Studente] [int] NULL,
	[Cod_Corso] [int] NULL,
	[Data_Transazione] [date] NULL,
	[Ammontare] [int] NULL,
 CONSTRAINT [PK_GENMONEY] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIE](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Corso] [int] NULL,
	[Cod_Docente] [int] NULL,
	[Costo_Docente] [decimal](6, 2) NULL,
	[Titolo] [nvarchar](50) NULL,
	[Descrizione] [nvarchar](max) NULL,
	[Indice] [int] NULL,
	[Preparato] [bit] NULL,
	[Accettato] [bit] NULL,
	[Data_Risposta] [date] NULL,
 CONSTRAINT [PK_MATERIE] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PREISCRIZIONI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREISCRIZIONI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Corso] [int] NULL,
	[Data_Preiscrizione] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[Newsletter] [bit] NULL,
 CONSTRAINT [PK_PREISCRIZIONI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROGRAMMI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRAMMI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Materia] [int] NULL,
	[Tipo] [char](2) NULL,
	[Indice] [int] NULL,
	[Link] [nvarchar](300) NULL,
	[Materiale] [varbinary](max) NULL,
	[Titolo_Materiale] [nvarchar](50) NULL,
	[Tipo_Materiale] [nvarchar](100) NULL,
	[Descrizione] [nvarchar](max) NULL,
 CONSTRAINT [PK_PROGRAMMI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROGRESSI]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRESSI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Programma] [int] NULL,
	[Cod_Studente] [int] NULL,
	[Data_Progresso] [date] NULL,
 CONSTRAINT [PK_PROGRESSI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RISPOSTE]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RISPOSTE](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Studente] [int] NULL,
	[Cod_Test] [int] NULL,
	[Risposta] [char](50) NULL,
 CONSTRAINT [PK_RISPOSTE] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST]    Script Date: 14/09/2022 11:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Corso] [int] NULL,
	[Soglia] [int] NULL,
	[Data_Test] [date] NULL,
	[Ora] [char](5) NULL,
 CONSTRAINT [PK_TEST] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTENTI](
	[Chiave] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [char](1) NULL,
	[Usr] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
	[Cognome] [nvarchar](50) NULL,
	[Nome] [nvarchar](50) NULL,
	[Figura] [nvarchar](50) NULL,
	[Abilitato] [bit] NULL,
 CONSTRAINT [PK_UTENTI] PRIMARY KEY CLUSTERED 
(
	[Chiave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CHAT_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CHAT_INSERT]
(
	@Cod_Corso int,
	@Cod_Studente int,
	@Cod_Interno int,
	@Contenuto text
)
AS
BEGIN
	insert into CHAT
	values (
		@Cod_Corso,
		@Cod_Studente,
		@Cod_Interno,
		GETDATE(),
		@Contenuto
	)
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_INSERT_ESTERNI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CHAT_INSERT_ESTERNI]
(
	@Cod_Corso int,
	@Cod_Studente int,
	@Contenuto text
)
AS
BEGIN
	insert into CHAT
	values (
		@Cod_Corso,
		@Cod_Studente,
		NULL,
		GETDATE(),
		@Contenuto
	)


END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_INSERT_INTERNI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CHAT_INSERT_INTERNI]
(
	@Cod_Corso int,
	@Cod_Interno int,
	@Contenuto text
)
AS
BEGIN
	insert into CHAT
	values (
		@Cod_Corso,
		NULL,
		@Cod_Interno,
		GETDATE(),
		@Contenuto
	)


END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CHAT_SELECTALL]
AS
BEGIN
	SELECT *
	FROM CHAT
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CHAT_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM CHAT
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTONE_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CHAT_SELECTONE_CORSO]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT *
	FROM CHAT
	WHERE Cod_Corso=@Cod_Corso
	ORDER BY Data_Post
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTONE_CORSO_DESC]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CHAT_SELECTONE_CORSO_DESC]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT *
	FROM CHAT
	WHERE Cod_Corso=@Cod_Corso
	ORDER BY Data_Post DESC
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTONE_CORSO_JOIN_ESTERNI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CHAT_SELECTONE_CORSO_JOIN_ESTERNI]
(
	
	@Chiave int
)
AS
BEGIN
	
	
	SELECT *
	FROM CHAT C
	JOIN ESTERNI E on E.Chiave = C.Cod_Studente
	WHERE  C.Chiave=@Chiave
	 
	

	
	/*JOIN UTENTI U on U.Chiave = C.Cod_Interno*/
END
GO
/****** Object:  StoredProcedure [dbo].[CHAT_SELECTONE_CORSO_JOIN_UTENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CHAT_SELECTONE_CORSO_JOIN_UTENTI]
(
	
	@Chiave int
)
AS
BEGIN
	
	
	SELECT *
	FROM CHAT C
	JOIN UTENTI U on U.Chiave = C.Cod_Interno
	WHERE  C.Chiave=@Chiave
	 

	
	/*JOIN ESTERNI E on E.Chiave = C.Cod_Studente*/
END
GO
/****** Object:  StoredProcedure [dbo].[CLASSI_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CLASSI_INSERT]
(
	@Cod_Corso int,
	@Cod_Studente int
)
AS
BEGIN
	insert into CLASSI(Cod_Corso, Cod_Studente)
	values (
		@Cod_Corso,
		@Cod_Studente
	)
END
GO
/****** Object:  StoredProcedure [dbo].[CLASSI_INSERT_PUNTEGGIO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CLASSI_INSERT_PUNTEGGIO]
(
	@Cod_Corso int,
	@Cod_Studente int,
	@Punteggio int
)
AS
BEGIN
	UPDATE CLASSI
	SET Punteggio=@Punteggio
	WHERE Cod_Corso=@Cod_Corso AND Cod_Studente=@Cod_Studente
END
GO
/****** Object:  StoredProcedure [dbo].[CLASSI_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CLASSI_SELECTALL]
AS
BEGIN
	SELECT *
	FROM CLASSI
END
GO
/****** Object:  StoredProcedure [dbo].[CLASSI_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CLASSI_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM CLASSI
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[CLASSI_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CLASSI_UPDATE]
(
	@Chiave int,
	@Punteggio int
)
AS
BEGIN
	update CLASSI
	set
		Punteggio=@Punteggio
	where Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[COMPETENZE_INSERT]
(
	@Cod_Docente int,
	@Cv varbinary(max),
	@Skills text
)
AS
BEGIN
	insert into COMPETENZE
	values (
		@Cod_Docente,
		@Cv,
		@Skills
	)
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[COMPETENZE_SELECTALL]
AS
BEGIN
	SELECT *
	FROM COMPETENZE
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_SELECTALL_DOCENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create   procedure [dbo].[COMPETENZE_SELECTALL_DOCENTE]
(
	@Cod_Docente int
)
AS
BEGIN
	SELECT *
	FROM COMPETENZE
	WHERE Cod_Docente=@Cod_Docente
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[COMPETENZE_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM COMPETENZE
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[COMPETENZE_UPDATE]
(
	@Chiave int,
	@Cv varbinary(max),
	@Skills text
)
AS
BEGIN
	update COMPETENZE
	set
		Cv=@Cv,
		Skills=@Skills
	where Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[COMPETENZE_UPDATE_COD_DOCENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[COMPETENZE_UPDATE_COD_DOCENTE]
(
	@Cod_Docente int,
	@Cv varbinary(max),
	@Skills text
)
AS
BEGIN
	update COMPETENZE
	set
		Cv=@Cv,
		Skills=@Skills
	where Cod_Docente=@Cod_Docente
END
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_COSTI_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CONTABILITA_COSTI_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@codCorso int
)
AS
BEGIN
	select *
	from V_MATERIE_COSTI
	where Data_Partenza between @dataInizio and @dataFine
		and Cod_Corso=@codCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_COSTI_DOCENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONTABILITA_COSTI_DOCENTI]
(
	@dataInizio date,
	@dataFine date
)
AS
BEGIN
	select *
	from V_MATERIE_COSTI
	where Data_Partenza between @dataInizio and @dataFine
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_COSTI_TIPO_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CONTABILITA_COSTI_TIPO_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@tipoCorso nvarchar(50)
)
AS
BEGIN
	select *
	from V_MATERIE_COSTI
	where Data_Partenza between @dataInizio and @dataFine
		and [Tipo materia]=@tipoCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_COSTO_DOCENTESINGOLO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONTABILITA_COSTO_DOCENTESINGOLO]
(
	@dataInizio date,
	@dataFine date,
	@codiceDocente int
)
AS
BEGIN
	SELECT * 
	FROM V_MATERIE_COSTI
	WHERE Data_Partenza BETWEEN @dataInizio AND @dataFine
		AND Chiave = @codiceDocente
END
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CONTABILITA_RICAVI_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@codCorso INT
)
as
begin
	select *
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
		AND Cod_Corso=@codCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_GENMONEY]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CONTABILITA_RICAVI_GENMONEY]
(
	@dataInizio date,
	@dataFine date
)
as
begin
	select *
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_SOMMA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROCEDURE [dbo].[CONTABILITA_RICAVI_SOMMA]
(
	@dataInizio date,
	@dataFine date
)
as
begin
	select coalesce(sum(ammontare * - 5), 0 ) as Ricavi
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_SOMMA_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[CONTABILITA_RICAVI_SOMMA_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@codCorso int
)
as
begin
	select coalesce(sum(ammontare * - 5), 0 ) as Ricavi
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
		and Cod_Corso=@codCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_SOMMA_TIPO_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[CONTABILITA_RICAVI_SOMMA_TIPO_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@tipoCorso nvarchar(50)
)
as
begin
	select coalesce(sum(ammontare * - 5), 0 ) as Ricavi
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
		and Tipo=@tipoCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_RICAVI_TIPO_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CONTABILITA_RICAVI_TIPO_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@tipoCorso nvarchar(50)
)
as
begin
	select *
	from V_GENMONEY_ACQUISTI
	where Data_Transazione between @dataInizio and @dataFine
		and Ammontare<0
		AND Tipo=@tipoCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_SPESE_SOMMA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[CONTABILITA_SPESE_SOMMA]
(
	@dataInizio date,
	@dataFine date
)
as
begin
	SELECT coalesce (SUM(Costo_Docente),0) as Spese
	FROM V_MATERIE_COSTI
	WHERE Data_Partenza between @dataInizio and @dataFine
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_SPESE_SOMMA_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[CONTABILITA_SPESE_SOMMA_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@codCorso int
)
as
begin
	SELECT coalesce (SUM(Costo_Docente),0) as Spese
	FROM V_MATERIE_COSTI
	WHERE Data_Partenza between @dataInizio and @dataFine
	and Cod_Corso=@codCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CONTABILITA_SPESE_SOMMA_TIPO_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[CONTABILITA_SPESE_SOMMA_TIPO_CORSO]
(
	@dataInizio date,
	@dataFine date,
	@tipoCorso nvarchar(50)
)
as
begin
	SELECT coalesce (SUM(Costo_Docente),0) as Spese
	FROM V_MATERIE_COSTI
	WHERE Data_Partenza between @dataInizio and @dataFine
	and [Tipo materia]=@tipoCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CORSI_CHECK_TUTOR_ABILITATO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROCEDURE [dbo].[CORSI_CHECK_TUTOR_ABILITATO]
(
  @COD_UTENTE int
)
AS
BEGIN
  SELECT U.Nome
  FROM CORSI C
  join UTENTI U on U.Chiave=C.Cod_Utente
  WHERE Cod_Utente=@COD_UTENTE and U.Abilitato=1
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_Info]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CORSI_Info] 
--MODIFICATA MA GIà ESISTENTE, AVEVO CALCOLATO MALE IO I CAMPI SORRY
(
	@Chiave int
)
AS
BEGIN
	SELECT Titolo, 
	Data_Creazione, 
	Data_Partenza as [Data Partenza], 
	Status_Corsi as [Stato Corso], 
	Data_Status as [Data Stato], 
	Avatar_Corso as [Avatar]
	FROM CORSI
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_Insert]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CORSI_Insert]
	@TITOLO nvarchar(50),
	@TIPO nvarchar(50),
	@DESCRIZIONE nvarchar(max),
	@AVATAR_CORSO varbinary(max),
	@DATA_PARTENZA date,
	@TIPO_IMG nvarchar(100)
AS
BEGIN
	insert into CORSI (Data_Creazione, Titolo, Tipo, Descrizione, Data_Partenza, Status_Corsi, Data_Status, Avatar_Corso, Tipo_Img)
	values(convert(date,GETDATE()),@TITOLO,@TIPO,@DESCRIZIONE,@DATA_PARTENZA,'C',convert(date,GETDATE()),@AVATAR_CORSO,@TIPO_IMG)
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_JOIN_MATERIA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[CORSI_JOIN_MATERIA]
as
begin
select * from V_CORSI_JOIN_MATERIE
end
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SEARCH]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*Ricerca di CORSI in base ad un parametro preso in input, ricerca per 
Titolo simile o Tipo simile o Descrizione simile*/
CREATE PROCEDURE [dbo].[CORSI_SEARCH]
(
	@Titolo nvarchar(50),
	@Tipo nvarchar(50),
	@Descrizione nvarchar(50)
)
AS
BEGIN
	SELECT *
	FROM CORSI
	WHERE Titolo LIKE @Titolo OR
		Tipo LIKE @Tipo OR
		Descrizione LIKE @Descrizione
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SELECT_STATUS]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CORSI_SELECT_STATUS]
(
	@attivi bit,
	@codDocente int
)
as
begin
	if @attivi=1
		select *
		from V_CORSI_MATERIE
		where Data_Test > GETDATE()
			and Cod_Docente=@codDocente
	else
		select *
		from V_CORSI_MATERIE
		where Data_Test <= GETDATE()
			and Cod_Docente=@codDocente
end
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SelectAll]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CORSI_SelectAll]

AS
BEGIN
	SELECT * FROM v_CORSI_UTENTI
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SELECTALL_APPROVATI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tutti i CORSI che sono stati approvati(A)*/
CREATE PROCEDURE [dbo].[CORSI_SELECTALL_APPROVATI]
AS
BEGIN
	SELECT *
	FROM CORSI
	WHERE Status_Corsi = 'A'
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SelectAll_Docenti]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CORSI_SelectAll_Docenti]
(
	@Cod_Docente int,
	@Cod_Corso int
)
AS
BEGIN
	SELECT * FROM v_CorsiSelectAll_Docenti
	WHERE Cod_Docente=@Cod_Docente AND Cod_Corso=@Cod_Corso
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SELECTALL_NONAPPROVATI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tutti i CORSI che non sono stati approvati(A)*/
CREATE PROCEDURE [dbo].[CORSI_SELECTALL_NONAPPROVATI]
AS
BEGIN
	SELECT *
	FROM CORSI
	WHERE NOT Status_Corsi = 'A'
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SelectForTutor]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CORSI_SelectForTutor] 
@COD_TUTOR INT
AS
BEGIN
	select * from CORSI
	where Cod_Utente=@COD_TUTOR
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SelectNonAssegnati]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[CORSI_SelectNonAssegnati]
AS
BEGIN
	select Chiave, Titolo 
	from CORSI
	where Cod_Utente=''

END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SelectOne]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CORSI_SelectOne]
@COD_CORSO int
AS
BEGIN
	select *
from CORSI
where Chiave=@COD_CORSO
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_SITUAZIONE_STUDENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CORSI_SITUAZIONE_STUDENTI]
(
	@codCorso int
)
as
begin
	SELECT *
	FROM v_VOTI_STUDENTI
	WHERE COD_CORSO=@codCorso
end
GO
/****** Object:  StoredProcedure [dbo].[CORSI_TEST_RISULTATO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CORSI_TEST_RISULTATO]
(
	@Chiave_Corso int,
	@Chiave_Test int,
	@Chiave_Studente int
)
AS
BEGIN
	SELECT * FROM v_CORSI_TEST_RISULTATO
	WHERE chiavecorso = @Chiave_Corso AND
			chiavetest = @Chiave_Test AND
			chiavestudente = @Chiave_Studente
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_Update]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CORSI_Update]
	@CHIAVE int,
	@TITOLO nvarchar(50),
	@TIPO nvarchar(50),
	@DESCRIZIONE nvarchar(max),
	@AVATAR_CORSO varbinary(max),
	@DATA_PARTENZA date,
	@TIPO_IMG nvarchar(100)
AS
BEGIN
	update CORSI 
	SET Titolo=@TITOLO,
	Tipo=@TIPO,
	Descrizione=@DESCRIZIONE,
	Avatar_Corso=@AVATAR_CORSO,
	Data_Partenza=@DATA_PARTENZA,
	Tipo_Img=@TIPO_IMG

	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_UpdateForTutor]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CORSI_UpdateForTutor]
--INSERIMENTO DI DATI IN TUTOR
	@CHIAVE int,
	@TITOLO nvarchar(50),
	@TIPO nvarchar(50),
	@DESCRIZIONE nvarchar(max),
	@AVATAR_CORSO varbinary(max),
	@TIPO_IMG nvarchar(100),
	@DATA_PARTENZA date
AS
BEGIN
	update CORSI 
	set Titolo=@TITOLO,Tipo=@TIPO,Descrizione=@DESCRIZIONE,Data_Partenza=@DATA_PARTENZA,Avatar_Corso = @AVATAR_CORSO ,Tipo_Img=@TIPO_IMG
	where Chiave=@CHIAVE
END
GO
/****** Object:  StoredProcedure [dbo].[CORSI_UpdateTutor]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CORSI_UpdateTutor]--procedure per l' inserimento di un determinato tutor --in un determinato corso	@Chiave_Corso int,	@Cod_Tutor intASBEGIN	update CORSI	set Cod_Utente=@Cod_Tutor	where Chiave=@Chiave_Corso END

GO
/****** Object:  StoredProcedure [dbo].[CORSI_UTENTI_FILTRO_Q]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CORSI_UTENTI_FILTRO_Q]

AS
BEGIN
	SELECT * FROM V_CORSI_UTENTI_FILTRO_Q
END
GO
/****** Object:  StoredProcedure [dbo].[DOMANDE_DELETE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOMANDE_DELETE]
(
	@Chiave int
)
AS
BEGIN
	DELETE DOMANDE
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[DOMANDE_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOMANDE_INSERT]
(
	@Cod_Test int,
	@Domanda nvarchar(max),
	@Risposta1 nvarchar(max),
	@Risposta2 nvarchar(max),
	@Risposta3 nvarchar(max),
	@Voti char(6)
)
AS
BEGIN
	INSERT INTO DOMANDE
	VALUES (@Cod_Test,
			@Domanda,
			@Risposta1,
			@Risposta2,
			@Risposta3,
			@Voti)
END
GO
/****** Object:  StoredProcedure [dbo].[DOMANDE_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOMANDE_SELECTALL]
AS
BEGIN
	SELECT *
	FROM DOMANDE
END 
GO
/****** Object:  StoredProcedure [dbo].[DOMANDE_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOMANDE_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM DOMANDE
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[DOMANDE_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOMANDE_UPDATE]
(
	@Chiave int,
	@Cod_Test int,
	@Domanda nvarchar(max),
	@Risposta1 nvarchar(max),
	@Risposta2 nvarchar(max),
	@Risposta3 nvarchar(max),
	@Voti char(6)

)
AS
BEGIN
	UPDATE DOMANDE
	SET Cod_Test = @Cod_Test,
		Domanda = @Domanda,
		Risposta1 = @Risposta1,
		Risposta2 = @Risposta2,
		Risposta3 = @Risposta3,
		Voti = @Voti
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_ABILITA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_ABILITA]
(
	@Chiave int
)
AS
BEGIN
	UPDATE ESTERNI
	SET Abilitato = 1
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_CHECKONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ESTERNI_CHECKONE] 
(
	@TIPO char(1),
	@USR nvarchar(50),
	@PWD nvarchar(50),
	@RAGIONE_SOCIALE nvarchar(50),
	@COGNOME nvarchar(50),
	@NOME nvarchar(50)
)
AS
BEGIN
	SELECT *
	FROM ESTERNI
	WHERE Tipo = @Tipo and
		Usr = @Usr and
		Pwd = @Pwd and
		Ragione_Sociale = @RAGIONE_SOCIALE and
		Cognome = @Cognome and
		Nome = @Nome
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_COMPETENZE_DOCENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_COMPETENZE_DOCENTI]
as
begin
	select *
	from V_docenti_skills
end
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_Controlla_Abilitazione]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[ESTERNI_Controlla_Abilitazione]
(
	@COD_UTENTE int
)
AS
BEGIN
	SELECT * FROM ESTERNI
	WHERE Chiave=@COD_UTENTE
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_DELETE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_DELETE]
(
	@Chiave int
)
AS
BEGIN
	DELETE ESTERNI
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_DOCENTI_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tutti i docenti(D)*/
CREATE   PROCEDURE [dbo].[ESTERNI_DOCENTI_SELECTALL]
AS
BEGIN
	SELECT Chiave,
	Usr,
	Nome,
	Cognome,
	Data_Nascita,
	Piva,
	CF,
	Data_Registrazione
	FROM ESTERNI
	WHERE Tipo = 'D' AND
			Abilitato = 1
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_GETCODUTENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     procedure [dbo].[ESTERNI_GETCODUTENTE]
(
	@usr nvarchar(50)
)
AS
BEGIN
	select *
	from ESTERNI
	where usr=@usr
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_GETNOME]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_GETNOME]
(
	@Chiave int
)
AS
BEGIN
	SELECT Nome
	FROM ESTERNI
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_Info]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ESTERNI_Info]
--SELEZIONA INFORMAZIONI SUI DOCENTI TRAMITE UNA VISTA
@Cod_Docente int
AS
BEGIN
	select *
from V_CRONISTORIADOCENTI
where Chiave=@Cod_Docente
END



GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_InfoCorso]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ESTERNI_InfoCorso]
	@usr nvarchar(50)
AS
BEGIN
select * from V_ESTERNI_CorsiConStatus
where stato=1 and docente=@usr

END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_InfoDocente]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ESTERNI_InfoDocente]
	@usr nvarchar(50)
AS
BEGIN
select * from V_ESTERNI where docente=@usr

END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_INSERT]
(
	@Tipo char(1),
	@Usr nvarchar(50),
	@Pwd nvarchar(50),
	@Ragione_Sociale nvarchar(50),
	@Cognome nvarchar(50),
	@Nome nvarchar(50),
	@Data_Nascita date,
	@Piva char(11),
	@CF char(16),
	@Indirizzo nvarchar(50),
	@Cap char(5),
	@Citta nvarchar(50),
	@Provincia char(2),
	@Nazionalita nvarchar(50),
	@Abilitato bit,
	@Avatar varbinary(max),
	@TipoImg nvarchar(100)
)
AS
BEGIN
	INSERT INTO ESTERNI
	VALUES (@Tipo,
			@Usr,
			@Pwd,
			@Ragione_Sociale,
			@Cognome,
			@Nome,
			@Data_Nascita,
			@Piva,
			@CF,
			@Indirizzo,
			@Cap,
			@Citta,
			@Provincia,
			@Nazionalita,
			(SELECT CONVERT(date, GETDATE())),
			@Abilitato,
			@Avatar,
			@TipoImg)

	if @Tipo='S'
	begin
		declare @CHIAVE int
		select @chiave = scope_identity()

		insert into genmoney
		values (@chiave, 0, getdate(), 50)
	end
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_LOGIN]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_LOGIN]
(
	@Usr nvarchar(50),
	@Pwd nvarchar(50)
)
AS
BEGIN
	SELECT * FROM  ESTERNI
	WHERE Usr = @Usr AND
			Pwd = @Pwd
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_PWD_CHECK]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_PWD_CHECK]
(
	@Pwd nvarchar(50)
)
AS
BEGIN
	SELECT * FROM ESTERNI
	WHERE Pwd = @Pwd
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_REGISTRATO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_REGISTRATO]
(
	@Usr nvarchar(50)
)
AS
BEGIN
	SELECT * FROM ESTERNI
	WHERE Usr = @Usr
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_SELECTALL]
AS
BEGIN
	SELECT *
	FROM ESTERNI
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM ESTERNI
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_SELECTONE_PROFILO_STUDENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[ESTERNI_SELECTONE_PROFILO_STUDENTI]
(
	@Chiave int
)
AS
BEGIN
	SELECT Chiave, Nome, Cognome, Citta, Indirizzo, Provincia, Nazionalita 
	FROM ESTERNI
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_SOMMA_GUADAGNI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_SOMMA_GUADAGNI]
(
	@codDocente int,
	@dataInizio date,
	@dataFine date
)
as
begin
		select coalesce(SUM(COSTO_DOCENTE), 0) AS Guadagni
		from V_CORSI_MATERIE
		where 
			Data_Partenza between @dataInizio and @dataFine
			and Cod_Docente=@codDocente
end
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_STUDENTI_CORSI_FREQUENTATI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_STUDENTI_CORSI_FREQUENTATI]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM v_ESTERNI_STUDENTI_CORSI_FREQUENTATI 
	WHERE Chiave = @Chiave 
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_STUDENTI_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   PROCEDURE [dbo].[ESTERNI_STUDENTI_SELECTALL]
AS
BEGIN
	SELECT Chiave,
	Usr,
	Nome,
	Cognome,
	Data_Nascita,
	Piva,
	CF,
	Data_Registrazione
	FROM ESTERNI
	WHERE Tipo = 'S' 
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_TIPO_LOGIN]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Il tipo dell'ESTERNO associato a quell'Usr e quella Pwd*/
CREATE PROCEDURE [dbo].[ESTERNI_TIPO_LOGIN]
(
	@Usr nvarchar(50),
	@Pwd nvarchar(50)
)
AS
BEGIN
	SELECT TIPO 
	FROM ESTERNI
	WHERE Usr = @Usr AND
		Pwd = @Pwd
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ESTERNI_UPDATE]
(
	@Chiave int,
	@Tipo char(1),
	@Usr nvarchar(50),
	@Pwd nvarchar(50),
	@Ragione_Sociale nvarchar(50),
	@Cognome nvarchar(50),
	@Nome nvarchar(50),
	@Data_Nascita date,
	@Piva char(11),
	@CF char(16),
	@Indirizzo nvarchar(50),
	@Cap char(5),
	@Citta nvarchar(50),
	@Provincia char(2),
	@Nazionalita nvarchar(50),
	@Abilitato bit,
	@Avatar varbinary(max),
	@TipoImg nvarchar(100)
)
AS
BEGIN
	UPDATE ESTERNI
	SET Tipo = @Tipo,
		Usr = @Usr,
		Pwd = @Pwd,
		Ragione_Sociale = @Ragione_Sociale,
		Cognome = @Cognome,
		Nome = @Nome,
		Data_Nascita = @Data_Nascita,
		Piva = @Piva,
		CF = @CF,
		Indirizzo = @Indirizzo,
		Cap = @Cap,
		Citta = @Citta,
		Provincia = @Provincia,
		Nazionalita = @Nazionalita,
		Abilitato = @Abilitato,
		Avatar = @Avatar,
		TipoImg = @TipoImg
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATE_PROFILO_STUDENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[ESTERNI_UPDATE_PROFILO_STUDENTI]
(
	@Chiave int,
	@Nome nvarchar(50),
	@Cognome nvarchar(50),
	@Citta nvarchar(50),
	@Indirizzo nvarchar(50),
	@Provincia char(2),
	@Nazionalita nvarchar(50)
)
AS
BEGIN
	update ESTERNI
	set
		Nome=@Nome,
		Cognome=@Cognome,
		Citta=@Citta,
		Indirizzo=@Indirizzo,
		Provincia=@Provincia,
		Nazionalita=@Nazionalita
	where Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATE_PWD]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROCEDURE [dbo].[ESTERNI_UPDATE_PWD]
(
  @chiave int,
  @Pwd nvarchar(50)
)
AS
BEGIN
  UPDATE ESTERNI 
  SET Pwd = @Pwd
  WHERE Chiave = @chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATE_PWD_STUDENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[ESTERNI_UPDATE_PWD_STUDENTI]
(
	@Chiave int,
	@Pwd nvarchar(50)
)
AS
BEGIN
	UPDATE ESTERNI 
	SET Pwd = @Pwd	
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATEAVATAR]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ESTERNI_UPDATEAVATAR]
(
	@Chiave int,
	
	@Avatar varbinary(max),
	@TipoImg nvarchar(100)
	
)
AS
BEGIN
	UPDATE ESTERNI
	SET 
		Avatar = @Avatar,
		TipoImg = @TipoImg
		
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UpdatePassword]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ESTERNI_UpdatePassword]
	@Chiave INT,
	@pwd nvarchar(50)
AS
BEGIN
UPDATE ESTERNI
set Pwd=@pwd 
where Chiave=@Chiave

END
GO
/****** Object:  StoredProcedure [dbo].[ESTERNI_UPDATEPROFILO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[ESTERNI_UPDATEPROFILO]
(
	@Chiave int,
	
	@Usr nvarchar(50),
	
	@Ragione_Sociale nvarchar(50),
	@Cognome nvarchar(50),
	@Nome nvarchar(50),
	@Data_Nascita date,
	@Piva char(11),
	@CF char(16),
	@Indirizzo nvarchar(50),
	@Cap char(5),
	@Citta nvarchar(50),
	@Provincia char(2),
	@Nazionalita nvarchar(50)
	
)
AS
BEGIN
	UPDATE ESTERNI
	SET 
		Usr = @Usr,
		
		Ragione_Sociale = @Ragione_Sociale,
		Cognome = @Cognome,
		Nome = @Nome,
		Data_Nascita = @Data_Nascita,
		Piva = @Piva,
		CF = @CF,
		Indirizzo = @Indirizzo,
		Cap = @Cap,
		Citta = @Citta,
		Provincia = @Provincia,
		Nazionalita = @Nazionalita
		
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_AggiornaSaldo]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENMONEY_AggiornaSaldo]
	@Cod_Studente int,
	@cod_corso int,
	@costo int,
	@ammontare int
AS
BEGIN
	insert into GENMONEY
	 values(@Cod_Studente,@cod_corso,convert(date,GETDATE()),(@ammontare - @costo))
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_COUNT_STUDENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GENMONEY_COUNT_STUDENTE]
(
	@Cod_Studente int
)
AS
BEGIN
	SELECT  Cod_Studente, Coalesce(SUM(Ammontare), 0) AS Ammontare
	FROM     dbo.GENMONEY
	WHERE Cod_Studente = @Cod_Studente
	GROUP BY Cod_Studente
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*INSERT*/
CREATE PROCEDURE [dbo].[GENMONEY_INSERT]
(
	@Cod_Studente int,
	@Cod_Corso int,
	@Ammontare int
)
AS
BEGIN
	INSERT INTO GENMONEY
	VALUES (@Cod_Studente,
			@Cod_Corso,
			(SELECT CONVERT(date, GETDATE())),
			-@Ammontare)
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GENMONEY_SELECTALL]
AS
BEGIN
	SELECT * FROM GENMONEY
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GENMONEY_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM GENMONEY
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_STORICO_STUDENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENMONEY_STORICO_STUDENTE]
(
	@Chiave int
)
AS
BEGIN
	SELECT Data_Transazione, Ammontare
	FROM GENMONEY G JOIN ESTERNI E
		ON G.Cod_Studente = E.Chiave
	WHERE E.Chiave = @Chiave
	ORDER BY Data_Transazione ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GENMONEY_STUDENTI_ACQUISTO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GENMONEY_STUDENTI_ACQUISTO]
(
	@Cod_Studente int,
	@Ammontare int
)
AS
BEGIN
	INSERT INTO GENMONEY
	VALUES (@Cod_Studente,
			'',
			CONVERT(date, GETDATE()),
			@Ammontare)
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_ACCETTATE_DOCENTE_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[MATERIE_ACCETTATE_DOCENTE_CORSO]
(
	@CodDocente int,
	@CodCorso int
)
as
begin
	select M.Chiave, M.Titolo, M.Descrizione, M.Preparato
	from MATERIE M
	where Cod_Corso=@CodCorso
		and Cod_Docente=@CodDocente and M.Accettato=1
end
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_Accettazione]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MATERIE_Accettazione]
(
	@Chiave int
	
)
AS
BEGIN
	UPDATE MATERIE
	SET Accettato = 1
		
	WHERE Chiave = @Chiave

END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_DOCENTE_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MATERIE_DOCENTE_CORSO]
(
	@codDocente int,
	@codCorso int
)
as
begin
	select *
	from MATERIE
	where Cod_Corso=@codCorso
		and Cod_Docente=@codDocente
end
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_DOCENTE_NON_ACCETTATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_DOCENTE_NON_ACCETTATE]
(
	@codDocente int
)
as
begin
	select * from V_CORSI_MATERIE
	where Cod_Docente = @codDocente
		and Accettato = null
end
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_INFO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_INFO]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM v_MATERIE_INFO
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_INSERT]
(
	@Cod_Corso int,
	@Cod_Docente int,
	@Costo_Docente decimal(6,2),
	@Titolo nvarchar(50),
	@Descrizione nvarchar(max),
	@Indice int
)
AS
BEGIN 
	INSERT INTO MATERIE 
	VALUES (@Cod_Corso,
			@Cod_Docente,
			@Costo_Docente,
			@Titolo,
			@Descrizione,
			@Indice,
			0,
			NULL,
			NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_RISPONDI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_RISPONDI]
(
	@CHIAVE int,
	@RISPOSTA bit
)
as
begin
	update MATERIE
	set
		Accettato=@RISPOSTA,
		Data_Risposta=GETDATE()
	where Chiave=@CHIAVE
end
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_Select_Corsi_Docenti]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MATERIE_Select_Corsi_Docenti]
--SELEZIONA MATERIE non accettate
@Cod_Docente int
AS
BEGIN

select DISTINCT C.Titolo as Corso, C.Chiave
from MATERIE as M
join CORSI as C 
on  M.Cod_Corso=C.Chiave
where M.Cod_Docente=@Cod_Docente and M.Accettato=1
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_Select_Materie_Docente]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MATERIE_Select_Materie_Docente]
--SELEZIONA MATERIE non accettate
@Cod_Docente int
AS
BEGIN

select M.Chiave, M.Titolo as Materia, M.Accettato as Accettata, C.Titolo as Corso,C.Data_Partenza
from MATERIE as M
join CORSI as C 
on  M.Cod_Corso=C.Chiave
where M.Cod_Docente=@Cod_Docente
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_SELECTALL]
AS
BEGIN
	SELECT * FROM MATERIE
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_SelectDocente]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MATERIE_SelectDocente]
--SELEZIONA MATERIE E CORSI DEL DOCENTE PER LA CRONISTORIA
@Cod_Docente int
AS
BEGIN

select  C.Titolo as 'Corso',M.Titolo as 'Materia', C.Data_Partenza 
from MATERIE as M
join CORSI as C 
on  M.Cod_Corso=C.Chiave
where M.Cod_Docente=@Cod_Docente
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_SELECTNONASSEGNATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[MATERIE_SELECTNONASSEGNATE]
--ELENCO DELLE MATERIE A CUI NON E STATO ANCORA ASSEGNATO UN DOCENTE
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT Chiave, Titolo FROM MATERIE
	WHERE Cod_Docente =0 and Cod_Corso=@Cod_Corso
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM MATERIE
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_UPDATE]
(
	@Chiave int,
	@Cod_Corso int,
	@Cod_Docente int,
	@Costo_Docente decimal(6,2),
	@Titolo nvarchar(50),
	@Descrizione nvarchar(max),
	@Indice int,
	@Preparato bit,
	@Accettato bit,
	@Data_Risposta date
)
AS
BEGIN
	UPDATE MATERIE
	SET Cod_Corso = @Cod_Corso,
		Cod_Docente = @Cod_Docente,
		Costo_Docente = @Costo_Docente,
		Titolo = @Titolo,
		Descrizione = @Descrizione,
		Indice = @Indice,
		Preparato = @Preparato,
		Accettato = @Accettato,
		Data_Risposta = @Data_Risposta
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[MATERIE_UPDATEDOCENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIE_UPDATEDOCENTE]
--INSERIMENTO DEL CODICE DEL DOCENTE IN UNA DETERMINATA RIGA
(
	@Cod_Materia int,
	@Cod_Docente int
)
AS
BEGIN
	update MATERIE set Cod_Docente=@Cod_Docente
	WHERE Chiave =@Cod_Materia
END
GO
/****** Object:  StoredProcedure [dbo].[NEWSLETTER_ISCRIVI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NEWSLETTER_ISCRIVI]
(
	@Email nvarchar(50)
)
AS
BEGIN
	INSERT INTO PREISCRIZIONI
	VALUES('', GETDATE(), @Email, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[PREISCRIZIONI_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PREISCRIZIONI_INSERT]
(
	@Cod_Corso int,
	@Email nvarchar(50),
	@Newsletter bit
)
AS
BEGIN
	insert into PREISCRIZIONI
	values (
		@Cod_Corso,
		GETDATE(),
		@Email,
		@Newsletter
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PREISCRIZIONI_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PREISCRIZIONI_SELECTALL]
AS
BEGIN
	SELECT *
	FROM PREISCRIZIONI
END
GO
/****** Object:  StoredProcedure [dbo].[PREISCRIZIONI_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PREISCRIZIONI_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM PREISCRIZIONI
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_DELETE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PROGRAMMI_DELETE]
(
	@Chiave int
)
as 
begin
	delete from PROGRAMMI where Chiave=@Chiave
end
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_Insert]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROGRAMMI_Insert]
@COD_MATERIA INT,
@TIPO CHAR(2),
@INDICE INT,
@LINK NVARCHAR(300),
@MATERIALE VARBINARY(MAX),
@TITOLO_MATERIALE NVARCHAR(50),
@TIPO_MATERIALE NVARCHAR(100),
@DESCRIZIONE NVARCHAR(MAX)
AS
BEGIN
	insert into PROGRAMMI
	values (@COD_MATERIA, @TIPO,@INDICE,@LINK,@MATERIALe,@TITOLO_MATERIALE,@TIPO_MATERIALe,@DESCRIZIONE)
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_MATERIE_SELECT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[PROGRAMMI_MATERIE_SELECT]
(
	@Cod_Materia int
)
as
begin
	select *
	from PROGRAMMI P
	where Cod_Materia=@Cod_Materia
	order by P.Indice
end
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_SelectAll]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[PROGRAMMI_SelectAll]
AS
BEGIN
	select *
from PROGRAMMI
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_SelectOne]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[PROGRAMMI_SelectOne]
(
	@CHIAVE int
)
AS
BEGIN
	SELECT * FROM PROGRAMMI
	WHERE CHIAVE=@CHIAVE
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRAMMI_Update]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROGRAMMI_Update]
@CHIAVE INT,
@COD_MATERIA INT,
@TIPO CHAR(2),
@INDICE INT,
@LINK NVARCHAR(300),
@MATERIALE VARBINARY(MAX),
@TITOLO_MATERIALE NVARCHAR(50),
@TIPO_MATERIALE NVARCHAR(100),
@DESCRIZIONE NVARCHAR(MAX)
AS
BEGIN
	UPDATE PROGRAMMI
	SET COD_MATERIA=@COD_MATERIA, TIPO=@TIPO,INDICE=@INDICE,LINK=@LINK,MATERIALE=@MATERIALE,TITOLO_MATERIALE=@TITOLO_MATERIALE,TIPO_MATERIALE=@TIPO_MATERIALE,DESCRIZIONE=@DESCRIZIONE
	WHERE Chiave=@CHIAVE
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRESSI_Insert]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROGRESSI_Insert]
@COD_PROGRAMMA INT,
@COD_STUDENTE INT,
@DATA_PROGRESSO DATE
AS
BEGIN
	INSERT INTO PROGRESSI
	VALUES (@COD_PROGRAMMA, @COD_STUDENTE, @DATA_PROGRESSO)
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRESSI_SelectAll]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[PROGRESSI_SelectAll]
AS
BEGIN
	select *
from PROGRESSI
END
GO
/****** Object:  StoredProcedure [dbo].[PROGRESSI_Update]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROGRESSI_Update]
@CHIAVE INT,
@COD_PROGRAMMA INT,
@COD_STUDENTE INT,
@DATA_PROGRESSO DATE
AS
BEGIN
	update PROGRESSI
	set COD_PROGRAMMA=@COD_PROGRAMMA, COD_STUDENTE=@COD_STUDENTE, DATA_PROGRESSO=@DATA_PROGRESSO
	where Chiave=@CHIAVE
END
GO
/****** Object:  StoredProcedure [dbo].[RISPOSTE_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RISPOSTE_INSERT]
(
	@Cod_Studente int,
	@Cod_Test int,
	@Risposta char(50)
)
AS
BEGIN
	insert into RISPOSTE
	values (
		@Cod_Studente,
		@Cod_Test,
		@Risposta
	)
END
GO
/****** Object:  StoredProcedure [dbo].[RISPOSTE_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RISPOSTE_SELECTALL]
AS
BEGIN
	SELECT *
	FROM RISPOSTE
END
GO
/****** Object:  StoredProcedure [dbo].[RISPOSTE_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RISPOSTE_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT *
	FROM RISPOSTE
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_DELETE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_DELETE]
(
	@Chiave int
)
AS
BEGIN
	DELETE TEST
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_DOMANDE_RISPOSTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_DOMANDE_RISPOSTE]
(
	@Chiave int
)
AS
BEGIN
	SELECT C.Titolo, D.Domanda, D.Risposta1, D.Risposta2, D.Risposta3
	FROM DOMANDE D JOIN TEST T
		ON D.Cod_Test = T.Chiave JOIN CORSI C
		ON T.Chiave = C.Chiave
	WHERE T.Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_INSERT]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_INSERT]
(
	@Cod_Corso int,
	@Soglia int,
	@Data_Test date,
	@Ora_Test char(5)
)
AS
BEGIN
	INSERT INTO TEST
	VALUES (@Cod_Corso,
			@Soglia,
			@Data_Test,
			@Ora_Test)
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_SELECTALL]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_SELECTALL]
AS
BEGIN
	SELECT * FROM TEST
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_SELECTCORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_SELECTCORSO]
--VISUALIZZA I TEST GIA CREATI
@Cod_Corso int
AS
BEGIN
	SELECT R.Cod_Studente, E.Cognome+' '+E.Nome as 'Studente',D.Domanda, R.Risposta from RISPOSTE R
	left join TEST T on R.Cod_Test=T.Chiave
	left join ESTERNI E on R.Cod_Studente=E.Chiave
	left join DOMANDE D on T.Chiave=D.Cod_Test
	where T.Cod_Corso=@Cod_Corso
	order by E.Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_SELECTONE]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM TEST
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[TEST_UPDATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_UPDATE]
(
	@Chiave int,
	@Cod_Corso int,
	@Soglia int,
	@Data_Test date,
	@Ora_Test char(5)
)
AS
BEGIN
	UPDATE TEST 
	SET Cod_Corso = @Cod_Corso,
		Soglia = @Soglia,
		Data_Test = @Data_Test,
		Ora = @Ora_Test
	WHERE Chiave = @Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_Abilitato]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--abilita utente
CREATE PROCEDURE [dbo].[UTENTI_Abilitato]
@abilitato bit,
@chiave int
AS
BEGIN
	DECLARE @Abi bit=1;
	DECLARE @Dis bit=0;
	update utenti 
	set abilitato= IIF(@abilitato=1, @Dis, @Abi)
	where Chiave=@chiave
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_Controlla_Abilitazione]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[UTENTI_Controlla_Abilitazione]
(
	@COD_UTENTE int
)
AS
BEGIN
	SELECT * FROM UTENTI
	WHERE Chiave=@COD_UTENTE
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_GETCODUTENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[UTENTI_GETCODUTENTE]
(
	@usr nvarchar(50)
)
AS
BEGIN
	select *
	from UTENTI
	where usr=@usr
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_Insert]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UTENTI_Insert]
@TIPO char(1),
@USR NVARCHAR(50),
@PWD NVARCHAR(50),
@COGNOME NVARCHAR(50),
@NOME NVARCHAR(50),
@FIGURA NVARCHAR(50)
AS
BEGIN
	insert into UTENTI
	values (@TIPO,@USR,@PWD,@COGNOME,@NOME,@FIGURA,0)
	
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_LOGIN]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Procedure di login per utenti*/
CREATE PROCEDURE [dbo].[UTENTI_LOGIN]
(
	@Usr nvarchar(50),
	@Pwd nvarchar(50)
)
AS
BEGIN
	SELECT *
	FROM UTENTI
	WHERE Usr = @Usr AND
		Pwd = @Pwd
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SelectAll]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UTENTI_SelectAll]
AS
BEGIN
	select *
from UTENTI
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SelectOne]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[UTENTI_SelectOne]
(
	@Chiave int
)
AS
BEGIN
	SELECT * FROM UTENTI
	WHERE Chiave=@Chiave
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SelectTutor]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[UTENTI_SelectTutor]

AS
BEGIN

	select chiave, Nome +' '+ Cognome as Nome from UTENTI
	where Tipo='t' and abilitato='true'

END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SelectTutorContabili]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_SelectTutorContabili] 	
AS
BEGIN
	select * from UTENTI where Tipo='t' or Tipo='c' 
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_TIPO_LOGIN]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Il tipo dell'UTENTE associato a quell'Usr e quella Pwd*/
CREATE PROCEDURE [dbo].[UTENTI_TIPO_LOGIN]
(
	@Usr nvarchar(50),
	@Pwd nvarchar(50)
)
AS
BEGIN
	SELECT Tipo
	FROM UTENTI
	WHERE Usr = @Usr AND
		Pwd =@Pwd
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_TutorSelectAll]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_TutorSelectAll]
	
AS
BEGIN
	select * from UTENTI where Tipo='t'
END
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_Update]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_Update]
@CHIAVE int,
@TIPO char(1),
@USR NVARCHAR(50),
@PWD NVARCHAR(50),
@COGNOME NVARCHAR(50),
@NOME NVARCHAR(50),
@FIGURA NVARCHAR(50),
@ABILITATO bit
AS
BEGIN
	update UTENTI
	set tipo=@TIPO,usr=@USR,pwd=@PWD,cognome=@COGNOME,nome=@NOME,figura=@FIGURA,Abilitato=@ABILITATO
	where Chiave=@CHIAVE
END
GO
/****** Object:  StoredProcedure [generation].[CLASSI_CHECKONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [generation].[CLASSI_CHECKONE]
(
	@COD_CORSO INT,
	@COD_STUDENTE INT
)
AS
BEGIN
select *
from CLASSI
where Cod_Corso=@Cod_Corso
	and Cod_Studente=@Cod_Studente
END
GO
/****** Object:  StoredProcedure [generation].[CLASSI_SELECT_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [generation].[CLASSI_SELECT_CORSO]
(
	@COD_CORSO INT
)
as
begin
	select * from V_CLASSI_STUDENTI
	WHERE Cod_Corso=@COD_CORSO
end
GO
/****** Object:  StoredProcedure [generation].[CLASSI_SELECT_PUNTEGGIO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CLASSI_SELECT_PUNTEGGIO]
(
	@Cod_Studente int
)
AS
BEGIN
	SELECT Punteggio
	FROM CLASSI
	WHERE Cod_Studente=@Cod_Studente
END
GO
/****** Object:  StoredProcedure [generation].[CLASSI_SELECTALL_STUDENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tutte le CLASSI che uno studente ha frequentato*/
CREATE PROCEDURE [generation].[CLASSI_SELECTALL_STUDENTE]
(
	@CodiceStudente int
)
AS
BEGIN
	SELECT *
	FROM CLASSI 
	WHERE Cod_Studente = @CodiceStudente
END
GO
/****** Object:  StoredProcedure [generation].[CLASSI_SELECTALL_STUDENTI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tutti gli Studenti di una CLASSE*/
CREATE PROCEDURE [generation].[CLASSI_SELECTALL_STUDENTI]
(
	@CodiceClasse int
)
AS
BEGIN
	SELECT E.Cognome, E.Nome, E.Usr
	FROM CLASSI C JOIN ESTERNI E 
		ON C.Cod_Studente = E.Chiave
	WHERE C.Chiave = @CodiceClasse
		AND E.Tipo = 'S' 
END
GO
/****** Object:  StoredProcedure [generation].[COMPETENZE_SelectDocente]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[COMPETENZE_SelectDocente]
@skills nvarchar(500)
AS
BEGIN
	select Chiave, Cognome, Nome from V_DOCENTI_SKILLS  
	where Skills like '%'+@skills+'%'
END
GO
/****** Object:  StoredProcedure [generation].[CONTABILITA_MATERIE_COSTO_DOCENTE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CONTABILITA_MATERIE_COSTO_DOCENTE]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT M.Titolo, M.Costo_Docente, E.Cognome, E.Nome, E.Piva
	FROM MATERIE M
	JOIN ESTERNI E 
		ON M.Cod_Docente = E.Chiave
	WHERE M.Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_QUOTAZIONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Assegna il Costo, modifica lo Status_Corsi (Q) e la Data_Status(GETDATE())*/
CREATE PROCEDURE [generation].[CORSI_QUOTAZIONE]
(
	@Cod_Corso int,
	@Costo int
)
AS
BEGIN
	UPDATE CORSI
	SET Costo = @Costo,
		Status_Corsi = 'Q',
		Data_Status = GETDATE()
	WHERE Chiave = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_SELECT_NON_COMPRATI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CORSI_SELECT_NON_COMPRATI]
(
	@COD_STUDENTE INT
)
AS
BEGIN
SELECT
	C.Chiave,
	C.Titolo,
	C.Tipo,
	SUBSTRING(CAST (C.Data_Partenza as nvarchar(50)),1,10) as Data_Partenza,
	
	C.Costo
FROM CORSI C
where C.Status_Corsi='A' and
 C.Chiave NOT IN 
(
	SELECT COD_CORSO
	FROM CLASSI
	WHERE Cod_Studente = @COD_STUDENTE
)
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_SELECTALL_CLASSI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tutte le CLASSI relative ad un determinato CORSO*/
CREATE PROCEDURE [generation].[CORSI_SELECTALL_CLASSI]
(
	@CodiceCorso int
)
AS
BEGIN
	SELECT C.Chiave AS [Codice classe],
	CO.Tipo,
	CO.Titolo,
	CO.Data_Partenza AS [Data partenza],
	COUNT(C.Cod_Studente) AS [Numero studenti]
	FROM CLASSI C JOIN CORSI CO
		ON C.Cod_Corso = CO.Chiave
	WHERE CO.Chiave = @CodiceCorso
	GROUP BY C.Chiave, CO.Tipo, CO.Titolo, CO.Data_Partenza
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_SELECTALL_PREPARATI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CORSI_SELECTALL_PREPARATI]
AS
BEGIN
	SELECT  DISTINCT C.Chiave, C.Titolo, U.Cognome, U.Nome
	FROM CORSI C
	  JOIN MATERIE M
		ON C.Chiave = M.Cod_Corso
	 JOIN UTENTI U
		ON c.Cod_Utente = U.Chiave
	WHERE C.Status_Corsi = 'P'
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_SelectForTutorStatusM]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[CORSI_SelectForTutorStatusM] 
(
@Cod_Tutor int
)
AS
BEGIN
 SELECT * from CORSI where Status_Corsi = 'M' and Cod_Utente = @Cod_Tutor
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_SelectStautsC]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[CORSI_SelectStautsC]
	@COD_TUTOR int
AS
BEGIN
	select * from CORSI
	where Status_Corsi='C' and Cod_Utente=@COD_TUTOR 
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_StatusM]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[CORSI_StatusM]
	@COD_CORSO INT
AS
BEGIN
	UPDATE CORSI SET Status_Corsi='M', Data_Status=GETDATE() where Chiave=@COD_CORSO
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_UPDATE_STATUS]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CORSI_UPDATE_STATUS]
(	
	@Cod_Corso int
)
AS
BEGIN
	UPDATE CORSI
	SET Status_Corsi = 'A',
		Data_Status = GETDATE()
	WHERE Chiave = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_UTENTI_FILTRO_Q]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CORSI_UTENTI_FILTRO_Q]

AS
BEGIN
	SELECT * FROM V_CORSI_UTENTI_FILTRO_Q
END
GO
/****** Object:  StoredProcedure [generation].[CORSI_UTENTI_SELECTONE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[CORSI_UTENTI_SELECTONE]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT * FROM v_CORSI_UTENTI
	WHERE Chiave = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[DOMANDE_SELECT_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[DOMANDE_SELECT_CORSO]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT D.Domanda
	FROM DOMANDE D
	JOIN TEST T ON D.Cod_Test = T.Chiave	
		JOIN CORSI C ON T.Cod_Corso = C.Chiave
		WHERE Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[DOMANDE_SELECT_TEST]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[DOMANDE_SELECT_TEST]
(
	@Cod_Test int
)
AS
BEGIN
	SELECT *
	FROM DOMANDE
	WHERE Cod_Test = @Cod_Test
END
GO
/****** Object:  StoredProcedure [generation].[ESTERNI_CONTROLLODUPLICE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[ESTERNI_CONTROLLODUPLICE]
(
	@Usr nvarchar(50)
)
AS
BEGIN
	SELECT *
	FROM ESTERNI
	WHERE Usr = @Usr
END
GO
/****** Object:  StoredProcedure [generation].[ESTERNI_SelectForSkills]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [generation].[ESTERNI_SelectForSkills]
	@skills nvarchar(50)
AS
BEGIN
	select * from V_DOCENTI_SKILLS
	where Skills like '%'+@skills+'%'

END
GO
/****** Object:  StoredProcedure [generation].[GENMONEY_STORICO_CORSI]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[GENMONEY_STORICO_CORSI]
(
	@Cod_Studente int
)
AS
BEGIN
	SELECT C.Titolo, SUBSTRING(CAST(G.Data_Transazione AS nvarchar(50)), 1, 10) AS Data_Transazione, G.Ammontare
	FROM GENMONEY as G
	JOIN CORSI as C
	ON G.Cod_Corso = C.Chiave
	WHERE Cod_Corso!=0 and Cod_Studente=@Cod_Studente
END
GO
/****** Object:  StoredProcedure [generation].[GENMONEY_STORICO_RICARICHE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[GENMONEY_STORICO_RICARICHE]
(
	@Cod_Studente int
)
AS
BEGIN
	SELECT Chiave, Cod_Studente, Cod_Corso, SUBSTRING(CAST(Data_Transazione AS nvarchar(50)), 1, 10) AS Data_Transazione, Ammontare
	FROM GENMONEY
	WHERE Cod_Corso=0 and Cod_Studente=@Cod_Studente
END
GO
/****** Object:  StoredProcedure [generation].[MATERIE_INFO_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Il Titolo e la Descrizione della MATERIA in base ad un Cod_Corso dato*/
CREATE PROCEDURE [generation].[MATERIE_INFO_CORSO]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT M.Chiave, M.Titolo, M.Descrizione, (E.Cognome + ' ' + E.Nome) as Docente, M.Accettato, M.Preparato, M.Data_Risposta
	FROM MATERIE M
	join ESTERNI E
	on M.Cod_Docente = E.chiave
	WHERE Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[MATERIE_SELECT_PREPARATE]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tutte le materie che sono state Preparate(1)*/
CREATE PROCEDURE [generation].[MATERIE_SELECT_PREPARATE]
AS
BEGIN
	SELECT M.Cod_Corso, C.Titolo, M.Titolo, E.Cognome+' '+E.Nome as Docente, Preparato
	FROM MATERIE M
	join ESTERNI E on M.Cod_Docente=E.Chiave
	join CORSI C on M.Cod_Corso=C.Chiave
	WHERE Preparato = 1
END
GO
/****** Object:  StoredProcedure [generation].[PREISCRIZIONI_COUNT_CORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Il conto delle Preregistrazioni al corso*/
CREATE PROCEDURE [generation].[PREISCRIZIONI_COUNT_CORSO]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT COUNT(Chiave) as QUANTI
	FROM PREISCRIZIONI
	WHERE Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[PROGRAMMI_INFO_MATERIA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Il Link, il Titolo, il Materiale, la Descrizione del PROGRAMMA in base ad un Cod_Materia dato*/
CREATE PROCEDURE [generation].[PROGRAMMI_INFO_MATERIA]
(
	@Cod_Materia int
)
AS
BEGIN
	SELECT Chiave, Tipo, Link, Materiale, Descrizione
	FROM PROGRAMMI
	WHERE Cod_Materia = @Cod_Materia
END
GO
/****** Object:  StoredProcedure [generation].[PROGRAMMI_SELECT_FOR_MATERIA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [generation].[PROGRAMMI_SELECT_FOR_MATERIA]
(
	@Cod_Materia int
)
as
begin
	SELECT *
	FROM PROGRAMMI
	WHERE Cod_Materia=@Cod_Materia
end
GO
/****** Object:  StoredProcedure [generation].[TEST_SELECT_SOGLIA]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[TEST_SELECT_SOGLIA] 
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT Soglia
	FROM TEST
	WHERE Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[TEST_SELECTONEBYCORSO]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [generation].[TEST_SELECTONEBYCORSO]
(
	@Cod_Corso int
)
AS
BEGIN
	SELECT * FROM TEST
	WHERE Cod_Corso = @Cod_Corso
END
GO
/****** Object:  StoredProcedure [generation].[UTENTI_GETNOME]    Script Date: 14/09/2022 11:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [generation].[UTENTI_GETNOME]
(
	@Chiave int
)
AS
BEGIN
	SELECT Nome
	FROM UTENTI
	WHERE Chiave = @Chiave
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 51
               Left = 56
               Bottom = 181
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE"
            Begin Extent = 
               Top = 59
               Left = 684
               Bottom = 189
               Right = 854
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_JOIN_MATERIE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_JOIN_MATERIE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE (dbo)"
            Begin Extent = 
               Top = 26
               Left = 394
               Bottom = 189
               Right = 616
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_MATERIE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_MATERIE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[22] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CLASSI"
            Begin Extent = 
               Top = 11
               Left = 125
               Bottom = 174
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 3
               Left = 569
               Bottom = 166
               Right = 791
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TEST"
            Begin Extent = 
               Top = 229
               Left = 874
               Bottom = 392
               Right = 1096
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DOMANDE"
            Begin Extent = 
               Top = 222
               Left = 404
               Bottom = 385
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 224
               Left = 116
               Bottom = 387
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         T' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_CORSI_TEST_RISULTATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'able = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_CORSI_TEST_RISULTATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_CORSI_TEST_RISULTATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UTENTI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 266
               Bottom = 136
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_UTENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSI_UTENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 48
               Left = 76
               Bottom = 264
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE"
            Begin Extent = 
               Top = 45
               Left = 344
               Bottom = 175
               Right = 534
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 132
               Left = 666
               Bottom = 262
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSISELECTALL_DOCENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CORSISELECTALL_DOCENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 7
               Left = 318
               Bottom = 170
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "COMPETENZE"
            Begin Extent = 
               Top = 21
               Left = 800
               Bottom = 184
               Right = 1022
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CRONISTORIADOCENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_CRONISTORIADOCENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "COMPETENZE (dbo)"
            Begin Extent = 
               Top = 33
               Left = 423
               Bottom = 196
               Right = 645
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DOCENTI_SKILLS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DOCENTI_SKILLS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[22] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE"
            Begin Extent = 
               Top = 114
               Left = 340
               Bottom = 277
               Right = 562
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 5
               Left = 690
               Bottom = 168
               Right = 912
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ESTERNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ESTERNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE"
            Begin Extent = 
               Top = 7
               Left = 319
               Bottom = 170
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 7
               Left = 589
               Bottom = 170
               Right = 811
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ESTERNI_CorsiConStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ESTERNI_CorsiConStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CLASSI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 266
               Bottom = 136
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ESTERNI_STUDENTI_CORSI_FREQUENTATI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ESTERNI_STUDENTI_CORSI_FREQUENTATI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GENMONEY (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 266
               Bottom = 136
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_GENMONEY_ACQUISTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_GENMONEY_ACQUISTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GENMONEY (dbo)"
            Begin Extent = 
               Top = 23
               Left = 371
               Bottom = 186
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1716
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 2520
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GENMONEY_COUNT_STUDENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GENMONEY_COUNT_STUDENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MATERIE (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 24
               Left = 365
               Bottom = 187
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 13
               Left = 615
               Bottom = 197
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MATERIE_COSTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MATERIE_COSTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[22] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CORSI"
            Begin Extent = 
               Top = 90
               Left = 107
               Bottom = 253
               Right = 329
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIE"
            Begin Extent = 
               Top = 202
               Left = 414
               Bottom = 365
               Right = 636
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PROGRAMMI"
            Begin Extent = 
               Top = 5
               Left = 411
               Bottom = 168
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "TEST"
            Begin Extent = 
               Top = 103
               Left = 717
               Bottom = 266
               Right = 939
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_MATERIE_INFO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_MATERIE_INFO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_MATERIE_INFO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CLASSI"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ESTERNI"
            Begin Extent = 
               Top = 7
               Left = 318
               Bottom = 170
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 15
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_VOTI_STUDENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_VOTI_STUDENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CLASSI (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ESTERNI (dbo)"
            Begin Extent = 
               Top = 7
               Left = 318
               Bottom = 170
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'V_CLASSI_STUDENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'V_CLASSI_STUDENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CORSI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UTENTI (dbo)"
            Begin Extent = 
               Top = 6
               Left = 266
               Bottom = 136
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'v_CORSI_UTENTI_FILTRO_Q'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'v_CORSI_UTENTI_FILTRO_Q'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GENMONEY (dbo)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 316
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1440
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'V_SALDO_STUDENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'generation', @level1type=N'VIEW',@level1name=N'V_SALDO_STUDENTI'
GO
USE [master]
GO
ALTER DATABASE [generation] SET  READ_WRITE 
GO
