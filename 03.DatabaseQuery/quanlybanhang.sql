USE quanlybanhang;

INSERT INTO customer
VALUES (1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

INSERT INTO myorder (oId, cId, oDate)
VALUES (1, 1, '2006-3-21'),
(2, 2, '2006-3-23'),
(3, 1, '2006-3-16');

INSERT INTO product (pName, pPrice)
VALUES ('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

INSERT INTO orderDetail
VALUES (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

INSERT INTO orderDetail
VALUES (7,8,9);

---
SELECT o.oId, o.oId, (od.odQTY * p.pPrice) as oTotalPrice
FROM myorder o
JOIN orderdetail od ON o.oId = od.oId
JOIN product p ON od.pId = p.pid;

--- 
SELECT * FROM customer c
JOIN myOrder o ON c.cId = o.cId
JOIN orderDetail od ON o.oId = od.oId
JOIN product p ON p.pId = od.pId;

--- 
SELECT * FROM customer c
LEFT JOIN myOrder o ON o.cId = c.cId
WHERE o.cId IS null;

--- 
SELECT o.oId, o.oDate, sum(od.odQTY * p.pPrice) AS TotalPrice 
FROM myOrder o
JOIN orderDetail od ON od.oId = o.oId
JOIN product p ON p.pId = od.pId
GROUP BY o.oId;
