if [ "$REQUEST_METHOD" = "POST" ]; then
  validate $query for_presence &&\
  do_redirect to "?q=${query}" || do_error
fi
