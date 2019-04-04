/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/4 16:47:37                            */
/*==============================================================*/

/* 删除表
drop table if exists Base_AppSecret;

drop table if exists Base_DatabaseLink;

drop table if exists Base_PermissionAppId;

drop table if exists Base_PermissionRole;

drop table if exists Base_PermissionUser;

drop table if exists Base_SysLog;

drop table if exists Base_SysRole;

drop table if exists Base_User;

drop table if exists Base_UserRoleMap;


*/


/*==============================================================*/
/* Table: Base_AppSecret                                        */
/*==============================================================*/
create table Base_AppSecret
(
   Id                   varchar(50) not null comment '自然主键',
   AppId                varchar(50) comment '应用Id',
   AppSecret            varchar(50) comment '应用密钥',
   AppName              varchar(255) comment '应用名',
   primary key (Id)
);

alter table Base_AppSecret comment '应用密钥表';

/*==============================================================*/
/* Table: Base_DatabaseLink                                     */
/*==============================================================*/
create table Base_DatabaseLink
(
   Id                   varchar(50) not null comment '自然主键',
   LinkName             varchar(50) comment '连接名',
   ConnectionStr        varchar(1000) comment '连接字符串',
   DbType               varchar(50) comment '数据库类型',
   SortNum              varchar(50) comment '排序编号',
   primary key (Id)
);

alter table Base_DatabaseLink comment '数据库连接表';

/*==============================================================*/
/* Table: Base_PermissionAppId                                  */
/*==============================================================*/
create table Base_PermissionAppId
(
   Id                   varchar(50) not null comment '自然主键',
   AppId                varchar(50) comment '应用Id',
   PermissionValue      varchar(50) comment '权限值',
   primary key (Id)
);

alter table Base_PermissionAppId comment 'AppId权限表';

/*==============================================================*/
/* Table: Base_PermissionRole                                   */
/*==============================================================*/
create table Base_PermissionRole
(
   Id                   varchar(50) not null comment '自然主键',
   RoleId               varchar(50) comment '角色Id',
   PermissionValue      varchar(50) comment '权限值',
   primary key (Id)
);

alter table Base_PermissionRole comment '角色权限表';

/*==============================================================*/
/* Table: Base_PermissionUser                                   */
/*==============================================================*/
create table Base_PermissionUser
(
   Id                   varchar(50) not null comment '自然主键',
   UserId               varchar(50) comment '用户Id',
   PermissionValue      varchar(50) comment '权限值',
   primary key (Id)
);

alter table Base_PermissionUser comment '用户权限表';

/*==============================================================*/
/* Table: Base_SysLog                                           */
/*==============================================================*/
create table Base_SysLog
(
   Id                   varchar(50) not null comment '自然主键',
   LogType              varchar(255) comment '日志类型',
   LogContent           longtext comment '日志内容',
   OpUserName           varchar(255) comment '操作员用户名',
   OpTime               datetime comment '日志记录时间',
   primary key (Id)
);

alter table Base_SysLog comment '系统日志表';

/*==============================================================*/
/* Table: Base_SysRole                                          */
/*==============================================================*/
create table Base_SysRole
(
   Id                   varchar(50) not null comment '自然主键',
   RoleId               varchar(50) comment '角色Id',
   RoleName             national varchar(50) comment '角色名',
   primary key (Id)
);

alter table Base_SysRole comment '系统角色表';

/*==============================================================*/
/* Table: Base_User                                             */
/*==============================================================*/
create table Base_User
(
   Id                   varchar(50) not null comment '自然主键',
   UserId               varchar(50) comment '用户主键',
   UserName             varchar(255) comment '用户名',
   Password             varchar(255) comment '密码',
   RealName             national varchar(50) comment '姓名',
   Sex                  int comment '性别(1为男，0为女)',
   Birthday             date comment '出生日期',
   primary key (Id)
);

alter table Base_User comment '系统用户表';

/*==============================================================*/
/* Table: Base_UserRoleMap                                      */
/*==============================================================*/
create table Base_UserRoleMap
(
   Id                   varchar(50) not null comment '自然主键',
   UserId               varchar(50) comment '用户Id',
   RoleId               varchar(50) comment '角色Id',
   primary key (Id)
);

alter table Base_UserRoleMap comment '用户角色映射表';

