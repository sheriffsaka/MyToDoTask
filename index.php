<?php 
    // initialize errors variable
	$errors = "";

	// connect to database
	$db = mysqli_connect("localhost", "root", "", "mytodolist1");

	// insert a quote if submit button is clicked
	if (isset($_POST['submit'])) {
		if (empty($_POST['mytask'])) {
			$errors = "You must fill in the task field";
		}else{
            
			$mytask = $_POST['mytask'];
            $taskdate = date("Y-m-d");
			$sql = "INSERT INTO mytasks (task,taskdate) VALUES ('$mytask','$taskdate')";
			mysqli_query($db, $sql);
			header('location: index.php');
            //echo "Your task has been posted successfully...";
		}
	}

    // delete task
    if (isset($_GET['del_task'])) {
        $id = $_GET['del_task'];

        mysqli_query($db, "DELETE FROM mytasks WHERE taskid=".$id);
        header('location: index.php');
    }

?>
    
<!DOCTYPE html>
<html>
<head>
	<title>ToDo List Application PHP and MySQL</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="heading">
		<h2 style="font-style: 'Hervetica';">ToDo List App 1.0</h2>
	</div>
	<form method="post" action="index.php" class="input_form">
        <?php if (isset($errors)) { ?>
            <p><?php echo $errors; ?></p>
        <?php } ?>
		<input type="text" name="mytask" class="task_input">
		<button type="submit" name="submit" id="add_btn" class="add_btn">Add Task</button>
	</form>

    <table>
	<thead>
		<tr>
			<th>SN</th>
			<th>My Tasks</th>
            <th>Task Date</th>
			<th style="width: 60px;">Action</th>
		</tr>
	</thead>

	<tbody>
		<?php 
		// select all tasks if page is visited or refreshed
		$tasks = mysqli_query($db, "SELECT * FROM mytasks");

		$i = 1; while ($row = mysqli_fetch_array($tasks)) { ?>
			<tr>
				<td> <?php echo $i; ?> </td>
				<td class="task"> <?php echo $row['task']; ?> </td>
                <td class="task"> <?php echo $row['taskdate']; ?> </td>
				<td class="delete"> 
					<a href="index.php?del_task=<?php echo $row['taskid'] ?>">Delete</a> 
				</td>
			</tr>
		<?php $i++; } ?>	
	</tbody>
</table>

    
</body>
</html>