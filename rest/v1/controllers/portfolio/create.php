<?php
$conn = null;
$conn = checkDbConnection();
$portfolio = new Portfolio($conn);
if (array_key_exists("portfolioid", $_GET)) {
    checkEndpoint();
}
checkPayload($data);
$portfolio->portfolio_title = checkIndex($data, "portfolio_title");
$portfolio->portfolio_photo = checkIndex($data, "portfolio_photo");
$portfolio->portfolio_category = checkIndex($data, "portfolio_category");
$portfolio->portfolio_is_active = 1;
$portfolio->portfolio_publish_date = checkIndex($data, "portfolio_publish_date");
$portfolio->portfolio_description = checkIndex($data, "portfolio_description");
$portfolio->portfolio_created = date("Y-m-d H:i:s");
$portfolio->portfolio_datetime = date("Y-m-d H:i:s");

// isNameExist($portfolio, $portfolio->portfolio_title);

$query = checkCreate($portfolio);
returnSuccess($portfolio, "portfolio", $query);