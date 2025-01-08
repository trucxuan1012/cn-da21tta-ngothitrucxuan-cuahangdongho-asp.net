/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     12/5/2024 10:04:49 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATEGORY') and o.name = 'FK_CATEGORY_NAM_PRODUCT')
alter table CATEGORY
   drop constraint FK_CATEGORY_NAM_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"ORDER"') and o.name = 'FK_ORDER_APDUNG_PROMOTIO')
alter table "ORDER"
   drop constraint FK_ORDER_APDUNG_PROMOTIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCT') and o.name = 'FK_PRODUCT_CHUA_REVIEWS')
alter table PRODUCT
   drop constraint FK_PRODUCT_CHUA_REVIEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAO') and o.name = 'FK_TAO_TAO_CART')
alter table TAO
   drop constraint FK_TAO_TAO_CART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAO') and o.name = 'FK_TAO_TAO2_CART_DET')
alter table TAO
   drop constraint FK_TAO_TAO2_CART_DET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUOC') and o.name = 'FK_THUOC_THUOC_PRODUCT')
alter table THUOC
   drop constraint FK_THUOC_THUOC_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUOC') and o.name = 'FK_THUOC_THUOC2_ORDER_DE')
alter table THUOC
   drop constraint FK_THUOC_THUOC2_ORDER_DE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TONG') and o.name = 'FK_TONG_TONG_PRODUCT')
alter table TONG
   drop constraint FK_TONG_TONG_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TONG') and o.name = 'FK_TONG_TONG2_CART_DET')
alter table TONG
   drop constraint FK_TONG_TONG2_CART_DET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"USER"') and o.name = 'FK_USER_MUA_ORDER')
alter table "USER"
   drop constraint FK_USER_MUA_ORDER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"USER"') and o.name = 'FK_USER_THEM_CART')
alter table "USER"
   drop constraint FK_USER_THEM_CART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"USER"') and o.name = 'FK_USER_THUCHIEN_REVIEWS')
alter table "USER"
   drop constraint FK_USER_THUCHIEN_REVIEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"USER"') and o.name = 'FK_USER_TIENHANH_SEARCH_H')
alter table "USER"
   drop constraint FK_USER_TIENHANH_SEARCH_H
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XUAT') and o.name = 'FK_XUAT_XUAT_ORDER')
alter table XUAT
   drop constraint FK_XUAT_XUAT_ORDER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XUAT') and o.name = 'FK_XUAT_XUAT2_ORDER_DE')
alter table XUAT
   drop constraint FK_XUAT_XUAT2_ORDER_DE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CART')
            and   type = 'U')
   drop table CART
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CART_DETAILS')
            and   type = 'U')
   drop table CART_DETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATEGORY')
            and   name  = 'NAM_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATEGORY.NAM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORY')
            and   type = 'U')
   drop table CATEGORY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"ORDER"')
            and   name  = 'APDUNG_FK'
            and   indid > 0
            and   indid < 255)
   drop index "ORDER".APDUNG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"ORDER"')
            and   type = 'U')
   drop table "ORDER"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ORDER_DETAILS')
            and   type = 'U')
   drop table ORDER_DETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCT')
            and   name  = 'CHUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCT.CHUA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCT')
            and   type = 'U')
   drop table PRODUCT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROMOTION')
            and   type = 'U')
   drop table PROMOTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REVIEWS')
            and   type = 'U')
   drop table REVIEWS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SEARCH_HISTORY')
            and   type = 'U')
   drop table SEARCH_HISTORY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAO')
            and   name  = 'TAO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAO.TAO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAO')
            and   name  = 'TAO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAO.TAO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAO')
            and   type = 'U')
   drop table TAO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUOC')
            and   name  = 'THUOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUOC.THUOC2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUOC')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUOC.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THUOC')
            and   type = 'U')
   drop table THUOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TONG')
            and   name  = 'TONG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TONG.TONG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TONG')
            and   name  = 'TONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index TONG.TONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TONG')
            and   type = 'U')
   drop table TONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"USER"')
            and   name  = 'THUCHIEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index "USER".THUCHIEN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"USER"')
            and   name  = 'MUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "USER".MUA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"USER"')
            and   name  = 'TIENHANH_FK'
            and   indid > 0
            and   indid < 255)
   drop index "USER".TIENHANH_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"USER"')
            and   name  = 'THEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index "USER".THEM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"USER"')
            and   type = 'U')
   drop table "USER"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XUAT')
            and   name  = 'XUAT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index XUAT.XUAT2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XUAT')
            and   name  = 'XUAT_FK'
            and   indid > 0
            and   indid < 255)
   drop index XUAT.XUAT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XUAT')
            and   type = 'U')
   drop table XUAT
go

/*==============================================================*/
/* Table: CART                                                  */
/*==============================================================*/
create table CART (
   IDCART               int                  not null,
   STATUS               varchar(20)          null,
   constraint PK_CART primary key (IDCART)
)
go

/*==============================================================*/
/* Table: CART_DETAILS                                          */
/*==============================================================*/
create table CART_DETAILS (
   IDCART_DETAILS       int                  not null,
   QUANTITY             int                  not null,
   constraint PK_CART_DETAILS primary key (IDCART_DETAILS)
)
go

/*==============================================================*/
/* Table: CATEGORY                                              */
/*==============================================================*/
create table CATEGORY (
   IDCATEGORY           int                  not null,
   IDPRODUCT            int                  not null,
   CATEGORY_NAME_       varchar(50)          not null,
   constraint PK_CATEGORY primary key (IDCATEGORY)
)
go

/*==============================================================*/
/* Index: NAM_FK                                                */
/*==============================================================*/
create index NAM_FK on CATEGORY (
IDPRODUCT ASC
)
go

/*==============================================================*/
/* Table: "ORDER"                                               */
/*==============================================================*/
create table "ORDER" (
   IDORDER              int                  not null,
   IDPROMOTION          int                  not null,
   CREATION_DATE        datetime             null,
   ORDER_STATUS         varchar(20)          null,
   TOTAL_AMOUNT         decimal(18,2)        not null,
   constraint PK_ORDER primary key (IDORDER)
)
go

/*==============================================================*/
/* Index: APDUNG_FK                                             */
/*==============================================================*/
create index APDUNG_FK on "ORDER" (
IDPROMOTION ASC
)
go

/*==============================================================*/
/* Table: ORDER_DETAILS                                         */
/*==============================================================*/
create table ORDER_DETAILS (
   IDORDER_DETAILS      int                  not null,
   QUANTITY             int                  not null,
   PRICE_AT_THE_TIME    decimal(18,2)        not null,
   constraint PK_ORDER_DETAILS primary key (IDORDER_DETAILS)
)
go

/*==============================================================*/
/* Table: PRODUCT                                               */
/*==============================================================*/
create table PRODUCT (
   IDPRODUCT            int                  not null,
   IDREVIEWS            int                  not null,
   PRODUCT_NAME         varchar(150)         not null,
   PRICE                decimal(18,2)        not null,
   DESCRIPTION          varchar(255)         null,
   IMAGE                varchar(255)         null,
   BRAND                varchar(50)          null,
   QUANTITY_IN_STOCK    int                  not null,
   constraint PK_PRODUCT primary key (IDPRODUCT)
)
go

/*==============================================================*/
/* Index: CHUA_FK                                               */
/*==============================================================*/
create index CHUA_FK on PRODUCT (
IDREVIEWS ASC
)
go

/*==============================================================*/
/* Table: PROMOTION                                             */
/*==============================================================*/
create table PROMOTION (
   IDPROMOTION          int                  not null,
   PROMOTION_NAME       varchar(100)         not null,
   DISCOUNT_CODE        varchar(50)          null,
   DISCOUNT_RATE        decimal(5,2)         null,
   START_DATE           datetime             not null,
   END_DATE             datetime             not null,
   constraint PK_PROMOTION primary key (IDPROMOTION)
)
go

/*==============================================================*/
/* Table: REVIEWS                                               */
/*==============================================================*/
create table REVIEWS (
   IDREVIEWS            int                  not null,
   CONTENT              varchar(255)         not null,
   POINTS               varchar(255)         not null,
   CREATION_DATE        datetime             null,
   constraint PK_REVIEWS primary key (IDREVIEWS)
)
go

/*==============================================================*/
/* Table: SEARCH_HISTORY                                        */
/*==============================================================*/
create table SEARCH_HISTORY (
   IDSEARCH_            int                  not null,
   KEYWORDS             varchar(255)         null,
   SEARCH_TIMEIEM       datetime             null,
   FILTER_CRITERIA      varchar(255)         null,
   constraint PK_SEARCH_HISTORY primary key (IDSEARCH_)
)
go

/*==============================================================*/
/* Table: TAO                                                   */
/*==============================================================*/
create table TAO (
   IDCART               int                  not null,
   IDCART_DETAILS       int                  not null,
   constraint PK_TAO primary key (IDCART, IDCART_DETAILS)
)
go

/*==============================================================*/
/* Index: TAO_FK                                                */
/*==============================================================*/
create index TAO_FK on TAO (
IDCART ASC
)
go

/*==============================================================*/
/* Index: TAO2_FK                                               */
/*==============================================================*/
create index TAO2_FK on TAO (
IDCART_DETAILS ASC
)
go

/*==============================================================*/
/* Table: THUOC                                                 */
/*==============================================================*/
create table THUOC (
   IDPRODUCT            int                  not null,
   IDORDER_DETAILS      int                  not null,
   constraint PK_THUOC primary key (IDPRODUCT, IDORDER_DETAILS)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on THUOC (
IDPRODUCT ASC
)
go

/*==============================================================*/
/* Index: THUOC2_FK                                             */
/*==============================================================*/
create index THUOC2_FK on THUOC (
IDORDER_DETAILS ASC
)
go

/*==============================================================*/
/* Table: TONG                                                  */
/*==============================================================*/
create table TONG (
   IDPRODUCT            int                  not null,
   IDCART_DETAILS       int                  not null,
   constraint PK_TONG primary key (IDPRODUCT, IDCART_DETAILS)
)
go

/*==============================================================*/
/* Index: TONG_FK                                               */
/*==============================================================*/
create index TONG_FK on TONG (
IDPRODUCT ASC
)
go

/*==============================================================*/
/* Index: TONG2_FK                                              */
/*==============================================================*/
create index TONG2_FK on TONG (
IDCART_DETAILS ASC
)
go

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" (
   IDUSER               int                  not null,
   IDSEARCH_            int                  not null,
   IDORDER              int                  not null,
   IDCART               int                  not null,
   IDREVIEWS            int                  not null,
   NAME                 varchar(50)          not null,
   PASSWORD             varchar(255)         not null,
   EMAIL                varchar(100)         not null,
   PHONE_NUMBER         varchar(15)          null,
   ADDRESS              varchar(255)         null,
   ROLE                 varchar(30)          null,
   constraint PK_USER primary key (IDUSER)
)
go

/*==============================================================*/
/* Index: THEM_FK                                               */
/*==============================================================*/
create index THEM_FK on "USER" (
IDCART ASC
)
go

/*==============================================================*/
/* Index: TIENHANH_FK                                           */
/*==============================================================*/
create index TIENHANH_FK on "USER" (
IDSEARCH_ ASC
)
go

/*==============================================================*/
/* Index: MUA_FK                                                */
/*==============================================================*/
create index MUA_FK on "USER" (
IDORDER ASC
)
go

/*==============================================================*/
/* Index: THUCHIEN_FK                                           */
/*==============================================================*/
create index THUCHIEN_FK on "USER" (
IDREVIEWS ASC
)
go

/*==============================================================*/
/* Table: XUAT                                                  */
/*==============================================================*/
create table XUAT (
   IDORDER              int                  not null,
   IDORDER_DETAILS      int                  not null,
   constraint PK_XUAT primary key (IDORDER, IDORDER_DETAILS)
)
go

/*==============================================================*/
/* Index: XUAT_FK                                               */
/*==============================================================*/
create index XUAT_FK on XUAT (
IDORDER ASC
)
go

/*==============================================================*/
/* Index: XUAT2_FK                                              */
/*==============================================================*/
create index XUAT2_FK on XUAT (
IDORDER_DETAILS ASC
)
go

alter table CATEGORY
   add constraint FK_CATEGORY_NAM_PRODUCT foreign key (IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table "ORDER"
   add constraint FK_ORDER_APDUNG_PROMOTIO foreign key (IDPROMOTION)
      references PROMOTION (IDPROMOTION)
go

alter table PRODUCT
   add constraint FK_PRODUCT_CHUA_REVIEWS foreign key (IDREVIEWS)
      references REVIEWS (IDREVIEWS)
go

alter table TAO
   add constraint FK_TAO_TAO_CART foreign key (IDCART)
      references CART (IDCART)
go

alter table TAO
   add constraint FK_TAO_TAO2_CART_DET foreign key (IDCART_DETAILS)
      references CART_DETAILS (IDCART_DETAILS)
go

alter table THUOC
   add constraint FK_THUOC_THUOC_PRODUCT foreign key (IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table THUOC
   add constraint FK_THUOC_THUOC2_ORDER_DE foreign key (IDORDER_DETAILS)
      references ORDER_DETAILS (IDORDER_DETAILS)
go

alter table TONG
   add constraint FK_TONG_TONG_PRODUCT foreign key (IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table TONG
   add constraint FK_TONG_TONG2_CART_DET foreign key (IDCART_DETAILS)
      references CART_DETAILS (IDCART_DETAILS)
go

alter table "USER"
   add constraint FK_USER_MUA_ORDER foreign key (IDORDER)
      references "ORDER" (IDORDER)
go

alter table "USER"
   add constraint FK_USER_THEM_CART foreign key (IDCART)
      references CART (IDCART)
go

alter table "USER"
   add constraint FK_USER_THUCHIEN_REVIEWS foreign key (IDREVIEWS)
      references REVIEWS (IDREVIEWS)
go

alter table "USER"
   add constraint FK_USER_TIENHANH_SEARCH_H foreign key (IDSEARCH_)
      references SEARCH_HISTORY (IDSEARCH_)
go

alter table XUAT
   add constraint FK_XUAT_XUAT_ORDER foreign key (IDORDER)
      references "ORDER" (IDORDER)
go

alter table XUAT
   add constraint FK_XUAT_XUAT2_ORDER_DE foreign key (IDORDER_DETAILS)
      references ORDER_DETAILS (IDORDER_DETAILS)
go

