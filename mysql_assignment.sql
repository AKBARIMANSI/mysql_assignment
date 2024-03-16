 SELECT UNIQUE job FROM employee;
 SELECT * FROM employee ORDER BY deptno ASC,job DESC; 
 SELECT DISTINCT job FROM employee ORDER BY job DESC;  
 SELECT * FROM employee WHERE YEAR(hiredate)<1981    
 SELECT eno,ename,sal,sal/30,12*sal anualsal FROM employee ORDER BY anualsal ASC;
 SELECT eno,ename,sal,'EXP' FROM employee WHERE mrg = 7369;
 SELECT * FROM employee WHERE comm > sal;
 SELECT * FROM employee WHERE job = 'clerk' OR job = 'analyst' ORDER BY job DESC;
 SELECT * FROM employee WHERE 12*sal BETWEEN 22000 AND 45000;
 SELECT ename FROM employee WHERE ename LIKE 's%' AND LENGTH (ename) = 5;
 SELECT * FROM employee WHERE eno NOT LIKE '78%';
 SELECT * FROM employee WHERE job = 'clerk' AND deptno = 20;
 SELECT * FROM employee w,employee m WHERE w.mrg = m.eno AND w.hiredate < m.hiredate;
 SELECT * FROM employee WHERE deptno=20 AND job IN (SELECT job FROM employee WHERE deptno=10);
 SELECT * FROM employee WHERE sal IN (SELECT sal FROM employee WHERE(ename = 'smith' OR ename = 'ford' )) ORDER BY sal DESC;
 SELECT * FROM employee job IN (SELECT job FROM employee WHERE ename = 'smith' OR ename = 'allen');
 SELECT * FROM employee e WHERE e.deptno = 10 AND e.job NOT IN (SELECT job FROM employee WHERE deptno = 20);
 SELECT * FROM employee WHERE sal IN (SELECT MAX(sal) FROM employee); 
 SELECT SUM(sal) FROM employee WHERE job = 'manager';
 SELECT * FROM employee WHERE ename LIKE 'a%';
 SELECT * FROM employee WHERE sal IN (SELECT MIN(sal) FROM employee GROUP BY job) ORDER BY sal ASC;
 SELECT * FROM employee WHERE sal > (SELECT sal FROM employee WHERE ename = 'blake');
 SELECT e.ename,e.job,dept.dname,dept.`loc` FROM employee e,dept WHERE e.deptno=dept.dno; 
 

  