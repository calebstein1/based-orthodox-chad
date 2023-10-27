. ${SHTTR_LIB}/esh

v shared/app.html

if [ $signed_in -eq 1 ]; then
  v admin/signed_in.html
  echo '<ul class="d-flex flex-column gap-2 list-unstyled">'
  for query_id in $queries_id_list; do
    query=$(queries_${query_id} query)
    cat <<EOF
<li>${query} <button class="btn btn-link" form="${query_id}" data-turbo-confirm="Are you sure?">Delete</button></li>
<form method="post" id="${query_id}">
  <input type="hidden" name="_action" value="delete_query">
  <input type="hidden" name="query_id" value="${query_id}">
</form>
EOF
  done
  echo "</ul>"
else
  v admin/index.html
fi

v shared/btm.html
