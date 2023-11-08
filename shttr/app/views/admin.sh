use esh

v shared/app.html

if [ $signed_in -eq 1 ]; then
  vf admin/signed_in.html
  echo '<turbo-frame id="_queries-list">'
  echo '<ul class="d-flex flex-column gap-2 list-unstyled">'
  for query_id in $queries_id_list; do
    query=$(queries_${query_id} query)
    export query
    export query_id
    vf admin/query.html
  done
  echo "</ul>"
  echo "</turbo-frame>"
else
  vf admin/index.html
fi

v shared/btm.html
