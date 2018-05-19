Drop Database IF EXISTS barcodeInventory;

CREATE DATABASE barcodeInventory;

USE barcodeInventory;

CREATE TABLE `Item` (
  `id` bigint,
  `rowversion` timestamp,
  `unitId` bigint,
  `catalogInfoId` bigint,
  `itemCondition` nvarchar(255),
  `itemConditionInfoId` bigint,
  `packagingCondition` nvarchar(255),
  `itemType` nvarchar(255),
  `quantityReceived` decimal,
  `appraisalPrice` decimal,
  `retailPrice` decimal,
  `dateCreated` datetime,
  `attributes` bigint,
  `controlNumber` nvarchar(15),
  `claimPrice` decimal,
  `isFood` bit,
  `isEBTEligible` bit,
  `controlScanOnly` bit,
  `createdBy` bigint,
  PRIMARY KEY (`id`),
  KEY `FK` (`unitId`, `catalogInfoId`, `itemCondition`, `itemConditionInfoId`, `packagingCondition`, `itemType`, `createdBy`)
);
CREATE TABLE `ItemCondition` (
  `id` integer,
  `description` varchar(255),
  PRIMARY KEY (`id`)
);
CREATE TABLE `ItemConditionInfo` (
  `id` integer,
  `notes` text,
  PRIMARY KEY (`id`)
);
CREATE TABLE `ItemType` (
  `id` integer,
  `description` varchar(255),
  PRIMARY KEY (`id`)
);
CREATE TABLE `PackagingCondition` (
  `id` integer,
  `description` varchar(255),
  PRIMARY KEY (`id`)
);
CREATE TABLE `CatalogInfo` (
  `id` bigint,
  `rowversion` timestamp,
  `categoryId` bigint,
  `unitOfMeasureId` bigint,
  `description` nvarchar(255),
  `msrp` decimal,
  `internalNumber` varchar(10),
  `upc` nvarchar(13),
  `isbn10` nvarchar(10),
  `isbn13` nvarchar(13),
  `asin` nvarchar(10),
  `plu` nvarchar(5),
  `model` varchar(255),
  `barcode` varchar(255),
  `keywords` nvarchar(1000),
  `manufacturer` nvarchar(255),
  `upcManufacturerCode` nvarchar(5),
  `taxable` bit,
  `createdBy` bigint,
  PRIMARY KEY (`id`),
  KEY `FK` (`categoryId`, `unitOfMeasureId`, `createdBy`)
);
CREATE TABLE `CatalogInfoAttribute` (
  `id` bigint,
  `description` nvarchar(255),
  `valuesCSV` nvarchar(255),
  `valuesRegex` nvarchar(255),
  `uiType` nvarchar(255),
  `validationErrorMessage` nvarchar(255),
  PRIMARY KEY (`id`),
  KEY `FK` (`uiType`)
);
CREATE TABLE `CatalogInfoAttributeValue` (
  `id` bigint,
  `catalogInfoId` bigint,
  `catalogInfoAttributeId` bigint,
  `value` nvarchar(255),
  PRIMARY KEY (`id`),
  KEY `FK` (`catalogInfoId`, `catalogInfoAttributeId`)
);
CREATE TABLE `CatalogInfoCategoryAttribute` (
  `catalogInfoCategoryId` bigint,
  `catalogInfoAttributeId` bigint,
  KEY `PK,FK` (`catalogInfoCategoryId`, `catalogInfoAttributeId`)
);
CREATE TABLE `CatalogInfoCategory` (
  `id` bigint,
  `rowversion` timestamp,
  `parentId` bigint,
  `name` nvarchar(255),
  `level` int,
  `trail` nvarchar(255),
  `keywords` nvarchar(1000),
  `isLeaf` bit,
  `ignoreInheritedAttributes` bit,
  PRIMARY KEY (`id`),
  KEY `FK` (`parentId`)
);
CREATE TABLE `PurchaseType` (
  `id` integer,
  `description` varchar(255),
  PRIMARY KEY (`id`)
);
CREATE TABLE `Load` (
  `id` bigint,
  `rowversion` timestamp,
  `productSourceId` bigint,
  `manifestId` nvarchar(255),
  `trailerId` nvarchar(255),
  `dateCreated` datetime,
  `dateReceived` datetime,
  `dateClosed` datetime,
  `dateNotified` datetime,
  PRIMARY KEY (`id`),
  KEY `FK,AK` (`productSourceId`),
  KEY `AK` (`manifestId`)
);
CREATE TABLE `CatalogImage` (
  `id` bigint,
  `CatalogInfo` bigint,
  `imagePath` text,
  `main` boolean,
  PRIMARY KEY (`id`),
  KEY `FK` (`CatalogInfo`)
);
CREATE TABLE `ItemImage` (
  `id` bigint,
  `itemId` bigint,
  `imagePath` text,
  `main` boolean,
  PRIMARY KEY (`id`),
  KEY `FK` (`itemId`)
);
CREATE TABLE `ProductSource` (
  `id` bigint,
  `name` varchar(255),
  `user` varchar(255),
  `password` varchar(255),
  PRIMARY KEY (`id`)
);
CREATE TABLE `Unit` (
  `id` bigint,
  `loadId` bigint,
  `proNumber` nvarchar(255),
  `description` nvarchar(255),
  `itemCondition` integer,
  `dateCreated` datetime,
  `itemConditionInfoId` bigint,
  `purchaseType` nvarchar(255),
  `closed` bit,
  `alphaId` nvarchar(20),
  PRIMARY KEY (`id`),
  KEY `FK,AK` (`loadId`),
  KEY `AK` (`proNumber`),
  KEY `FK` (`itemCondition`, `itemConditionInfoId`, `purchaseType`)
);
CREATE TABLE `SecurityUser` (
  `id` bigint,
  `firstName` varchar(255),
  `lastName` varchar(255),
  `userName` varchar(255),
  `password` varchar(255),
  `active` boolean,
  PRIMARY KEY (`id`)
);