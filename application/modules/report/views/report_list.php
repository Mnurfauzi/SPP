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
						<?php echo form_open(current_url(), array('method' => 'get')) ?> <br>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										<input class="form-control" type="text" name="ds" readonly="readonly" <?php echo (isset($q['ds'])) ? 'value="' . $q['ds'] . '"' : '' ?> placeholder="Tanggal Awal">
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										<input class="form-control" type="text" name="de" readonly="readonly" <?php echo (isset($q['de'])) ? 'value="' . $q['de'] . '"' : '' ?> placeholder="Tanggal Akhir">

									</div>
								</div>
							</div>
							<div class="col-md-4">
								<button type="submit" class="btn btn-primary"><i class="fa fa-filter"></i> Filter Data</button>
								<?php if ($q) { ?>
									<a class="btn btn-danger btn-md" onclick="printDiv('printableArea')"><i class="fa fa-file-pdf-o"></i> Download</a>
								<?php } ?>
							</div>
						</div>
						<div id="printableArea">
							<table class="table table-responsive table-bordered" style="white-space: nowrap;">
								<tr class="success">
									<th>Jenis Pembayaran</th>
									<th>Tahun Pelajaran</th>
									<th>Periode</th>
									<th>Tanggal</th>
									<th>Nama Siswa</th>
									<th>Tagihan</th>
								</tr>
								<?php
								$total = 0;
								foreach ($log as $key) :
								?>
									<tr>
										<td><?php echo ($key['bulan_bulan_id'] != NULL) ? $key['posmonth_name'] : $key['posbebas_name'] ?></td>
										<td><?php echo ($key['bulan_bulan_id'] != NULL) ? 'T.A ' . $key['period_start_month'] . '/' . $key['period_end_month'] : 'T.A ' . $key['period_start_bebas'] . '/' . $key['period_end_bebas'] ?></td>
										<td><?php echo ($key['bulan_bulan_id'] != NULL) ? $key['month_name'] : '(Bebas)' ?></td>
										<td><?php echo pretty_date($key['log_trx_input_date'], 'd F Y', false)  ?></td>
										<td><?php echo $key['student_full_name'] ?></td>
										<td><?php echo ($key['bulan_bulan_id'] != NULL) ? 'Rp. ' . number_format($key['bulan_bill'], 0, ',', '.') : 'Rp. ' . number_format($key['bebas_pay_bill'], 0, ',', '.') ?></td>
									</tr>
								<?php $total += $key['bebas_pay_bill'] + $key['bulan_bill']; endforeach ?>
								<tr>
									<td colspan="5" class="text-right"><h4>Total</h4></td>
									<td><h4><?php echo 'Rp. ' . number_format($total, 0, ',', '.'); ?></h4></td>
								</tr>

							</table>
						</div>
					</div>

				</div>
			</div>

		</div>
	</section>
	<!-- /.content -->
</div>