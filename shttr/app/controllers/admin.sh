. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/accounts
. ${SHTTR_LIB}/validator

parse_input
check_sign_in

TITLE="Admin Page"
export TITLE

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "sign_in" ]; then
    sign_in "${username}" "${password}"
  elif [ "$_action" = "sign_out" ]; then
    sign_out
  elif [ "$_action" = "delete_query" ]; then
    delete_id ${query_id} from queries &&\
    do_redirect
  fi
fi

. ${SHTTR_APP}/models/${CONTROLLER}

. ${SHTTR_APP}/views/${CONTROLLER}
