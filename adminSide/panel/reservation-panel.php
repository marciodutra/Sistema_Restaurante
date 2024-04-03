<?php
session_start(); // Ensure session is started
?>
<?php include '../inc/dashHeader.php'; ?>
    <style>
        .wrapper{ width: 1300px; padding-left: 200px; padding-top: 20px  }
    </style>
<div class="wrapper">
    <div class="container-fluid pt-5 pl-600">
        <div class="row">
            <div class="m-50">
                <div class="mt-5 mb-3">
                    <h2 class="pull-left">Detalhes da reserva</h2>
                    <a href="../reservationsCrud/createReservation.php" class="btn btn-outline-dark"><i class="fa fa-plus"></i> Adicionar reserva</a>
                </div>
                <div class="mb-3">
                    <form method="POST" action="#">
                        <div class="row">
                            <div class="col-md-6">
                                <input required type="text" id="search" name="search" class="form-control" placeholder="Insira o ID da reserva, nome do cliente, data da reserva (09-2024)">
                            </div>
                            <div class="col-md-3">
                                <button type="submit" class="btn btn-dark">Pesquisar</button>
                            </div>
                            <div class="col" style="text-align: right;" >
                                <a href="reservation-panel.php" class="btn btn-light">Mostre tudo</a>
                            </div>
                        </div>
                    </form>
                </div>
                
                <?php
                // Include config file
                require_once "../config.php";
                $sql = "SELECT * FROM reservations ORDER BY reservation_id;";

                if (isset($_POST['search'])) {
                    if (!empty($_POST['search'])) {
                        $search = $_POST['search'];

                        $sql = "SELECT * FROM reservations WHERE reservation_date LIKE '%$search%' OR reservation_id LIKE '%$search%' OR customer_name LIKE '%$search%'";
                    } else {
                        // Default query to fetch all reservations
                        $sql = "SELECT * FROM reservations ORDER BY reservation_date DESC, reservation_time DESC;";
                    }
                } else{
                    $sql = "SELECT * FROM reservations ORDER BY reservation_date DESC, reservation_time DESC;";

                }
                
                if ($result = mysqli_query($link, $sql)) {
                    if (mysqli_num_rows($result) > 0) {
                        echo '<table class="table table-bordered table-striped">';
                        echo "<thead>";
                        echo "<tr>";
                        echo "<th>Reserva ID</th>";
                        echo "<th>Nome do cliente</th>";
                        echo "<th>Tabela ID</th>";
                        echo "<th>Horário da reserva</th>";
                        echo "<th>Data da Reserva</th>";
                        echo "<th>Quant. pessoas</th>";
                        echo "<th>Pedido especial</th>";
                        echo "<th>Delete</th>";
                        echo "<th>Recibo</th>";
                        echo "</tr>";
                        echo "</thead>";
                        echo "<tbody>";
                        while ($row = mysqli_fetch_array($result)) {
                            echo "<tr>";
                            echo "<td>" . $row['reservation_id'] . "</td>";
                            echo "<td>" . $row['customer_name'] . "</td>";
                            echo "<td>" . $row['table_id'] . "</td>";
                            echo "<td>" . $row['reservation_time'] . "</td>";
                            echo "<td>" . $row['reservation_date'] . "</td>";
                            echo "<td>" . $row['head_count'] . "</td>";
                            echo "<td>" . $row['special_request'] . "</td>";
                            echo "<td>";
                            echo '<a href="../reservationsCrud/deleteReservationVerify.php?id='. $row['reservation_id'] .'" title="Delete Record" data-toggle="tooltip" '
                                   . 'onclick="return confirm(\'Permissão de administrador necessária!\n\nTem certeza de que deseja excluir esta reserva?\n\nIsto irá alterar outros módulos relacionados a esta Reserva!\n\')"><span class="fa fa-trash text-black"></span></a>';
                            echo "</td>";
                            echo "<td>";
                            echo '<a href="../reservationsCrud/reservationReceipt.php?reservation_id='. $row['reservation_id'] .'" title="Receipt" data-toggle="tooltip"><span class="fa fa-receipt text-black"></span></a>';
                            echo "</td>";
                            echo "</tr>";
                        }
                        echo "</tbody>";
                        echo "</table>";
                    } else {
                        echo '<div class="alert alert-danger"><em>No records were found.</em></div>';
                    }
                } else {
                    echo "Oops! Something went wrong. Please try again later.";
                }

                // Close connection
                mysqli_close($link);
                ?>
            </div>
        </div>
    </div>
</div>

<?php include '../inc/dashFooter.php'; ?>
