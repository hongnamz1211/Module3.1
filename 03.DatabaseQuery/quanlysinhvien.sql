--- Thực hành 1
INSERT INTO class
VALUES (1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'B3', current_date, 0);

INSERT INTO student
VALUES (1, 'Hung', 'Ha Noi', '0912113113', 1, 1),
(2, 'Hoa', 'Hai Phong', '0912113113', 1, 1),
(3, 'Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subject
VALUES (1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);

INSERT INTO mark
VALUES (1, 1, 1, 8, 1),
(2, 1, 2, 10, 2),
(3, 2, 1, 12, 1);


--- Thực hành 2
SELECT * FROM student;

---
SELECT * FROM student
WHERE student.status = '1';

--- 
SELECT * FROM subject
WHERE subject.credit < 10;

--- 
SELECT student.studentid, student.studentName, student.address, student.phone 
FROM student, class
WHERE (student.classid = class.classid
AND class.className = 'A1');

---
SELECT student.studentid, student.studentName, student.address, student.phone, mark.mark
FROM student, mark, subject
WHERE (student.studentid = mark.studentid
AND mark.subId = subject.subId
AND subject.subName = 'CF');

--- Bài tập 1
SELECT * FROM student
WHERE student.studentName LIKE 'h%';

--- 
SELECT * FROM class
WHERE class.startDate >= '2008-12-01';

---
SELECT * FROM subject
WHERE subject.credit BETWEEN 3 AND 5;

---
UPDATE student
SET student.classId = 2
WHERE student.studentName = 'Hung';

---
SELECT student.studentName, subject.subName, mark.mark
FROM student, mark, subject
WHERE (student.studentId = mark.studentId
AND mark.subId = subject.subId)
ORDER BY mark.mark DESC,
student.studentName ASC;
