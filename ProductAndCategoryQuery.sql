CREATE TABLE Product (_Id INT, _Name NVARCHAR(50));
INSERT INTO Product VALUES
   (1, 'Products 1'),
   (2, 'Products 2'),
   (3, 'Products 3'),
   (4, 'Products 4')


CREATE TABLE Category (_Id INT, _Name NVARCHAR(50));
INSERT INTO Category VALUES
   (1, 'Categories 1'),
   (2, 'Categories 2'),
   (3, 'Categories 3')


CREATE TABLE ProductCategory (ProductId INT, CategoryId INT);
INSERT INTO ProductCategory VALUES
   (1, 1),
   (1, 2),
   (1, 3),
   (2, 1),
   (2, 3),
   (3, 2)


SELECT Product.*, Category._Name
 FROM Product
LEFT JOIN ProductCategory
 ON ProductCategory.ProductId = Product._Id
LEFT JOIN Category
 ON Category._Id = ProductCategory.CategoryId