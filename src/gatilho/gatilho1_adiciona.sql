Create Trigger T1
After Insert On "Like"
WHEN (select count(*) from Like where New.user1 = user2 AND New.user2 = user1) > 0

BEGIN
    INSERT into "Match"(like1, like2) values(New.idLike, (select idLike from "Like" where New.user1 = user2 AND New.user2 = user1));
End;