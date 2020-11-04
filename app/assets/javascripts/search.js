document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")
  var list_id = location.toString().substr(location.toString().lastIndexOf('/')+1)

  var options = {
    getValue: "name",
    url: function(phrase) {
      return "/search.json?q=" + phrase + "&list_id=" + list_id
    },
    categories: [
      {
        listLocation: "users",
        header: "<strong>Users</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var user_id = $input.getSelectedItemData().user_id

        $input.val("")

        /* keeping the shape of the data here for future reference.
        {
            collab_request: {
              user_id: user_id,
              list_id: list_id,
              from_owner: 1
            }
          },
        */

        request_data = `collab_request[user_id]=${user_id}&collab_request[list_id]=${list_id}&collab_request[from_owner]=1`

        Rails.ajax({
          url: "/collab_requests",
          type: "POST",
          data: request_data
        })
      }
    }
  }

  $input.easyAutocomplete(options)
});
