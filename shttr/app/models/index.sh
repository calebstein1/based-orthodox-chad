if [ "$REQUEST_METHOD" = "POST" ]; then
  validate $query for_presence &&\
  do_redirect to "?query_sent=1" || do_error
fi
