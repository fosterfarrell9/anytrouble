# README
Minimal working example for possible Rails bug for .any? in conjunction with polymorphic associations 

* Rails version: 5.2.1

* Ruby version: 2.5.1

* Database adapter: sqlite3

* Instructions
```
bundle
rails db:migrate
rails db:seed
```
* Reproduction of the error:
Open a rails console.
```
2.5.1 :001 > Medium.any? { |m| m.teachable.course == Course.first }
  Medium Load (0.3ms)  SELECT "media".* FROM "media"
  Lecture Load (0.1ms)  SELECT  "lectures".* FROM "lectures" WHERE "lectures"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Course Load (0.1ms)  SELECT  "courses".* FROM "courses" WHERE "courses"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Course Load (0.1ms)  SELECT  "courses".* FROM "courses" ORDER BY "courses"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => nil
2.5.1 :002 > Medium.any? { |m| m.teachable.course == Course.first }
  Medium Load (0.3ms)  SELECT "media".* FROM "media"
  Lecture Load (0.3ms)  SELECT  "lectures".* FROM "lectures" WHERE "lectures"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Course Load (0.3ms)  SELECT  "courses".* FROM "courses" WHERE "courses"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Course Load (0.2ms)  SELECT  "courses".* FROM "courses" ORDER BY "courses"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => true
```
