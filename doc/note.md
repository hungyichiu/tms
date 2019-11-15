### 步驟14: 加入結束時間

- 任務可設定結束時間
- 列表頁可以結束時間排序
 
Case Study:  Sortable Table Columns
```
def sortable(column, title = nil)
  title ||= column.titleize
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end
```

