/**
 * Created by MeiZhen on 2019/4/27.
 */

function logout() {
    jq.ajax({
        url: "/logout",
        type: "POST",
        success: function (result) {
            if (result.code == 0) {
                window.location.reload();
            }
        }
    })
}
