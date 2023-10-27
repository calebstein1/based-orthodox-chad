. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/accounts
. ${SHTTR_LIB}/validator

parse_input

TITLE="Register"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ $validated ]; then
    register "${username}" "${password}" "/cgi-bin/admin.sh"
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
