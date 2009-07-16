-- MySQL dump 10.11
--
-- Host: localhost    Database: wyscms_development
-- ------------------------------------------------------
-- Server version	5.0.75-0ubuntu10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attachment_versions`
--

DROP TABLE IF EXISTS `attachment_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attachment_versions` (
  `id` int(11) NOT NULL auto_increment,
  `attachment_id` int(11) default NULL,
  `version` int(11) default NULL,
  `file_path` varchar(255) default NULL,
  `file_location` varchar(255) default NULL,
  `file_extension` varchar(255) default NULL,
  `file_type` varchar(255) default NULL,
  `file_size` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `name` varchar(255) default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attachment_versions`
--

LOCK TABLES `attachment_versions` WRITE;
/*!40000 ALTER TABLE `attachment_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `file_path` varchar(255) default NULL,
  `file_location` varchar(255) default NULL,
  `file_extension` varchar(255) default NULL,
  `file_type` varchar(255) default NULL,
  `file_size` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `name` varchar(255) default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `category_type_id` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_types`
--

DROP TABLE IF EXISTS `category_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category_types`
--

LOCK TABLES `category_types` WRITE;
/*!40000 ALTER TABLE `category_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connectors`
--

DROP TABLE IF EXISTS `connectors`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `connectors` (
  `id` int(11) NOT NULL auto_increment,
  `page_id` int(11) default NULL,
  `page_version` int(11) default NULL,
  `connectable_id` int(11) default NULL,
  `connectable_type` varchar(255) default NULL,
  `connectable_version` int(11) default NULL,
  `container` varchar(255) default NULL,
  `position` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `connectors`
--

LOCK TABLES `connectors` WRITE;
/*!40000 ALTER TABLE `connectors` DISABLE KEYS */;
INSERT INTO `connectors` VALUES (1,2,2,1,'HtmlBlock',1,'main',1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(2,3,2,2,'HtmlBlock',1,'main',1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(3,4,2,3,'HtmlBlock',1,'main',1,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `connectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_type_groups`
--

DROP TABLE IF EXISTS `content_type_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_type_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_type_groups`
--

LOCK TABLES `content_type_groups` WRITE;
/*!40000 ALTER TABLE `content_type_groups` DISABLE KEYS */;
INSERT INTO `content_type_groups` VALUES (1,'Core','2009-07-16 09:43:05','2009-07-16 09:43:05'),(2,'Categorization','2009-07-16 09:43:05','2009-07-16 09:43:05');
/*!40000 ALTER TABLE `content_type_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `content_type_group_id` int(11) default NULL,
  `priority` int(11) default '2',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_types`
--

LOCK TABLES `content_types` WRITE;
/*!40000 ALTER TABLE `content_types` DISABLE KEYS */;
INSERT INTO `content_types` VALUES (1,'CategoryType',2,2,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(2,'Category',2,2,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(3,'HtmlBlock',1,1,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(4,'Portlet',1,1,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(5,'FileBlock',1,2,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(6,'ImageBlock',1,2,'2009-07-16 09:43:05','2009-07-16 09:43:05'),(7,'Tag',2,2,'2009-07-16 09:43:05','2009-07-16 09:43:05');
/*!40000 ALTER TABLE `content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_view_versions`
--

DROP TABLE IF EXISTS `dynamic_view_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dynamic_view_versions` (
  `id` int(11) NOT NULL auto_increment,
  `dynamic_view_id` int(11) default NULL,
  `version` int(11) default NULL,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `format` varchar(255) default NULL,
  `handler` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dynamic_view_versions`
--

LOCK TABLES `dynamic_view_versions` WRITE;
/*!40000 ALTER TABLE `dynamic_view_versions` DISABLE KEYS */;
INSERT INTO `dynamic_view_versions` VALUES (1,1,1,NULL,'default','html','erb','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" />\n    <title><%= page_title %></title>\n    <%= yield :html_head %>\n  </head>\n  <body style=\"margin: 0; padding: 0; text-align: center;\">\n    <%= cms_toolbar %>\n    <div id=\"wrapper\" style=\"width: 700px; margin: 0 auto; text-align: left; padding: 30px\">\n      Breadcrumbs: <%= render_breadcrumbs %>\n      Main Menu: <%= render_menu %>\n      <h1><%= @page_title %></h1>\n      <p>BrowserCMS has been installed successfully.</p> \n\n      <h2>Getting Started</h2>\n      <p>To start building your site, you can either <%= link_to \"alter this template\", edit_cms_page_template_path(PageTemplate.find_by_file_name(\"default.html.erb\")) %> or <%= link_to \"create a new one\", new_cms_page_template_path %>.  You will be prompted to login with the credentials provided during the install process.  To change which template the pages use, you can click the \'Edit Properties\' button above, and choose a different template. After all pages in the site, use the new template, you can safely delete this one.</p>\n\n      <%= container :main %>\n    </div>\n  </body>\n</html>\n','2009-07-16 09:43:07','2009-07-16 09:43:07',1,0,0,'Created',1,1);
/*!40000 ALTER TABLE `dynamic_view_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_views`
--

DROP TABLE IF EXISTS `dynamic_views`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dynamic_views` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `format` varchar(255) default NULL,
  `handler` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dynamic_views`
--

LOCK TABLES `dynamic_views` WRITE;
/*!40000 ALTER TABLE `dynamic_views` DISABLE KEYS */;
INSERT INTO `dynamic_views` VALUES (1,1,0,'PageTemplate','default','html','erb','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" />\n    <title><%= page_title %></title>\n    <%= yield :html_head %>\n  </head>\n  <body style=\"margin: 0; padding: 0; text-align: center;\">\n    <%= cms_toolbar %>\n    <div id=\"wrapper\" style=\"width: 700px; margin: 0 auto; text-align: left; padding: 30px\">\n      Breadcrumbs: <%= render_breadcrumbs %>\n      Main Menu: <%= render_menu %>\n      <h1><%= @page_title %></h1>\n      <p>BrowserCMS has been installed successfully.</p> \n\n      <h2>Getting Started</h2>\n      <p>To start building your site, you can either <%= link_to \"alter this template\", edit_cms_page_template_path(PageTemplate.find_by_file_name(\"default.html.erb\")) %> or <%= link_to \"create a new one\", new_cms_page_template_path %>.  You will be prompted to login with the credentials provided during the install process.  To change which template the pages use, you can click the \'Edit Properties\' button above, and choose a different template. After all pages in the site, use the new template, you can safely delete this one.</p>\n\n      <%= container :main %>\n    </div>\n  </body>\n</html>\n','2009-07-16 09:43:07','2009-07-16 09:43:07',1,0,0,1,1);
/*!40000 ALTER TABLE `dynamic_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_messages`
--

DROP TABLE IF EXISTS `email_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_messages` (
  `id` int(11) NOT NULL auto_increment,
  `sender` varchar(255) default NULL,
  `recipients` text,
  `subject` text,
  `cc` text,
  `bcc` text,
  `body` text,
  `content_type` varchar(255) default NULL,
  `delivered_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_messages`
--

LOCK TABLES `email_messages` WRITE;
/*!40000 ALTER TABLE `email_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_block_versions`
--

DROP TABLE IF EXISTS `file_block_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `file_block_versions` (
  `id` int(11) NOT NULL auto_increment,
  `file_block_id` int(11) default NULL,
  `version` int(11) default NULL,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `attachment_id` int(11) default NULL,
  `attachment_version` int(11) default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `file_block_versions`
--

LOCK TABLES `file_block_versions` WRITE;
/*!40000 ALTER TABLE `file_block_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_block_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_blocks`
--

DROP TABLE IF EXISTS `file_blocks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `file_blocks` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `attachment_id` int(11) default NULL,
  `attachment_version` int(11) default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `file_blocks`
--

LOCK TABLES `file_blocks` WRITE;
/*!40000 ALTER TABLE `file_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permissions`
--

DROP TABLE IF EXISTS `group_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) default NULL,
  `permission_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_permissions`
--

LOCK TABLES `group_permissions` WRITE;
/*!40000 ALTER TABLE `group_permissions` DISABLE KEYS */;
INSERT INTO `group_permissions` VALUES (1,2,1),(2,3,2),(3,3,3);
/*!40000 ALTER TABLE `group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_sections`
--

DROP TABLE IF EXISTS `group_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_sections` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) default NULL,
  `section_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_sections`
--

LOCK TABLES `group_sections` WRITE;
/*!40000 ALTER TABLE `group_sections` DISABLE KEYS */;
INSERT INTO `group_sections` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,1),(6,3,2);
/*!40000 ALTER TABLE `group_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_type_permissions`
--

DROP TABLE IF EXISTS `group_type_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_type_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_type_id` int(11) default NULL,
  `permission_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_type_permissions`
--

LOCK TABLES `group_type_permissions` WRITE;
/*!40000 ALTER TABLE `group_type_permissions` DISABLE KEYS */;
INSERT INTO `group_type_permissions` VALUES (1,3,2),(2,3,3);
/*!40000 ALTER TABLE `group_type_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_types`
--

DROP TABLE IF EXISTS `group_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `guest` tinyint(1) default '0',
  `cms_access` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_types`
--

LOCK TABLES `group_types` WRITE;
/*!40000 ALTER TABLE `group_types` DISABLE KEYS */;
INSERT INTO `group_types` VALUES (1,'Guest',1,0,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,'Registered Public User',0,0,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,'CMS User',0,1,'2009-07-16 09:43:06','2009-07-16 09:43:06');
/*!40000 ALTER TABLE `group_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `group_type_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Guest','guest',1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,'Cms Administrators','cms-admin',3,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,'Content Editors','content-editor',3,'2009-07-16 09:43:06','2009-07-16 09:43:06');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_block_versions`
--

DROP TABLE IF EXISTS `html_block_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `html_block_versions` (
  `id` int(11) NOT NULL auto_increment,
  `html_block_id` int(11) default NULL,
  `version` int(11) default NULL,
  `name` varchar(255) default NULL,
  `content` mediumtext,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `html_block_versions`
--

LOCK TABLES `html_block_versions` WRITE;
/*!40000 ALTER TABLE `html_block_versions` DISABLE KEYS */;
INSERT INTO `html_block_versions` VALUES (1,1,1,'Page Not Found','<p>The page you tried to access does not exist on this server.</p>',1,0,0,'Created',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(2,2,1,'Access Denied','<p>You have tried to reach a resource or page which you do not have permission to view.</p>',1,0,0,'Created',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(3,3,1,'Server Error','<p>The server encountered an unexpected condition that prevented it from fulfilling the request.</p>',1,0,0,'Created',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `html_block_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_blocks`
--

DROP TABLE IF EXISTS `html_blocks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `html_blocks` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `name` varchar(255) default NULL,
  `content` mediumtext,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `html_blocks`
--

LOCK TABLES `html_blocks` WRITE;
/*!40000 ALTER TABLE `html_blocks` DISABLE KEYS */;
INSERT INTO `html_blocks` VALUES (1,1,0,'Page Not Found','<p>The page you tried to access does not exist on this server.</p>',1,0,0,1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(2,1,0,'Access Denied','<p>You have tried to reach a resource or page which you do not have permission to view.</p>',1,0,0,1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(3,1,0,'Server Error','<p>The server encountered an unexpected condition that prevented it from fulfilling the request.</p>',1,0,0,1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `html_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_versions`
--

DROP TABLE IF EXISTS `link_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `link_versions` (
  `id` int(11) NOT NULL auto_increment,
  `link_id` int(11) default NULL,
  `version` int(11) default NULL,
  `name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `new_window` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `link_versions`
--

LOCK TABLES `link_versions` WRITE;
/*!40000 ALTER TABLE `link_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `links` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `new_window` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_route_options`
--

DROP TABLE IF EXISTS `page_route_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_route_options` (
  `id` int(11) NOT NULL auto_increment,
  `page_route_id` int(11) default NULL,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_route_options`
--

LOCK TABLES `page_route_options` WRITE;
/*!40000 ALTER TABLE `page_route_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_route_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_routes`
--

DROP TABLE IF EXISTS `page_routes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_routes` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `pattern` varchar(255) default NULL,
  `page_id` int(11) default NULL,
  `code` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_routes`
--

LOCK TABLES `page_routes` WRITE;
/*!40000 ALTER TABLE `page_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_versions`
--

DROP TABLE IF EXISTS `page_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_versions` (
  `id` int(11) NOT NULL auto_increment,
  `page_id` int(11) default NULL,
  `version` int(11) default NULL,
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `template_file_name` varchar(255) default NULL,
  `description` text,
  `keywords` text,
  `language` varchar(255) default NULL,
  `cacheable` tinyint(1) default '0',
  `hidden` tinyint(1) default '0',
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `version_comment` varchar(255) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_versions`
--

LOCK TABLES `page_versions` WRITE;
/*!40000 ALTER TABLE `page_versions` DISABLE KEYS */;
INSERT INTO `page_versions` VALUES (1,1,1,'Home',NULL,'/','default.html.erb',NULL,NULL,NULL,1,0,1,0,0,'Created',1,1,'2009-07-16 09:43:06','2009-07-16 09:43:07'),(2,2,1,'Page Not Found',NULL,'/system/not_found','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Created',1,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,3,1,'Access Denied',NULL,'/system/access_denied','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Created',1,1,'2009-07-16 09:43:06','2009-07-16 09:43:07'),(4,4,1,'Server Error',NULL,'/system/server_error','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Created',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(5,2,2,'Page Not Found',NULL,'/system/not_found','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Html Block \'Page Not Found\' was added to the \'main\' container',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(6,3,2,'Access Denied',NULL,'/system/access_denied','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Html Block \'Access Denied\' was added to the \'main\' container',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(7,4,2,'Server Error',NULL,'/system/server_error','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,'Html Block \'Server Error\' was added to the \'main\' container',1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `lock_version` int(11) default '0',
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `template_file_name` varchar(255) default NULL,
  `description` text,
  `keywords` text,
  `language` varchar(255) default NULL,
  `cacheable` tinyint(1) default '0',
  `hidden` tinyint(1) default '0',
  `published` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `archived` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,0,'Home',NULL,'/','default.html.erb',NULL,NULL,NULL,1,0,1,0,0,1,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,2,0,'Page Not Found',NULL,'/system/not_found','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,1,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,2,0,'Access Denied',NULL,'/system/access_denied','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,1,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(4,2,0,'Server Error',NULL,'/system/server_error','default.html.erb',NULL,NULL,NULL,1,1,1,0,0,1,1,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `full_name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `for_module` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'administrate','Administer CMS','Allows users to administer the CMS, including adding users and groups.',NULL,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,'edit_content','Edit Content','Allows users to Add, Edit and Delete both Pages and Blocks. Can Save (but not Publish) and Assign them as well.',NULL,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,'publish_content','Publish Content','Allows users to Save and Publish, Hide and Archive both Pages and Blocks.',NULL,'2009-07-16 09:43:06','2009-07-16 09:43:06');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet_attributes`
--

DROP TABLE IF EXISTS `portlet_attributes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `portlet_attributes` (
  `id` int(11) NOT NULL auto_increment,
  `portlet_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `value` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `portlet_attributes`
--

LOCK TABLES `portlet_attributes` WRITE;
/*!40000 ALTER TABLE `portlet_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlet_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlets`
--

DROP TABLE IF EXISTS `portlets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `portlets` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `archived` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `portlets`
--

LOCK TABLES `portlets` WRITE;
/*!40000 ALTER TABLE `portlets` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `redirects` (
  `id` int(11) NOT NULL auto_increment,
  `from_path` varchar(255) default NULL,
  `to_path` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20080815014337'),('20081114172307');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_nodes`
--

DROP TABLE IF EXISTS `section_nodes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `section_nodes` (
  `id` int(11) NOT NULL auto_increment,
  `section_id` int(11) default NULL,
  `node_type` varchar(255) default NULL,
  `node_id` int(11) default NULL,
  `position` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `section_nodes`
--

LOCK TABLES `section_nodes` WRITE;
/*!40000 ALTER TABLE `section_nodes` DISABLE KEYS */;
INSERT INTO `section_nodes` VALUES (1,1,'Section',2,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,1,'Page',1,2,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(3,2,'Page',2,1,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(4,2,'Page',3,2,'2009-07-16 09:43:07','2009-07-16 09:43:07'),(5,2,'Page',4,3,'2009-07-16 09:43:07','2009-07-16 09:43:07');
/*!40000 ALTER TABLE `section_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `root` tinyint(1) default '0',
  `hidden` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'My Site','/',1,0,'2009-07-16 09:43:06','2009-07-16 09:43:06'),(2,'system','/system',0,1,'2009-07-16 09:43:06','2009-07-16 09:43:06');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `domain` varchar(255) default NULL,
  `the_default` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'Default','example.com',1,'2009-07-16 09:43:06','2009-07-16 09:43:06');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL auto_increment,
  `tag_id` int(11) default NULL,
  `taggable_id` int(11) default NULL,
  `taggable_type` varchar(255) default NULL,
  `taggable_version` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL auto_increment,
  `assigned_by_id` int(11) default NULL,
  `assigned_to_id` int(11) default NULL,
  `page_id` int(11) default NULL,
  `comment` text,
  `due_date` date default NULL,
  `completed_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_memberships`
--

DROP TABLE IF EXISTS `user_group_memberships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_group_memberships` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_group_memberships`
--

LOCK TABLES `user_group_memberships` WRITE;
/*!40000 ALTER TABLE `user_group_memberships` DISABLE KEYS */;
INSERT INTO `user_group_memberships` VALUES (1,1,2),(2,1,3);
/*!40000 ALTER TABLE `user_group_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) default NULL,
  `first_name` varchar(40) default NULL,
  `last_name` varchar(40) default NULL,
  `email` varchar(40) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `expires_at` datetime default NULL,
  `remember_token` varchar(40) default NULL,
  `remember_token_expires_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cmsadmin','CMS','Administrator','cmsadmin@example.com','e96a0d4e7f0d73e58ceaa08e2ed4f36417faf0e9','c79b82e936e734dd1e74a60cd6db0c9c7f906c60','2009-07-16 09:43:06','2009-07-16 09:43:06',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-07-16  9:57:40
