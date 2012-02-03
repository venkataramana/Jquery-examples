# difference b/w delete! (destructive method) and delete>>>>>>


  del = "this is a delete"
  del.delete("e")               # it excludes "e" from original string
  del.delete!("e")	             # it also excludes "e" from original string
  puts del