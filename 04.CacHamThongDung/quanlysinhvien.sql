use `quanlysinhvien`;
--- thuc hanh

select address, count(*) AS 'Số lượng sinh viên'
FROM student
GROUP BY address;

SELECT s.studentId, s.studentName, AVG(mark)
FROM student s
JOIN mark m ON s.studentId = m.studentId
GROUP BY s.studentId, s.studentName;

SELECT s.studentId, s.studentName, AVG(mark)
FROM student s
JOIN mark m ON s.studentId = m.studentId
GROUP BY s.studentId, s.studentName
HAVING AVG(mark) > 15;

SELECT s.studentId, s.studentName, AVG(mark)
FROM student s
JOIN mark m ON s.studentId = m.studentId
GROUP BY s.studentId, s.studentName
HAVING AVG(mark) >= ALL (SELECT AVG(mark) FROM mark GROUP BY mark.studentId);

--- bai tap

SELECT * FROM subject
WHERE credit = (SELECT max(credit) FROM subject);

SELECT * FROM mark
WHERE mark = (SELECT max(mark) FROM mark);

SELECT s.studentId, s.studentName, s.address, s.phone, s.classId, AVG(mark)
FROM student s
JOIN mark ON s.studentId = mark.studentId
GROUP BY s.studentId
ORDER BY AVG(mark);