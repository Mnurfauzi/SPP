<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
			<small>List</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('manage') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<?php echo form_open(current_url(), array('method' => 'get')) ?>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label>Tahun Pelajaran</label>
									<select class="form-control" name="p">
										<!-- <option value="">-- Tahun Ajaran --</option> -->
										<?php foreach ($period as $row) : ?>
											<option <?php echo (isset($q['p']) and $q['p'] == $row['period_id']) ? 'selected' : '' ?> value="<?php echo $row['period_id'] ?>"><?php echo $row['period_start'] . '/' . $row['period_end'] ?></option>
										<?php endforeach; ?>
									</select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Kelas</label>
									<select class="form-control" name="c">
										<!-- <option value="">-- Tahun Ajaran --</option> -->
										<?php foreach ($class as $row) : ?>
											<option <?php echo (isset($q['c']) and $q['c'] == $row['class_id']) ? 'selected' : '' ?> value="<?php echo $row['class_id'] ?>"><?php echo $row['class_name'] ?></option>
										<?php endforeach; ?>
									</select>
								</div>
							</div>
							<?php if (majors() == 'senior') { ?>
								<div class="col-md-3">
									<div class="form-group">
										<label>Nama Abjad</label>
										<select class="form-control" name="k">
											<?php foreach ($majors as $row) : ?>
												<option <?php echo (isset($q['k']) and $q['k'] == $row['majors_id']) ? 'selected' : '' ?> value="<?php echo $row['majors_id'] ?>"><?php echo $row['majors_name'] ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
							<?php } ?>
							<div class="col-md-3">
								<div style="margin-top:25px;">
									<button type="submit" class="btn btn-primary"><i class="fa fa-filter"></i> Filter Data</button>
									<?php if ($q and !empty($py)) { ?>
										<a class="btn btn-danger" onclick="printDiv('printableArea')"><i class="fa fa-file-pdf-o"></i> Download</a>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php if ($q and !empty($py)) { ?>
					<div class="box box-success" id="printableArea">
						<div class="box-body table-responsive">
							<table class="table table-responsive table-hover table-bordered" style="white-space: nowrap; font-size:14px;">
									<tr>
										<th><center><?php echo ""; ?></center></th>
										<th><center>Nilai</center></th>
										<th><center>Bayar</center></th>
										<th><center>Sisa Bayar</center></th>
									</tr>
									<?php $TotalBulan = 0; $TotalBayar = 0; $TotalSisa = 0; $ibulan = 0; foreach ($bulan as $key) : ?>
										<?php if($ibulan == 0) { ?>
											<tr>
												<th colspan="4"><center><?php echo $key['pos_name'] . ' - T.A ' . $key['period_start'] . '/' . $key['period_end']; ?></center></th>
											</tr>
										<?php } ?>
										<tr>
											<td><?php echo $key['month_name'] ?></td>
											<td style="color:red"><?php echo number_format($key['bulan_bill'], 0, ',', '.') ?></td>
											<td style="color:#00E640"><?php echo number_format($key['Bulan_Bayar'], 0, ',', '.') ?></td>
											<?php 
												$Nilai = $key['bulan_bill']; 
												$Bayar = $key['Bulan_Bayar']; 
											?>
											<td><b><?php echo number_format($Nilai - $Bayar, 0, ',', '.') ?></b></td>
										</tr>
									<?php $TotalBulan += $Nilai; $TotalBayar += $Bayar; $TotalSisa += $Nilai - $Bayar; $ibulan++; endforeach ?>
									<?php $TotalFree = 0; $ifree = 0; foreach ($free as $key) : ?>
										<?php if($ifree == 0) { ?>
											<tr>
												<th colspan="4"><center><?php echo $key['pos_name'] . ' - T.A ' . $key['period_start'] . '/' . $key['period_end']; ?></center></th>
											</tr>
										<?php } ?>
										<tr>
											<td>(Bebas)</td>
											<td style="color:red"><?php echo number_format($key['bebas_bill'], 0, ',', '.') ?></td>
											<td style="color:#00E640"><?php echo number_format($key['bebas_total_pay'], 0, ',', '.') ?></td>
											<td><b><?php echo number_format($key['bebas_bill'] - $key['bebas_total_pay'], 0, ',', '.') ?></b></td>
										</tr>
									<?php $TotalFree += $key['bebas_bill']; $TotalBayar += $key['bebas_total_pay']; $TotalSisa += $key['bebas_bill'] - $key['bebas_total_pay']; $ifree++; endforeach ?>
									<tr style="font-size:20px;">
										<th><center>Total</center></th>
										<th><?php echo number_format(($TotalFree + $TotalBulan), 0, ',', '.') ?></th>
										<th><?php echo number_format($TotalBayar, 0, ',', '.') ?></th>
										<th><?php echo number_format($TotalSisa, 0, ',', '.') ?></th>
									</tr>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
				<?php } else if (empty($py)) { echo "<center><h3>Data Tidak Ada</h3></center>"; } ?>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>