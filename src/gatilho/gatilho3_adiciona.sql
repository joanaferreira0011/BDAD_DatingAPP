--Trigger 3: Não aceitar o mesmo like para um user vindo de outro user.

CREATE Trigger T3
BEFORE INSERT ON "Like"
BEGIN
  SELECT
  CASE
  WHEN (SELECT COUNT(*) FROM "Like" WHERE user1=NEW.user1 AND user2=NEW.user2) > 0 THEN
    RAISE(ABORT, 'This like already exists')
 END;
 END;
