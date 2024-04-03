<?php
session_start(); // Ensure session is started
?>
<?php
include '../inc/dashHeader.php';
require_once '../config.php';
$query = "SELECT * FROM Kitchen WHERE time_ended IS NULL";
$result = mysqli_query($link, $query);
?>

    <link href="../css/pos.css" rel="stylesheet" />
    <meta http-equiv="refresh" content="5">

<div class="wrapper" style="width: 1300px; padding-left: 200px; padding-top: 20px">
    <div class="container-fluid pt-5 pl-600 mt-5">
          <div class="">
            <div class="col" style="text-align: left; display: flex; justify-content: space-between;">
                <h2 class="">Pedidos de cozinha</h2>
                <a href="../posBackend/kitchenBackend/undo.php?UndoUnshow=true" class="btn btn-warning mb-2">Desfazer</a>
            </div>
          </div>

        <table class="table table-bordered ">
            <thead>
                
                <tr>
                    <th>ID da cozinha</th>
                    <th>ID da tabela</th>
                    <th>Nome do item</th>
                    <th>Quandtidade</th>
                    <th>Hora de envio</th>
                    <th>Tempo encerrado</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result && mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $kitchen_id = $row['kitchen_id'];
                        $table_id = $row['table_id'];
                        $item_id = $row['item_id'];
                        $quantity = $row['quantity'];
                        $time_submitted = $row['time_submitted'];
                        $time_ended = $row['time_ended'];

                        // Get item name from Menu table
                        $itemQuery = "SELECT item_name FROM Menu WHERE item_id = '$item_id'";
                        $itemResult = mysqli_query($link, $itemQuery);
                        $itemRow = mysqli_fetch_assoc($itemResult);
                        $item_name = $itemRow['item_name']??"Deleted";

                        echo '<tr>';
                        echo '<td>' . $kitchen_id . '</td>';
                        echo '<td>' . $table_id . '</td>';
                        echo '<td>' . $item_name . '</td>';
                        echo '<td>' . $quantity . '</td>';
                        echo '<td>' . $time_submitted . '</td>';
                        echo '<td>' . ($time_ended ?: 'Not Ended') . '</td>';
                        echo '<td>';
                        if (!$time_ended) {
                            echo '<a href="../posBackend/kitchenBackend/kitchen-panel-back.php?action=set_time_ended&kitchen_id=' . $kitchen_id . '" class="btn btn-danger">Feito</a>';
                        }
                        
                        echo '</td>';
                        echo '</tr>';
                    }
                } else {
                    echo '<tr><td colspan="7">Não há registros na tabela da cozinha.</td></tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
</div>


