. ${SHTTR_LIB}/esh

v shared/app.html

if [ $q ]; then
  v query_sent.html
else
  vf index.html
fi

v shared/btm.html
