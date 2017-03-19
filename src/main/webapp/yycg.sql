/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/3/19 20:22:09                           */
/*==============================================================*/




drop table if exists AREA_BACKUP;

drop table if exists BASICINFO;

drop table if exists BSS_SYS_AREA;

drop table if exists BSS_SYS_DEPLOYNODE;

drop table if exists BSS_SYS_LOG;

drop table if exists BSS_SYS_MODULE;

drop table if exists BSS_SYS_OPERATE;

drop table if exists BSS_SYS_ROLE;

drop table if exists BSS_SYS_ROLEMODULE;

drop table if exists BSS_SYS_ROLENODE;

drop table if exists BSS_SYS_ROLEOPERATE;

drop table if exists BSS_SYS_ROLESYS;

drop table if exists BSS_SYS_SYSTEM;

drop table if exists DICTINFO;

drop table if exists DICTTYPE;

drop table if exists ERROR_TASK_BACKUP;

drop table if exists GYSYPML;

drop table if exists GYSYPML_CONTROL;

drop table if exists SYSLOG;

drop table if exists SYSMODULE;

drop table if exists SYSOPERATION;

drop table if exists SYSROLE;

drop table if exists SYSROLEMODULE;

drop table if exists SYSUSER;

drop table if exists USERAREA;

drop table if exists USERGYS;

drop table if exists USERGYSAREA;

drop table if exists USERJD;

drop table if exists USERROLE;

drop table if exists USERYY;

drop table if exists YPPMBACKUP;

drop table if exists YPXX;

drop table if exists YPXX_BACKUP;

drop index INDEX_YYBUSINESS_1 on YYBUSINESS;

drop table if exists YYBUSINESS;

drop index INDEX_YYBUSINESS2014_1 on YYBUSINESS2014;

drop table if exists YYBUSINESS2014;

drop index INDEX_YYBUSINESS2015_1 on YYBUSINESS2015;

drop table if exists YYBUSINESS2015;

drop index INDEX_YYCGD_1 on YYCGD;

drop table if exists YYCGD;

drop index INDEX_YYCGD2014_2 on YYCGD2014;

drop index INDEX_YYCGD2014_1 on YYCGD2014;

drop table if exists YYCGD2014;

drop table if exists YYCGDMX;

drop table if exists YYCGDMX2014;

drop table if exists YYCGDRK;

drop table if exists YYCGDRK2014;

drop index INDEX_YYBUSINESSJSD_1 on YYJSD;

drop table if exists YYJSD;

drop index INDEX_YYJSD2014_1 on YYJSD2014;

drop table if exists YYJSD2014;

drop table if exists YYJSDMX;

drop table if exists YYJSDMX2014;

drop index INDEX_YYBUSSINESSTHD_1 on YYTHD;

drop table if exists YYTHD;

drop index INDEX_YYTHD2014_1 on YYTHD2014;

drop table if exists YYTHD2014;

drop table if exists YYTHDMX;

drop table if exists YYTHDMX2014;

drop table if exists YYYPML;

/*==============================================================*/
/* Table: AREA_BACKUP                                           */
/*==============================================================*/
create table AREA_BACKUP
(
   AREAID               varchar(128) not null comment '区域id',
   AREACODE             varchar(128) comment '全国行政区代码',
   AREANAME             varchar(128) not null comment '区域名称',
   AREALEVEL            char(1) not null comment '区域级别，1：省级，2：市级，3，区县',
   AREAFULLNAME         varchar(200) comment '区域全称',
   PARENTID             varchar(128) not null comment '父级区域id',
   VCHAR1               varchar(32),
   VCHAR2               varchar(32),
   VCHAR3               varchar(32),
   ISUSED               char(1) default '1' comment '是否使用，1：使用，0：不使用',
   primary key (AREAID)
);

/*==============================================================*/
/* Table: BASICINFO                                             */
/*==============================================================*/
create table BASICINFO
(
   ID                   varchar(32) not null,
   NAME                 varchar(200) not null,
   VALUE                varchar(512) not null,
   TYPE                 varchar(20) not null,
   TAG                  varchar(30),
   ISALIVE              char(1) not null,
   VCHAR1               varchar(32),
   VCHAR3               varchar(60),
   VCHAR2               varchar(32),
   primary key (ID)
);

alter table BASICINFO comment '基础配置信息表';

/*==============================================================*/
/* Table: BSS_SYS_AREA                                          */
/*==============================================================*/
create table BSS_SYS_AREA
(
   AREAID               varchar(32) not null,
   AREANAME             varchar(128) not null,
   AREALEVEL            numeric(8,0) not null,
   AREAFULLNAME         varchar(200),
   PARENTID             varchar(32),
   SHORTNAME            varchar(32),
   ISUNIT               char(1),
   LASTUPDATE           varchar(14),
   YZCODE               varchar(32),
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (AREAID)
);

/*==============================================================*/
/* Table: BSS_SYS_DEPLOYNODE                                    */
/*==============================================================*/
create table BSS_SYS_DEPLOYNODE
(
   NODEID               varchar(32) not null,
   NAME                 varchar(200) not null,
   SYSID                varchar(32) not null,
   URL                  varchar(200) not null,
   ICON                 varchar(500),
   SHOWORDER            numeric(8,0) not null,
   VCHAR1               varchar(200),
   VCHAR6               varchar(500),
   VCHAR2               varchar(200),
   VCHAR3               varchar(200),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   primary key (NODEID)
);

/*==============================================================*/
/* Table: BSS_SYS_LOG                                           */
/*==============================================================*/
create table BSS_SYS_LOG
(
   LOGID                varchar(32) not null,
   USERNAME             varchar(64) not null,
   TRUENAME             varchar(20) not null,
   CLIENTIP             varchar(32),
   OPERTYPE             varchar(32) not null,
   MODULENAME           varchar(32) not null,
   OPERCONTENT          varchar(600),
   OPERDATE             varchar(14) not null,
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (LOGID)
);

/*==============================================================*/
/* Table: BSS_SYS_MODULE                                        */
/*==============================================================*/
create table BSS_SYS_MODULE
(
   MODULEID             varchar(32) not null,
   SYSID                varchar(32) not null,
   NAME                 varchar(64) not null,
   PARENTID             varchar(32) not null,
   URL                  varchar(200),
   ICON                 varchar(500),
   SHOWORDER            numeric(8,0) not null,
   ISUSED               char(1) not null,
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (MODULEID)
);

/*==============================================================*/
/* Table: BSS_SYS_OPERATE                                       */
/*==============================================================*/
create table BSS_SYS_OPERATE
(
   OPERATEID            varchar(32) not null,
   OPERATENAME          varchar(100) not null,
   OPERATECODE          varchar(64),
   METHOD               varchar(200),
   MODULEID             varchar(32),
   ICON                 varchar(500),
   SHOWORDER            numeric(8,0) not null,
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (OPERATEID)
);

/*==============================================================*/
/* Table: BSS_SYS_ROLE                                          */
/*==============================================================*/
create table BSS_SYS_ROLE
(
   ROLEID               varchar(32) not null,
   ROLENAME             varchar(128) not null,
   ROLEDES              varchar(200),
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (ROLEID)
);

/*==============================================================*/
/* Table: BSS_SYS_ROLEMODULE                                    */
/*==============================================================*/
create table BSS_SYS_ROLEMODULE
(
   RMID                 varchar(32) not null,
   RNID                 varchar(32) not null,
   MODULEID             varchar(32) not null,
   VCHAR1               varchar(100),
   VCHAR2               varchar(100),
   VCHAR3               varchar(200),
   VCHAR4               varchar(200),
   primary key (RMID)
);

/*==============================================================*/
/* Table: BSS_SYS_ROLENODE                                      */
/*==============================================================*/
create table BSS_SYS_ROLENODE
(
   RNID                 varchar(32) not null,
   RSID                 varchar(32) not null,
   NODEID               varchar(32) not null,
   VCHAR1               varchar(100),
   VCHAR2               varchar(100),
   VCHAR3               varchar(200),
   VCHAR4               varchar(200),
   primary key (RNID)
);

/*==============================================================*/
/* Table: BSS_SYS_ROLEOPERATE                                   */
/*==============================================================*/
create table BSS_SYS_ROLEOPERATE
(
   ROID                 varchar(32) not null,
   RMID                 varchar(32) not null,
   OPERATEID            varchar(32) not null,
   VCHAR1               varchar(100),
   VCHAR2               varchar(100),
   VCHAR3               varchar(200),
   VCHAR4               varchar(200),
   primary key (ROID)
);

/*==============================================================*/
/* Table: BSS_SYS_ROLESYS                                       */
/*==============================================================*/
create table BSS_SYS_ROLESYS
(
   RSID                 varchar(32) not null,
   ROLEID               varchar(32) not null,
   SYSID                varchar(32) not null,
   VCHAR1               varchar(100),
   VCHAR2               varchar(100),
   VCHAR3               varchar(200),
   VCHAR4               varchar(200),
   primary key (RSID)
);

/*==============================================================*/
/* Table: BSS_SYS_SYSTEM                                        */
/*==============================================================*/
create table BSS_SYS_SYSTEM
(
   SYSID                varchar(32) not null,
   SYSNAME              varchar(64) not null,
   URL                  varchar(200),
   ICON                 varchar(500) not null,
   SHOWORDER            numeric(8,0),
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (SYSID)
);

/*==============================================================*/
/* Table: DICTINFO                                              */
/*==============================================================*/
create table DICTINFO
(
   ID                   varchar(32) not null,
   DICTCODE             varchar(32) comment '字典代码',
   TYPECODE             varchar(32) not null comment '字典类型代码',
   INFO                 varchar(64) not null comment '字典信息',
   REMARK               varchar(256) comment '备注',
   UPDATETIME           varchar(16) comment '修改时间',
   DICTSORT             int comment '排序',
   ISENABLE             varchar(1) not null default '1' comment '是否启用。1启用；0停用',
   VALUETYPE            varchar(1),
   primary key (ID)
);

/*==============================================================*/
/* Table: DICTTYPE                                              */
/*==============================================================*/
create table DICTTYPE
(
   TYPECODE             varchar(32) not null comment '字典类型代码',
   TYPENAME             varchar(64) not null comment '字典类型名称',
   REMARK               varchar(256) comment '备注',
   TYPESORT             int comment '排序',
   CODELENGTH           varchar(32) comment 'dictcode的字符长度',
   primary key (TYPECODE)
);

/*==============================================================*/
/* Table: ERROR_TASK_BACKUP                                     */
/*==============================================================*/
create table ERROR_TASK_BACKUP
(
   TASKID               varchar(32),
   WSURL                varchar(400),
   WSMETHOD             varchar(100),
   WSNAMESPACE          varchar(300),
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300)
);

/*==============================================================*/
/* Table: GYSYPML                                               */
/*==============================================================*/
create table GYSYPML
(
   ID                   varchar(32) not null,
   YPXXID               varchar(32) not null comment '药品信息id',
   USERGYSID            varchar(64) not null comment '供应商id',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   primary key (ID),
   key UNI_GYSYPML (YPXXID, USERGYSID)
);

alter table GYSYPML comment '供应商药品目录';

/*==============================================================*/
/* Table: GYSYPML_CONTROL                                       */
/*==============================================================*/
create table GYSYPML_CONTROL
(
   ID                   varchar(32) not null,
   YPXXID               varchar(32) not null comment '药品信息id',
   USERGYSID            varchar(64) not null comment '供应商id',
   CONTROL              char(1) not null comment '监督机构控制状态(1：正常 ,2：暂停)',
   ADVICE               varchar(128) comment '监督机构意见',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   primary key (ID),
   key UNI_GYSYPMLCONTROL (YPXXID, USERGYSID)
);

alter table GYSYPML_CONTROL comment '供应商药品目录控制表';

/*==============================================================*/
/* Table: SYSLOG                                                */
/*==============================================================*/
create table SYSLOG
(
   ID                   varchar(64) not null,
   USERID               varchar(32) comment '用户账号',
   OPERATEDATE          datetime comment '操作时间',
   USERIP               varchar(20) comment '用户ip',
   USERNAME             varchar(64) comment '用户名称',
   LOGTYPE              char(1) comment '日志类型1:操作成功日志，2：操作失败日志',
   MESSAGES             varchar(200) comment '日志明细',
   primary key (ID)
);

alter table SYSLOG comment '用户操作日志表';

/*==============================================================*/
/* Table: SYSMODULE                                             */
/*==============================================================*/
create table SYSMODULE
(
   MODULEID             varchar(32) not null comment '模块id',
   MODULENAME           varchar(64) not null comment '模块名称',
   PARENTID             varchar(32) not null comment '父模块id',
   URL                  varchar(200) comment '模块url即访问地址',
   ICON                 varchar(128) comment '模块图标',
   SHOWORDER            numeric(8,0) not null comment '显示顺序，用于菜单排列顺序',
   ISUSED               char(1) not null comment '状态标记： 1:使用， 2：暂不使用',
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (MODULEID)
);

/*==============================================================*/
/* Table: SYSOPERATION                                          */
/*==============================================================*/
create table SYSOPERATION
(
   OPERATEID            varchar(32) not null comment '操作id',
   OPERATENAME          varchar(64) not null comment '操作名称',
   URL                  varchar(200) comment '访问地址',
   MODULEID             varchar(32) comment '所属模块id',
   ICON                 varchar(128) comment '图标',
   SHOWORDER            numeric(8,0) not null comment '显示顺序',
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   VCHAR6               varchar(500),
   primary key (OPERATEID)
);

alter table SYSOPERATION comment '系统模块操作表';

/*==============================================================*/
/* Table: SYSROLE                                               */
/*==============================================================*/
create table SYSROLE
(
   ID                   varchar(32) not null comment '角色id',
   ROLENAME             varchar(64) not null comment '角色名称',
   GROUPID              char(1) not null comment '所属用户类型',
   VCHAR1               varchar(64) comment '备用',
   VCHAR2               varchar(64) comment '备用',
   VCHAR3               varchar(64) comment '备用',
   primary key (ID)
);

/*==============================================================*/
/* Table: SYSROLEMODULE                                         */
/*==============================================================*/
create table SYSROLEMODULE
(
   ROLEID               varchar(32) not null comment '角色id，对应角色表主键',
   MODULEID             varchar(32) not null comment '模块id，对应模块表主键',
   primary key (ROLEID, MODULEID)
);

alter table SYSROLEMODULE comment '系统角色对应模块权限表';

/*==============================================================*/
/* Table: SYSUSER                                               */
/*==============================================================*/
create table SYSUSER
(
   ID                   varchar(32) not null comment '主键',
   USERID               varchar(20) not null comment '用户账号',
   USERNAME             varchar(128) not null comment '用户名称',
   GROUPID              char(1) not null comment '用户类别 0:系统管理员,1：卫生局 2:卫生院 3：卫生室 4:供货商',
   PWD                  varchar(64) not null comment '密码',
   CONTACT              varchar(128) comment '联系方式',
   ADDR                 varchar(256) comment '地址',
   EMAIL                varchar(64) comment '电子邮件',
   USERSTATE            char(1) not null default '1' comment '用户状态：1正常，0暂停',
   REMARK               varchar(256) comment '备注',
   CREATETIME           timestamp default 'SYSDATE' comment '创建时间',
   SEX                  varchar(4) comment '性别',
   PHONE                varchar(20) comment '电话',
   MOVEPHONE            varchar(11) comment '移动电话',
   FAX                  varchar(20) comment '传真',
   LASTUPDATE           varchar(14) comment '最后修改时间',
   VCHAR1               varchar(300),
   VCHAR2               varchar(300),
   VCHAR3               varchar(300),
   VCHAR4               varchar(300),
   VCHAR5               varchar(300),
   SYSID                varchar(64) comment '单位id',
   primary key (ID),
   key INDEX_UNIQUE_USERID (USERID)
);

alter table SYSUSER comment '用户表';

/*==============================================================*/
/* Table: USERAREA                                              */
/*==============================================================*/
create table USERAREA
(
   USERID               varchar(32) not null,
   AREAID               varchar(32) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (USERID, AREAID)
);

alter table USERAREA comment '用户区域表';

/*==============================================================*/
/* Table: USERGYS                                               */
/*==============================================================*/
create table USERGYS
(
   ID                   varchar(64) not null,
   MC                   varchar(128) not null comment '企业名称(中文)',
   LB                   varchar(32) comment '企业类别',
   XKZ                  varchar(128) comment '(生产或经营)许可证',
   XKZYXQ               varchar(128) comment '许可证到期时间(年月日)',
   LXR                  varchar(64) comment '企业联系人',
   DH                   varchar(64) comment '企业联系电话',
   JYFW                 varchar(256) comment '经营范围',
   ZCDZ                 varchar(128) comment '注册地址(中文)',
   LXDZ                 varchar(128) comment '联系地址',
   YZBM                 varchar(32) comment '邮政编码',
   ZZC                  varchar(32) comment '总资产(万元)',
   CZ                   varchar(64) comment '企业传真',
   FRMC                 varchar(16) comment '法人代表姓名',
   FRSFZ                varchar(64) comment '法人身份证',
   ZCZJ                 varchar(32) comment '企业注册资金(万元)',
   XSE                  varchar(32) comment '上年度销售金额(万元)',
   DZYX                 varchar(128) comment '电子信箱',
   WZ                   varchar(256) comment '网址',
   DMZH                 varchar(128) comment '企业代码证号',
   DMZHYXQ              varchar(128) comment '企业代码有效期',
   YYZZ                 varchar(64) comment '营业执照',
   YYZZYXQ              varchar(128) comment '营业执照有效期',
   XYZ                  char(1) comment '是否有企业信用证',
   XYZBM                varchar(64) comment '信用证号',
   XYZYXQ               varchar(128) comment '信用证有效期',
   GDZC                 varchar(32) comment '固定资产（万元）',
   JJ                   text comment '公司简介(中文)',
   BZ                   varchar(200) comment '备注',
   VCHAR1               varchar(128),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key AK_USERGYS_NEWINDEX2_USERGYS (MC)
);

/*==============================================================*/
/* Table: USERGYSAREA                                           */
/*==============================================================*/
create table USERGYSAREA
(
   USERGYSID            varchar(64) not null,
   AREAID               varchar(32) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (USERGYSID, AREAID)
);

alter table USERGYSAREA comment '供货商供货地区';

/*==============================================================*/
/* Table: USERJD                                                */
/*==============================================================*/
create table USERJD
(
   ID                   varchar(64) not null,
   MC                   varchar(128) not null comment '机构名称',
   DZ                   varchar(256) comment '联系地址',
   YZBM                 varchar(32) comment '邮政编码',
   XLR                  varchar(64) comment '联系人',
   DH                   varchar(64) comment '联系电话',
   CZ                   varchar(64) comment '传真',
   DZYX                 varchar(128) comment 'email',
   WZ                   varchar(128) comment '网址',
   VCHAR1               varchar(128),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   DQ                   varchar(1024) comment '所属地区',
   primary key (ID),
   key AK_USERJD_NEWINDEX2_USERJD (MC)
);

/*==============================================================*/
/* Table: USERROLE                                              */
/*==============================================================*/
create table USERROLE
(
   USERID               varchar(32) not null comment '用户id，对应用户表主键',
   USERROLE             varchar(32) not null comment '用户角色id，对应角色表主键',
   VCHAR1               varchar(64),
   primary key (USERID, USERROLE)
);

alter table USERROLE comment '用户角色表';

/*==============================================================*/
/* Table: USERYY                                                */
/*==============================================================*/
create table USERYY
(
   ID                   varchar(64) not null,
   MC                   varchar(128) not null comment '医院名称',
   DZ                   varchar(256) comment '通讯地址',
   YZBM                 varchar(32) comment '邮政编码',
   DQ                   varchar(128) comment '所属地区id',
   JB                   varchar(32) comment '医院级别',
   CWS                  varchar(64) comment '床位数',
   FYLJG                char(1) comment '是否非营利性医疗机构',
   DH                   varchar(64) comment '院办电话',
   YJKDH                varchar(64) comment '药剂科电话',
   LB                   varchar(64) comment '医院类型',
   YPSR                 varchar(32) comment '上年度药品收入',
   YWSR                 varchar(32) comment '上年度业务收入',
   CZ                   varchar(64) comment '院办传真',
   VCHAR1               varchar(128),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key AK_USERYY_MC_NEWINDEX_USERYY (MC)
);

/*==============================================================*/
/* Table: YPPMBACKUP                                            */
/*==============================================================*/
create table YPPMBACKUP
(
   ID                   varchar(32) not null comment '主键',
   BM                   varchar(10) not null comment '药品品目号',
   MC                   varchar(128) not null comment '通用名',
   JX                   varchar(32) not null comment '剂型',
   DW                   varchar(64) comment '单位',
   ZHXS                 varchar(16) not null comment '转换系数',
   LB                   varchar(32) comment '药品类别',
   ZT                   char(1) comment '状态',
   ZL                   varchar(16) comment '装量',
   HL                   varchar(16) comment '含量',
   YB                   char(1) comment '是否医保',
   YBBM                 varchar(128) comment '医保编码',
   BZ                   varchar(200) comment '备注',
   VCHAR1               varchar(768),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   GG                   varchar(128) comment '规格',
   primary key (ID),
   key AK_YYPM_NEWINDEX1_YPPM (BM),
   key AK_YYPM_NEWINDEX2_YPPM (ZHXS, GG, MC, JX)
);

/*==============================================================*/
/* Table: YPXX                                                  */
/*==============================================================*/
create table YPXX
(
   ID                   varchar(32) not null,
   BM                   varchar(32) not null comment '药品流水号',
   SCQYMC               varchar(128) not null comment '生产企业名称',
   SPMC                 varchar(64) not null comment '商品名',
   ZBJG                 float not null comment '中标价',
   ZPDZ                 varchar(128) comment '产品照片',
   PZWH                 varchar(64) comment '批准文号',
   PZWHYXQ              datetime comment '批准文号有效期',
   JKY                  char(1) comment '是否进口药',
   BZCZ                 varchar(64) comment '包装材质',
   BZDW                 varchar(64) comment '包装单位',
   LSJG                 float comment '最新零售价',
   LSJGCC               varchar(64) comment '零售价出处',
   ZLCC                 varchar(32) comment '质量层次',
   ZLCCSM               varchar(200) comment '质量层次说明',
   YPJYBG               char(1) comment '有无药品检验报告',
   YPJYBGBM             varchar(128) comment '药品检验报告编号',
   YPJYBGYXQ            datetime comment '药品检验报告有效期',
   CPSM                 text comment '产品说明',
   JYZT                 char(1) not null comment '药品交易状态',
   VCHAR1               varchar(128),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   DW                   varchar(32) comment '单位',
   MC                   varchar(128) comment '通用名',
   JX                   varchar(32) comment '剂型',
   GG                   varchar(128) comment '规格',
   ZHXS                 varchar(16) comment '转换系数',
   PINYIN               varchar(768) comment '通用名拼音',
   LB                   varchar(32) comment '药品类别',
   primary key (ID),
   key AK_YYXX_NEWINDEX1_YPXX (BM),
   key AK_YYXX_NEWINDEX2_YPXX (SCQYMC, SPMC, MC, JX, GG, ZHXS)
);

/*==============================================================*/
/* Table: YPXX_BACKUP                                           */
/*==============================================================*/
create table YPXX_BACKUP
(
   ID                   varchar(32) not null,
   BM                   varchar(32) not null,
   SCQYMC               varchar(128) not null,
   SPMC                 varchar(64) not null,
   ZBJG                 float not null,
   ZPDZ                 varchar(128),
   PZWH                 varchar(64),
   PZWHYXQ              datetime,
   JKY                  char(1),
   BZCZ                 varchar(64),
   BZDW                 varchar(64),
   LSJG                 float,
   LSJGCC               varchar(64),
   ZLCC                 varchar(32),
   ZLCCSM               varchar(200),
   YPJYBG               char(1),
   YPJYBGBM             varchar(128),
   YPJYBGYXQ            datetime,
   JYZT                 char(1) not null,
   VCHAR1               varchar(128),
   VCHAR2               varchar(128),
   VCHAR3               varchar(128),
   DW                   varchar(32),
   MC                   varchar(128),
   JX                   varchar(32),
   GG                   varchar(128),
   ZHXS                 varchar(16),
   PINYIN               varchar(768),
   LB                   varchar(32)
);

/*==============================================================*/
/* Table: YYBUSINESS                                            */
/*==============================================================*/
create table YYBUSINESS
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null comment '采购单id',
   USERYYID             varchar(64) not null comment '医院id',
   YPXXID               varchar(32) not null comment '药品信息id',
   ZBJG                 float not null comment '中标价',
   JYJG                 float not null comment '交易价',
   CGL                  int not null comment '采购量',
   CGJE                 float not null comment '采购金额',
   CGZT                 char(1) not null comment '存储数据字典：1、未确认送货  2、已发货、3、已入库',
   RKL                  int comment '入库量',
   RKJE                 float comment '入库金额',
   RKDH                 varchar(32) comment '发票号或入库单号',
   YPPH                 varchar(32) comment '药品批号',
   YPYXQ                float comment '药品有效期(年)',
   RKTIME               timestamp comment '入库时间（年月日时分秒）',
   FHTIME               timestamp comment '发货时间（年月日时分秒）',
   YYTHDID              varchar(32) comment '退货单id',
   THL                  varchar(32) comment '退货量',
   THJE                 float comment '退货金额',
   THZT                 char(1) comment '退货状态 1、未确认退货 2、已确认退货',
   THYY                 varchar(100) comment '退货原因',
   YYJSDID              varchar(32) comment '结算单id',
   JSL                  int comment '结算量',
   JSJE                 float comment '结算金额',
   JSZT                 char(1) comment '结算状态1、未确认结算 2、已确认结算',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   USERGYSID            varchar(64) comment '供货商id',
   primary key (ID),
   key UNI_YYBUSINESS (YYCGDID, YPXXID)
);

alter table YYBUSINESS comment '医院交易明细表(用于交易查询统计)';

/*==============================================================*/
/* Index: INDEX_YYBUSINESS_1                                    */
/*==============================================================*/
create index INDEX_YYBUSINESS_1 on YYBUSINESS
(
   CGZT,
   THZT,
   YYCGDID,
   YYJSDID,
   USERGYSID,
   YYTHDID,
   JSZT
);

/*==============================================================*/
/* Table: YYBUSINESS2014                                        */
/*==============================================================*/
create table YYBUSINESS2014
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null,
   USERYYID             varchar(64) not null,
   YPXXID               varchar(32) not null,
   ZBJG                 float not null,
   JYJG                 float not null,
   CGL                  int not null,
   CGJE                 float not null,
   CGZT                 char(1) not null,
   RKL                  int,
   RKJE                 float,
   RKDH                 varchar(32),
   YPPH                 varchar(32),
   YPYXQ                float,
   RKTIME               timestamp,
   FHTIME               timestamp,
   YYTHDID              varchar(32),
   THL                  varchar(32),
   THJE                 float,
   THZT                 char(1),
   THYY                 varchar(100),
   YYJSDID              varchar(32),
   JSL                  int,
   JSJE                 float,
   JSZT                 char(1),
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   USERGYSID            varchar(64),
   primary key (ID),
   key UNI_YYBUSINESS2014 (YYCGDID, YPXXID)
);

/*==============================================================*/
/* Index: INDEX_YYBUSINESS2014_1                                */
/*==============================================================*/
create index INDEX_YYBUSINESS2014_1 on YYBUSINESS2014
(
   CGZT,
   THZT,
   YYCGDID,
   YYJSDID,
   USERGYSID,
   YYTHDID,
   JSZT
);

/*==============================================================*/
/* Table: YYBUSINESS2015                                        */
/*==============================================================*/
create table YYBUSINESS2015
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null,
   USERYYID             varchar(64) not null,
   YPXXID               varchar(32) not null,
   ZBJG                 float not null,
   JYJG                 float not null,
   CGL                  int not null,
   CGJE                 float not null,
   CGZT                 char(1) not null,
   RKL                  int,
   RKJE                 float,
   RKDH                 varchar(32),
   YPPH                 varchar(32),
   YPYXQ                float,
   RKTIME               timestamp,
   FHTIME               timestamp,
   YYTHDID              varchar(32),
   THL                  varchar(32),
   THJE                 float,
   THZT                 char(1),
   THYY                 varchar(100),
   YYJSDID              varchar(32),
   JSL                  int,
   JSJE                 float,
   JSZT                 char(1),
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   USERGYSID            varchar(64),
   primary key (ID),
   key UNI_YYBUSINESS2015 (YYCGDID, YPXXID)
);

/*==============================================================*/
/* Index: INDEX_YYBUSINESS2015_1                                */
/*==============================================================*/
create index INDEX_YYBUSINESS2015_1 on YYBUSINESS2015
(
   CGZT,
   THZT,
   YYCGDID,
   YYJSDID,
   USERGYSID,
   YYTHDID,
   JSZT
);

/*==============================================================*/
/* Table: YYCGD                                                 */
/*==============================================================*/
create table YYCGD
(
   ID                   varchar(32) not null,
   BM                   varchar(10) not null comment '采购单编号',
   MC                   varchar(128) not null comment '采购单名称',
   USERYYID             varchar(64) not null comment '医院id',
   LXR                  varchar(64) comment '联系人',
   LXDH                 varchar(64) comment '联系电话',
   CJR                  varchar(64) comment '建单人',
   CJTIME               timestamp not null default 'SYSDATE' comment '建单时间(年月日时分秒)',
   TJTIME               timestamp comment '提交时间(年月日时分秒)',
   BZ                   varchar(256) comment '备注',
   ZT                   char(1) not null comment '采购单状态(存储数据字典：1：未提交、2：已提交未审核、3：审核通过、4：审核不通过)',
   SHYJ                 varchar(256) comment '审核意见',
   SHTIME               timestamp comment '审核时间(年月日时分秒)',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   XGTIME               timestamp comment '最近修改时间',
   primary key (ID),
   key UNI_YYCGD (BM)
);

alter table YYCGD comment '医院采购单表';

/*==============================================================*/
/* Index: INDEX_YYCGD_1                                         */
/*==============================================================*/
create index INDEX_YYCGD_1 on YYCGD
(
   USERYYID,
   ZT
);

/*==============================================================*/
/* Table: YYCGD2014                                             */
/*==============================================================*/
create table YYCGD2014
(
   ID                   varchar(32) not null,
   BM                   varchar(10) not null,
   MC                   varchar(128) not null,
   USERYYID             varchar(64) not null,
   LXR                  varchar(64),
   LXDH                 varchar(64),
   CJR                  varchar(64),
   CJTIME               timestamp not null,
   TJTIME               timestamp,
   XGTIME               timestamp,
   BZ                   varchar(256),
   KSGHDATE             datetime,
   JSGHDATE             datetime,
   ZT                   char(1) not null,
   SHYJ                 varchar(256),
   SHTIME               timestamp,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYCGD2014 (BM)
);

/*==============================================================*/
/* Index: INDEX_YYCGD2014_1                                     */
/*==============================================================*/
create index INDEX_YYCGD2014_1 on YYCGD2014
(
   USERYYID,
   ZT
);

/*==============================================================*/
/* Index: INDEX_YYCGD2014_2                                     */
/*==============================================================*/
create index INDEX_YYCGD2014_2 on YYCGD2014
(
   CJTIME
);

/*==============================================================*/
/* Table: YYCGDMX                                               */
/*==============================================================*/
create table YYCGDMX
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null comment '采购单id',
   YPXXID               varchar(32) not null comment '药品信息id',
   USERGYSID            varchar(64) not null comment '供货企业id',
   ZBJG                 float comment '中标价',
   JYJG                 float comment '交易价',
   CGL                  int comment '采购量',
   CGJE                 float comment '采购金额',
   CGZT                 char(1) comment '存储数据字典：1、未确认送货  2、已发货、3、已入库、4无法供货',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key AK_YYCGDMX_NEWINDEX1_YYCGDMX (YYCGDID, YPXXID)
);

alter table YYCGDMX comment '医院采购单明细表';

/*==============================================================*/
/* Table: YYCGDMX2014                                           */
/*==============================================================*/
create table YYCGDMX2014
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null,
   USERGYSID            varchar(64) not null,
   YPXXID               varchar(32) not null,
   ZBJG                 float not null,
   JYJG                 float,
   CGL                  int,
   CGJE                 float,
   CGZT                 char(1) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYCGDMX2014 (YYCGDID, YPXXID)
);

/*==============================================================*/
/* Table: YYCGDRK                                               */
/*==============================================================*/
create table YYCGDRK
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null comment '采购单id',
   YPXXID               varchar(32) not null comment '药品信息id',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   RKL                  int not null comment '入库量',
   RKJE                 float not null comment '入库金额',
   RKDH                 varchar(32) not null comment '发票号或入库单号',
   YPPH                 varchar(32) not null comment '药品批号',
   YPYXQ                float not null comment '药品有效期(年)',
   RKTIME               timestamp not null default 'SYSDATE' comment '入库时间（年月日时分秒）',
   CGZT                 char(1) comment '采购状态,已入库',
   primary key (ID),
   key UNI_YYBUSINESSCGDRK (YYCGDID, YPXXID)
);

alter table YYCGDRK comment '医院交易采购单入库表';

/*==============================================================*/
/* Table: YYCGDRK2014                                           */
/*==============================================================*/
create table YYCGDRK2014
(
   ID                   varchar(32) not null,
   YYCGDID              varchar(32) not null,
   YPXXID               varchar(32) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   RKL                  int not null,
   CGZT                 char(1) not null,
   RKJE                 float not null,
   RKDH                 varchar(32) not null,
   YPPH                 varchar(32) not null,
   YPYXQ                float not null,
   RKTIME               timestamp not null default 'SYSDATE',
   primary key (ID),
   key UNI_YYCGDRK2014 (YYCGDID, YPXXID)
);

/*==============================================================*/
/* Table: YYJSD                                                 */
/*==============================================================*/
create table YYJSD
(
   ID                   varchar(32) not null comment '结算单id',
   BM                   varchar(10) not null comment '结算单编号',
   MC                   varchar(128) not null comment '结算单名称',
   USERYYID             varchar(64) not null comment '医院id',
   LXR                  varchar(64) comment '联系人',
   LXDH                 varchar(64) comment '联系电话',
   CJR                  varchar(64) comment '建单人',
   CJTIME               timestamp not null comment '建单时间(年月日时分秒)',
   XGTIME               timestamp comment '最近修改时间',
   TJTIME               timestamp not null comment '提交时间(年月日时分秒)',
   BZ                   varchar(256) comment '备注',
   ZT                   char(1) comment '存储数据字典：1：未提交、2：已提交至供货商',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (ID),
   key UNI_YYBUSSINESSJSD (BM)
);

alter table YYJSD comment '医院交易结算单表(用于交易查询统计)';

/*==============================================================*/
/* Index: INDEX_YYBUSINESSJSD_1                                 */
/*==============================================================*/
create index INDEX_YYBUSINESSJSD_1 on YYJSD
(
   USERYYID
);

/*==============================================================*/
/* Table: YYJSD2014                                             */
/*==============================================================*/
create table YYJSD2014
(
   ID                   varchar(32) not null,
   BM                   varchar(10) not null,
   MC                   varchar(128) not null,
   USERYYID             varchar(64) not null,
   LXR                  varchar(64),
   LXDH                 varchar(64),
   CJR                  varchar(64),
   CJTIME               timestamp not null,
   TJTIME               timestamp,
   XGTIME               timestamp,
   BZ                   varchar(256),
   ZT                   char(1) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (ID),
   key UNI_YYJSD2014 (BM)
);

/*==============================================================*/
/* Index: INDEX_YYJSD2014_1                                     */
/*==============================================================*/
create index INDEX_YYJSD2014_1 on YYJSD2014
(
   USERYYID
);

/*==============================================================*/
/* Table: YYJSDMX                                               */
/*==============================================================*/
create table YYJSDMX
(
   ID                   varchar(32) not null,
   YYJSDID              varchar(32) not null comment '结算单id',
   YPXXID               varchar(32) not null comment '药品信息id',
   YYCGDID              varchar(32) not null comment '采购单id',
   JSL                  int not null comment '结算量',
   JSJE                 float not null comment '结算金额',
   JSZT                 char(1) not null comment '结算状态1、未确认结算 2、已确认结算',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYBUSINESSJSDMX (YPXXID, YYCGDID)
);

/*==============================================================*/
/* Table: YYJSDMX2014                                           */
/*==============================================================*/
create table YYJSDMX2014
(
   ID                   varchar(32) not null,
   YYJSDID              varchar(32) not null,
   YPXXID               varchar(32) not null,
   YYCGDID              varchar(32) not null,
   JSL                  int not null,
   JSJE                 float not null,
   JSZT                 char(1) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYJSDMX2014 (YPXXID, YYCGDID)
);

/*==============================================================*/
/* Table: YYTHD                                                 */
/*==============================================================*/
create table YYTHD
(
   ID                   varchar(32) not null comment '退货单id',
   BM                   varchar(10) comment '退货单编号',
   MC                   varchar(128) comment '退货单名称',
   USERYYID             varchar(64) comment '医院id',
   LXR                  varchar(64) comment '联系人',
   LXDH                 varchar(64) comment '联系电话',
   CJR                  varchar(64) comment '建单人',
   CJTIME               timestamp comment '建单时间(年月日时分秒)',
   XGTIME               timestamp comment '修改时间',
   TJTIME               timestamp comment '提交时间(年月日时分秒)',
   BZ                   varchar(256) comment '备注',
   ZT                   char(1) comment '存储数据字典：1：未提交、2：已提交至供货商',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (ID),
   key UNI_YYBUSSINESSTHD (BM)
);

alter table YYTHD comment '医院交易退货单表(用于交易查询统计)';

/*==============================================================*/
/* Index: INDEX_YYBUSSINESSTHD_1                                */
/*==============================================================*/
create index INDEX_YYBUSSINESSTHD_1 on YYTHD
(
   USERYYID
);

/*==============================================================*/
/* Table: YYTHD2014                                             */
/*==============================================================*/
create table YYTHD2014
(
   ID                   varchar(32) not null,
   BM                   varchar(10) not null,
   MC                   varchar(128) not null,
   USERYYID             varchar(64) not null,
   LXR                  varchar(64),
   LXDH                 varchar(64),
   CJR                  varchar(64),
   CJTIME               timestamp not null,
   TJTIME               timestamp,
   XGTIME               timestamp,
   BZ                   varchar(256),
   ZT                   char(1) not null,
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   primary key (ID),
   key UNI_YYTHD2014 (BM)
);

/*==============================================================*/
/* Index: INDEX_YYTHD2014_1                                     */
/*==============================================================*/
create index INDEX_YYTHD2014_1 on YYTHD2014
(
   USERYYID
);

/*==============================================================*/
/* Table: YYTHDMX                                               */
/*==============================================================*/
create table YYTHDMX
(
   ID                   varchar(32) not null,
   YYTHDID              varchar(32) not null comment '退货单id',
   YYCGDID              varchar(32) not null comment '采购单id',
   YPXXID               varchar(32) not null comment '药品信息id',
   THL                  int not null comment '退货量',
   THJE                 float not null comment '退货金额',
   THZT                 char(1) not null comment '退货状态 1、未确认退货 2、已确认退货',
   THYY                 varchar(100) comment '退货原因',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYBUSINESSTHDM (YYCGDID, YPXXID)
);

/*==============================================================*/
/* Table: YYTHDMX2014                                           */
/*==============================================================*/
create table YYTHDMX2014
(
   ID                   varchar(32) not null,
   YYTHDID              varchar(32) not null,
   YPXXID               varchar(32) not null,
   YYCGDID              varchar(32) not null,
   THL                  int not null,
   THJE                 float not null,
   THZT                 char(1) not null,
   THYY                 varchar(100),
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   VCHAR3               varchar(64),
   VCHAR4               varchar(128),
   VCHAR5               varchar(128),
   primary key (ID),
   key UNI_YYTHDMX2014 (YPXXID, YYCGDID)
);

/*==============================================================*/
/* Table: YYYPML                                                */
/*==============================================================*/
create table YYYPML
(
   ID                   varchar(32) not null,
   USERYYID             varchar(64) not null comment '医院id',
   YPXXID               varchar(32) not null comment '药品信息id',
   USERGYSID            varchar(64) not null comment '药品供货企业id',
   VCHAR1               varchar(64),
   VCHAR2               varchar(64),
   primary key (ID),
   key AK_YYYPML_NEWINDEX1 (USERYYID, YPXXID, USERGYSID)
);

alter table YYYPML comment '医院药品目录表';

alter table GYSYPML add constraint FK_GYSYPML foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table GYSYPML_CONTROL add constraint FK_GYSYPMLCONTROL foreign key (YPXXID)
      references
alter table SYSOPERATION add constraint FK_SYSOPERA_REFERENCE_SYSMODUL foreign key (MODULEID)
      references SYSMODULE (MODULEID) on delete restrict on update restrict;

alter table SYSROLEMODULE add constraint FK_SYSROLEM_REFERENCE_SYSMODUL foreign key (MODULEID)
      references SYSMODULE (MODULEID) on delete restrict on update restrict;

alter table USERAREA add constraint FK_USERAREA_REFERENCE_SYSUSER foreign key (USERID)
      references SYSUSER (ID) on delete restrict on update restrict;

alter table USERGYSAREA add constraint FK_USERGYSAREA_REF_USERGYS foreign key (USERGYSID)
      references USERGYS (ID) on delete restrict on update restrict;

alter table USERROLE add constraint FK_USERROLE_REFERENCE_SYSROLE foreign key (USERROLE)
      references SYSROLE (ID) on delete restrict on update restrict;

alter table YYBUSINESS add constraint FK_YYBUSINESS_2 foreign key (USERYYID)
      references USERYY (ID) on delete restrict on update restrict;

alter table YYBUSINESS add constraint FK_YYBUSINESS_3 foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table YYBUSINESS2014 add constraint FK_YYBUSINESS2014_2 foreign key (USERYYID)
      references USERYY (ID) on delete restrict on update restrict;

alter table YYBUSINESS2014 add constraint FK_YYBUSINESS2014_3 foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table YYBUSINESS2015 add constraint FK_YYBUSINESS2015_2 foreign key (USERYYID)
      references USERYY (ID) on delete restrict on update restrict;

alter table YYBUSINESS2015 add constraint FK_YYBUSINESS2015_3 foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table YYCGD add constraint FK_YYCGD_USERYYID foreign key (USERYYID)
      references USERYY (ID) on delete restrict on update restrict;

alter table YYCGDMX add constraint FK_YYCGDMX_USERGYSID foreign key (USERGYSID)
      references USERGYS (ID) on delete restrict on update restrict;

alter table YYCGDMX add constraint FK_YYCGDMX_YYXID foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table YYCGDMX2014 add constraint FK_YYCGDMX2014_1 foreign key (YYCGDID)
      references YYCGD2014 (ID) on delete restrict on update restrict;

alter table YYCGDMX2014 add constraint FK_YYCGDMX2014_3 foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;

alter table YYYPML add constraint FK_YYYPML foreign key (YPXXID)
      references YPXX (ID) on delete restrict on update restrict;YPXX (ID) on delete restrict on update restrict;



