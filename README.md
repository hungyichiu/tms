# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.3
* Rails version 5.2.3
* PostgreSQl
* Table
    - User
        + name:string
        + email:string
        + password:string
    - Task
        + title:string
        + content:text
        + start_time:datetime
        + end_time:datetime
        + priority:integer
        + status:integer
        + user_id:integer
    - Tag
        + tag:string
    - TaskTag
        + task_id:integer
        + tag_id:integer

HEROKU 部署

1. 在專案目錄底下執行
```
heroku create
```

2. 將專案推上heroku
```
git push heroku master
```

3. 因為使用Postgrsql 所以邀依序執行下列指令
```
heroku run rails db:create
heroku run rails db:migrate
```

