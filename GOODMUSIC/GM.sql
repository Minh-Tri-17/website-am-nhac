/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     11/10/2021 9:08:21 PM                        */
/*==============================================================*/

/*==============================================================*/
/* Table: BAI_HAT                                               */
/*==============================================================*/
use QLWedNhac

create table BAI_HAT 
(
   IDBH                 integer                        not null,
   IDCS                 integer                        not null,   
   TENBH                nvarchar(200)                  not null,
   THUTU                integer                        not null,
   ANH                  nvarchar(200)                  not null,
   LINK                 nvarchar(200)                  not null,
   IDTOP				integer								   ,
   IDCD					integer								   ,
   constraint PK_BAI_HAT primary key (IDBH)
);
/*==============================================================*/
/* Index: BAI_HAT_PK                                            */
/*==============================================================*/
create unique index BAI_HAT_PK on BAI_HAT (
IDBH ASC
);

/*==============================================================*/
/* Index: CO1_FK                                                */
/*==============================================================*/
create index CO1_FK on BAI_HAT (
IDCS ASC
);
/*==============================================================*/
/* Table: CAU_HINH                                              */
/*==============================================================*/
create table CAU_HINH 
(
   IDCH                 integer                        not null,
   GIATRI               nvarchar(200)                  not null,
   constraint PK_CAU_HINH primary key (IDCH)
);

/*==============================================================*/
/* Index: CAU_HINH_PK                                           */
/*==============================================================*/
create unique index CAU_HINH_PK on CAU_HINH (
IDCH ASC
);

/*==============================================================*/
/* Table: CA_SI                                                 */
/*==============================================================*/
create table CA_SI 
(
   IDCS                 integer                        not null,
   HOTEN                nvarchar(200)                  not null,
   constraint PK_CA_SI primary key (IDCS)
);

/*==============================================================*/
/* Index: CA_SI_PK                                              */
/*==============================================================*/
create unique index CA_SI_PK on CA_SI (
IDCS ASC
);

/*==============================================================*/
/* Table: CHU_DE                                                */
/*==============================================================*/
create table CHU_DE 
(
   IDCD                 integer                        not null,
   HINHCD               nvarchar(200)                  not null,
   TENCD                nvarchar(200)                  not null,
   constraint PK_CHU_DE primary key (IDCD)
);

/*==============================================================*/
/* Index: CHU_DE_PK                                             */
/*==============================================================*/
create unique index CHU_DE_PK on CHU_DE (
IDCD ASC
);

/*==============================================================*/
/* Table: MV                                                    */
/*==============================================================*/
create table MV 
(
   IDMV                 integer                        not null,
   IDCS                 integer                        not null,
   TENMV                nvarchar(200)                  not null,
   NGAYCAPNHAT          date                           not null,
   THUTU                integer                        not null,
   LINK                 nvarchar(200)                  not null,
   ANH                  nvarchar(200)                  not null,
   constraint PK_MV primary key (IDMV)
);

/*==============================================================*/
/* Index: MV_PK                                                 */
/*==============================================================*/
create unique index MV_PK on MV (
IDMV ASC
);

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on MV (
IDCS ASC
);

/*==============================================================*/
/* Table: TOP_20                                                */
/*==============================================================*/
create table TOP_20 
(
   IDTOP                integer                        not null,
   HINHTOP              nvarchar(200)                  not null,
   TENTOP               nvarchar(200)                  not null,
   constraint PK_TOP_20 primary key (IDTOP)
);

/*==============================================================*/
/* Index: TOP_20_PK                                             */
/*==============================================================*/
create unique index TOP_20_PK on TOP_20 (
IDTOP ASC
);

alter table BAI_HAT
   add constraint FK_BAI_HAT_CO1_CA_SI foreign key (IDCS)
      references CA_SI (IDCS)
      on update cascade
      on delete cascade,
	   constraint FK_BAI_HAT_CO1_TOP20 foreign key (IDTOP)
	  references TOP20 (IDTOP)
	  on update cascade
      on delete cascade,
	   constraint FK_BAI_HAT_CO1_CHUDE foreign key (IDCD)
	   references CHUDE (IDCD)
	  on update cascade
      on delete cascade
alter table MV
   add constraint FK_MV_CO2_CA_SI foreign key (IDCS)
      references CA_SI (IDCS)
      on update cascade
      on delete cascade;


