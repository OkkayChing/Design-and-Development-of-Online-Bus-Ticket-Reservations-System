<?php
 
$rowID = 0;
$count = "";
    	for ($index=1; $index <=10; $index++) {
		$list ="";
		$TSQL = mysql_query("SELECT * FROM `booking` WHERE `row`=$index");
		while($Trow = mysql_fetch_array($TSQL)){
		$color = '#009999';
		$seatID = $Trow['seat_id'];
		$rowNO = $Trow['row'];
		$seat =  $Trow['seat'];
		$booked =  $Trow['booked'];
		$phone_number= $Trow['phone_number'];
		$gender= $Trow['gender'];
		$from= $Trow['from'];
		$to= $Trow['to'];
		$price= $Trow['price'];
		if($booked ==1){
			$color = '#bf0c14';
		}
        $list .= "
		<td style='background-color: $color'>
		$seat
	    </td>";
		}
	$count .= 
	"<tr class='row$index'>
	$list
	</tr>";
}

?>
 <div class="seatplan">
        <table class="ex1" border="10" width=250 height=80>
		<tr>
           <td class="refresh">Refresh</td> <td class="green">Available Color</td>	<td class="red">Booked Color</td>		
		</tr>
		<tr ">
         <td width="58">Door</td><td></td><td class="driver">Driver</td>		
		</tr>
		</table>
     	<table border="2" width=250 height=500>
		<?php
			echo $count;
		?>
		</table>
</div>