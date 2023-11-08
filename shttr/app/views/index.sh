. ${SHTTR_LIB}/esh

v shared/app.html

if [ $query_sent ]; then
  v query_sent.html
else
  vf index.html
fi

v shared/btm.html
