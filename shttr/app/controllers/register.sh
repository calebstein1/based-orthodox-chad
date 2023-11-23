use io, shttrdb, accounts, validator, form

parse_input

TITLE="Register"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ $validated -eq 1 ]; then
    register "${username}" "${password}" "/cgi-bin/admin.sh"
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
