-- Api products
SELECT * FROM hermesProduct.product;
DELETE FROM hermesProduct.product;

SELECT * FROM hermesProduct.productWebsite;
SELECT * FROM hermesProduct.brand;
SELECT * FROM hermesProduct.description;
SELECT * FROM hermesProduct.image;
SELECT * FROM hermesProduct.line;
SELECT * FROM hermesProduct.productWebsite;

-- Api websites

SELECT * FROM hermesWebsites.Details;
SELECT * FROM hermesWebsites.Stores;
SELECT * FROM hermesWebsites.Websites;


-- Api User
SELECT * FROM hermesUser.Users WHERE `User` = 'danilo';

SELECT * FROM hermesUser.Users;
SELECT * FROM hermesUser.accessControls; WHERE id = 9 AND module_id = 1;
SELECT * FROM hermesUser.modules; WHERE module = 'products';
SELECT * FROM hermesUser.cruds;
SELECT * FROM hermesUser.groups;

ALTER TABLE hermesUser.Users
ADD FOREIGN KEY (`Role`) REFERENCES hermesUser.groups(group_id);

2017-10-27 16:43:05
2018-06-19 17:58:24


-- Magento

SELECT COUNT(*) FROM whitelabel.catalog_product_entity WHERE exported IN (NULL, 1);

UPDATE whitelabel.catalog_product_entity SET exported=NULL;
