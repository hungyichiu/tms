# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.3
* Rails version 5.2.3
* PostgreSQl
* Table
    - User
        + :name string
        + :email string
        + :password string
    - Task
        + :title string
        + :content text
        + :start_time datetime
        + :end_time datetime
        + :priority integer
        + :status integer
        + :user_id integer
    - Tag
        + :task_id integer
        + :tag string


