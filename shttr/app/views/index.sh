. ${SHTTR_LIB}/esh

v shared/app.html

if [ $query_sent ]; then
  v index/query_sent.html
else
  vf index/index.html
fi

v shared/btm.html
