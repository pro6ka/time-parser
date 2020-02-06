<?php

use App\AppClass;

require_once '../vendor/autoload.php';

/** @var AppClass $app */
$app = new AppClass();
$app->load();
if (isset($_GET['date']) && $_GET['date']) {
    $filter = ['date' => htmlspecialchars(strip_tags(trim($_GET['date'])))];
} else {
    $filter = array();
}
if ($app->isPost()) {
    $parsedData = $app->parser->parse();
}
$rows = $app->getTable($filter);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Time Parser</title>
    <link rel="stylesheet" href="/styles.css">
</head>
<body>
<div class="wrapper">
    <form action="/" method="post">
        <input type="text" name="url">
        <input type="submit">
    </form>
    <?php if ($app->isPost()) { ?>
        <a href="/">back</a>
    <?php } ?>
    <table>
        <?php $urlIds = array(); ?>
        <?php foreach ($rows as $key => $row) { ?>
            <tr>
                <th colspan="3">
                    <?= $row['url'] ? $row['url'] : '' ?>
                    <a href="?date=<?= $row['date'] ?>">
                        <?= date('d. m. Y H:i:s', strtotime($row['date'])) ?>
                    </a>
                </td>
            </tr>
            <?php if ($row['scripts']) { ?>
                <tr>
                    <th colspan="3">Scripts</th>
                </tr>
                <tr>
                    <th>src</th>
                    <th>time</th>
                    <th>status</th>
                </tr>
                <?php foreach ($row['scripts'] as $script) { ?>
                    <tr>
                        <td><?= $script['src'] ?></td>
                        <td><?= $script['time'] ?></td>
                        <td><?= $script['status'] ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
            <?php if ($row['styles']) { ?>
                <tr>
                    <th colspan="3">Styles</th>
                </tr>
                <tr>
                    <th>src</th>
                    <th>time</th>
                    <th>status</th>
                </tr>
                <?php foreach ($row['styles'] as $styles) { ?>
                    <tr>
                        <td><?= $styles['src'] ?></td>
                        <td><?= $styles['time'] ?></td>
                        <td><?= $styles['status'] ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
            <?php if ($row['images']) { ?>
                <tr>
                    <th colspan="3">Images</th>
                </tr>
                <tr>
                    <th>src</th>
                    <th>time</th>
                    <th>status</th>
                </tr>
                <?php foreach ($row['images'] as $image) { ?>
                    <tr>
                        <td><?= $image['src'] ?></td>
                        <td><?= $image['time'] ?></td>
                        <td><?= $image['status'] ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
            <?php if ($row['links']) { ?>
                <tr>
                    <th colspan="3">Links</th>
                </tr>
                <tr>
                    <th>src</th>
                    <th>time</th>
                    <th>status</th>
                </tr>
                <?php foreach ($row['links'] as $link) { ?>
                    <tr>
                        <td><?= $link['src'] ?></td>
                        <td><?= $link['time'] ?></td>
                        <td><?= $link['status'] ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
        <?php } ?>
    </table>
</div>
</body>
</html>
