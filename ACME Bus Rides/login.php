<?php 
	require_once('util/main.php');
	include('view/header.php'); 
?>
<section>
	<h2>Log In</h2>
	<form action='model/validation.php' method="post">
		<table>
			<tr>
				<td align="right">Username</td> 
				<td align="left"><input type="text" name="username"></td>
			</tr>
			<tr>
				<td align="right">Password</td>
				<td align="left"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td style="text-align:center;"><button type="submit" name="login">Log In</button</td>
				<td style="text-align:center;"><button type="submit" name="signup" formaction='view/sign_up.php'>Create an Account</button></td>
			</tr>
		</table>
		<?php 
			if(isset($_GET['exists'])) {
				if($_GET['exists'] == 'false') {
					echo 'This user does not exist.';
				}
			} 
		?>
	</form>
</section>
<?php include('view/footer.php'); ?>