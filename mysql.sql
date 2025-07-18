# Extensions Table
  
CREATE TABLE `extensions` (  
`id` int(11) NOT NULL auto_increment,  
`context` varchar(20) NOT NULL default '',  
`exten` varchar(20) NOT NULL default '',  
`priority` tinyint(4) NOT NULL default '0',  
`app` varchar(20) NOT NULL default '',  
`appdata` varchar(128) NOT NULL default '', 
`accountcode` varchar(20) default NULL, 
`notes` varchar(255) default NULL,  
PRIMARY KEY (`context`,`exten`,`priority`),  
KEY `id` (`id`)  
) TYPE=MyISAM; 

# Voicemail Table
  
CREATE TABLE `voicemail` (  
`uniqueid` int(11) NOT NULL auto_increment,  
`customer_id` varchar(11) NOT NULL default '0',  
`context` varchar(50) NOT NULL default '',  
`mailbox` varchar(11) NOT NULL default '0',  
`password` varchar(5) NOT NULL default '0',  
`fullname` varchar(150) NOT NULL default '',  
`email` varchar(50) NOT NULL default '',  
`pager` varchar(50) NOT NULL default '',  
`tz` varchar(10) NOT NULL default 'central',  
`attach` varchar(4) NOT NULL default 'yes',  
`saycid` varchar(4) NOT NULL default 'yes',  
`dialout` varchar(10) NOT NULL default '',  
`callback` varchar(10) NOT NULL default '',  
`review` varchar(4) NOT NULL default 'no',  
`operator` varchar(4) NOT NULL default 'no',  
`envelope` varchar(4) NOT NULL default 'no',  
`sayduration` varchar(4) NOT NULL default 'no',  
`saydurationm` tinyint(4) NOT NULL default '1',  
`sendvoicemail` varchar(4) NOT NULL default 'no',  
`delete` varchar(4) NOT NULL default 'no',  
`nextaftercmd` varchar(4) NOT NULL default 'yes',  
`forcename` varchar(4) NOT NULL default 'no',  
`forcegreetings` varchar(4) NOT NULL default 'no',  
`hidefromdir` varchar(4) NOT NULL default 'yes', 
PRIMARY KEY (`uniqueid`),  
KEY `mailbox_context` (`mailbox`,`context`)  
) TYPE=MyISAM; 
# NOTE: `uniqueid` field name must remain for password updates to work properly
  
# SIP Table 

  CREATE TABLE `sip` (  
`id` int(11) NOT NULL auto_increment,  
`name` varchar(80) NOT NULL default '',  
`accountcode` varchar(20) default NULL,  
`amaflags` varchar(13) default NULL,  
`callgroup` varchar(10) default NULL,  
`callerid` varchar(80) default NULL,  
`canreinvite` char(3) default 'yes',  
`context` varchar(80) default NULL,  
`defaultip` varchar(15) default NULL,  
`dtmfmode` varchar(7) default NULL,  
`fromuser` varchar(80) default NULL,  
`fromdomain` varchar(80) default NULL,  
`host` varchar(31) NOT NULL default '',  
`insecure` varchar(4) default NULL,  
`language` char(2) default NULL,  
`mailbox` varchar(50) default NULL,  
`md5secret` varchar(80) default NULL,  
`nat` varchar(5) NOT NULL default 'no',  
`deny` varchar(95) default NULL,  
`permit` varchar(95) default NULL,  
`mask` varchar(95) default NULL,
SIP Table (cont) 
`pickupgroup` varchar(10) default NULL,  
`port` varchar(5) NOT NULL default '',  
`qualify` char(3) default NULL,  
`restrictcid` char(1) default NULL,  
`rtptimeout` char(3) default NULL,  
`rtpholdtimeout` char(3) default NULL,  
`secret` varchar(80) default NULL,  
`type` varchar(6) NOT NULL default 'friend',  
`username` varchar(80) NOT NULL default '',  
`disallow` varchar(100) default 'all',  
`allow` varchar(100) default 'gsm;ulaw;alaw',  
`musiconhold` varchar(100) default NULL,  
`regseconds` int(11) NOT NULL default '0',  
`ipaddr` varchar(15) NOT NULL default '',  
`regexten` varchar(80) NOT NULL default '',  
`cancallforward` char(3) default 'yes',  
`setvar` varchar(100) NOT NULL default '',  
`fullcontact` varchar(80) default NULL, 
PRIMARY KEY (`id`),  
UNIQUE KEY `name` (`name`),  
KEY `name_2` (`name`)  
) TYPE=MyISAM; 

# Pins Table 
  
CREATE TABLE `pins` (
`id` int(11) NOT NULL auto_increment, `company` varchar(20) NOT NULL default '', `pin` varchar(10) NOT NULL default '',
`active` varchar(5) NOT NULL default 'no', `accountcode` varchar(20) NOT NULL default '', `notes` varchar(255) default NULL,
PRIMARY KEY (`company`,`pin`),
KEY `id` (`id`)
) TYPE=MyISAM;

