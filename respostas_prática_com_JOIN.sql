Questão 1: 
SELECT 
    u.id, u.name, 
    c.name AS city 
  FROM users u 
  JOIN cities c ON u."cityId" = c.id;

Questão 2:
SELECT 
    t.id, 
    u1.name AS writer, 
    u2.name AS recipient, 
    t.message 
  FROM testimonials t 
  JOIN users u1 ON t."writerId" = u1.id 
  JOIN users u2 ON t."recipientId" = u2.id;

Questão 3:
SELECT 
    u.id, u.name, 
    c.name AS course, 
    s.name AS school, 
    e."endDate" 
  FROM educations e 
  JOIN users u ON u.id = e."userId" 
  JOIN courses c ON e."courseId" = c.id 
  JOIN schools s ON e."schoolId" = s.id 
  WHERE u.id = 30 AND e.status = 'finished';

Questão 4:
SELECT 
    u.id, u.name, 
    r.name AS role, 
    c.name AS company, 
    e."startDate" 
  FROM experiences e 
  JOIN users u ON e."userId" = u.id 
  JOIN roles r ON e."roleId" = r.id 
  JOIN companies c ON e."companyId" = c.id 
  WHERE u.id = 50 AND e."endDate" IS NOT NULL;
