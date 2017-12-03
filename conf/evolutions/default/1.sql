# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table buyer (
  buyer_id                      integer auto_increment not null,
  user_id                       integer,
  constraint pk_buyer primary key (buyer_id)
);

create table category (
  category_id                   integer auto_increment not null,
  category_name                 varchar(255),
  constraint pk_category primary key (category_id)
);

create table inventory (
  inventory_id                  integer auto_increment not null,
  seller_id                     integer,
  item_id                       integer,
  quantity                      integer,
  constraint pk_inventory primary key (inventory_id)
);

create table item (
  item_id                       integer auto_increment not null,
  item_name                     varchar(255),
  description                   varchar(255),
  price                         double,
  category_id                   integer,
  constraint pk_item primary key (item_id)
);

create table profile (
  user_id                       integer auto_increment not null,
  username                      varchar(255),
  password                      varchar(255),
  first_name                    varchar(255),
  last_name                     varchar(255),
  address                       varchar(255),
  city                          varchar(255),
  state                         varchar(255),
  zip_code                      integer,
  email                         varchar(255),
  balance                       double,
  constraint uq_profile_username unique (username),
  constraint uq_profile_email unique (email),
  constraint pk_profile primary key (user_id)
);

create table purchase (
  purchase_id                   integer auto_increment not null,
  buyer_id                      integer,
  seller_id                     integer,
  item_id                       integer,
  constraint pk_purchase primary key (purchase_id)
);

create table seller (
  seller_id                     integer auto_increment not null,
  user_id                       integer,
  constraint pk_seller primary key (seller_id)
);


# --- !Downs

drop table if exists buyer;

drop table if exists category;

drop table if exists inventory;

drop table if exists item;

drop table if exists profile;

drop table if exists purchase;

drop table if exists seller;

