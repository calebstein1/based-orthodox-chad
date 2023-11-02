use io, validator, shttrdb, form

parse_input

TITLE="Based Orthodox Chad"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ $validated ]; then
    query_id=$(create_table_entry in queries)
    write_data $query_id query "${query}" to queries
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
