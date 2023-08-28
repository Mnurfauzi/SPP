<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
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
					<div class="box-header with-border text-left">
						<div class="col-sm-6">
							<h3 class="box-title">Filter Transaksi Pembayaran</h3>
						</div>
						<div class="col-sm-6 text-right">
							<?php if($this->session->userdata('uroleid') != USER) {?>
								<a href="<?php echo site_url('manage/student') ?>" class="btn btn-xs btn-success" style="margin-right: -15px;"><i class="fa fa-navicon"></i> Referensi Data Siswa</a>
							<?php }?>
						</div>
					</div><!-- /.box-header -->
					<div class="box-body">
						<?php echo form_open(current_url(), array('class' => 'form-horizontal', 'method' => 'get')) ?>
						<div class="col-md-6">
							<label for="" class="control-label">Pilih Tahun Pelajaran</label><br><br>
							<select class="form-control" name="n">
								<?php foreach ($period as $row) : ?>
									<option <?php echo (isset($f['n']) and $f['n'] == $row['period_id']) ? 'selected' : '' ?> value="<?php echo $row['period_id'] ?>"><?php echo $row['period_start'] . '/' . $row['period_end'] ?></option>
								<?php endforeach; ?>
							</select>
						</div>
						<div class="col-md-6">
							<label for="" class="control-label">Input Berdasarkan NIS Siswa</label><br><br>
							<div class="input-group">
								<input type="text" class="form-control" autofocus name="r" <?php echo (isset($f['r'])) ? 'placeholder="' . $f['r'] . '"' : 'placeholder="Masukkan NIS Siswa"' ?> value="<?php echo $this->session->userdata('uroleid') == USER ? $this->session->userdata('uemail') : '' ?>" <?php echo $this->session->userdata('uroleid') == USER ? 'Readonly' : '' ?> required>
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"><i class="fa fa-search"></i> Cari Data</button>
								</span>
							</div>
						</div>
						</form>
					</div><!-- /.box-body -->
				</div><!-- /.box -->

				<?php if ($f) { ?>

					<div class="box box-success">
						<div class="box-header with-border">
							<h3 class="box-title">Informasi Siswa</h3>
							<?php if ($f['n'] and $f['r'] != NULL) { ?>
								<!-- <a href="<?php echo site_url('manage/payout/printBill' . '/?' . http_build_query($f)) ?>" target="_blank" class="btn btn-warning btn-xs pull-right"><i class="fa fa-print"></i> Cetak Semua Tagihan</a> -->
							<?php } ?>
							<a class="btn btn-danger pull-right btn-xs" onclick="printDiv('printableinfosiswa')"><i class="fa fa-file-pdf-o"></i> Download</a>
						</div><!-- /.box-header -->
						<div class="box-body">
							<div id="printableinfosiswa">
								<div class="col-md-9">
									<table class="table table-striped">
										<tbody>
											<tr>
												<td width="200">Tahun Ajaran</td>
												<td width="4">:</td>
												<?php foreach ($period as $row) : ?>
													<?php echo (isset($f['n']) and $f['n'] == $row['period_id']) ?
														'<td><strong>' . $row['period_start'] . '/' . $row['period_start'] . '<strong></td>' : '' ?>
												<?php endforeach; ?>
											</tr>
											<tr>
												<td>NIS</td>
												<td>:</td>
												<?php foreach ($siswa as $row) : ?>
													<?php echo (isset($f['n']) and $f['r'] == $row['student_nis']) ?
														'<td>' . $row['student_nis'] . '</td>' : '' ?>
												<?php endforeach; ?>
											</tr>
											<tr>
												<td>Nama Siswa</td>
												<td>:</td>
												<?php foreach ($siswa as $row) : ?>
													<?php echo (isset($f['n']) and $f['r'] == $row['student_nis']) ?
														'<td>' . $row['student_full_name'] . '</td>' : '' ?>
												<?php endforeach; ?>
											</tr>
											<tr>
												<td>Nama Ibu Kandung</td>
												<td>:</td>
												<?php foreach ($siswa as $row) : ?>
													<?php echo (isset($f['n']) and $f['r'] == $row['student_nis']) ?
														'<td>' . $row['student_name_of_mother'] . '</td>' : '' ?>
												<?php endforeach; ?>
											</tr>
											<tr>
												<td>Kelas</td>
												<td>:</td>
												<?php foreach ($siswa as $row) : ?>
													<?php echo (isset($f['n']) and $f['r'] == $row['student_nis']) ?
														'<td>' . $row['class_name'] . '</td>' : '' ?>
												<?php endforeach; ?>
											</tr>
											<?php if (majors() == 'senior') { ?>
												<tr>
													<td>Nama Abjad</td>
													<td>:</td>
													<?php foreach ($siswa as $row) : ?>
														<?php echo (isset($f['n']) and $f['r'] == $row['student_nis']) ?
															'<td>' . $row['majors_name'] . '</td>' : '' ?>
													<?php endforeach; ?>
												</tr>
											<?php } ?>
										</tbody>
									</table>
								</div>
								<div class="col-md-3">
									<?php foreach ($siswa as $row) : ?>
										<?php if (isset($f['n']) and $f['r'] == $row['student_nis']) { ?>
											<?php if (!empty($row['student_img'])) { ?>
												<img src="<?php echo upload_url('student/' . $row['student_img']) ?>" class="img-thumbnail img-responsive">
											<?php } else { ?>
												<img src="<?php echo media_url('img/user.png') ?>" class="img-thumbnail img-responsive">
										<?php }
										} ?>
									<?php endforeach; ?>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Transaksi Terakhir</h3>
									<a class="btn btn-danger btn-xs pull-right" onclick="printDiv('printabletransaksi')"><i class="fa fa-file-pdf-o"></i> Download</a>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div id="printabletransaksi">
										<table class="table table-responsive table-bordered" style="white-space: nowrap;">
											<tr class="success">
												<th>Pembayaran</th>
												<th>Tagihan</th>
												<th>Tanggal</th>
											</tr>
											<?php
											foreach ($log as $key) :
											?>
												<tr>
													<td><?php echo ($key['bulan_bulan_id'] != NULL) ? $key['posmonth_name'] . ' - T.A ' . $key['period_start_month'] . '/' . $key['period_end_month'] . ' (' . $key['month_name'] . ')' : $key['posbebas_name'] . ' - T.A ' . $key['period_start_bebas'] . '/' . $key['period_end_bebas'] ?></td>
													<td><?php echo ($key['bulan_bulan_id'] != NULL) ? 'Rp. ' . number_format($key['bulan_bill'], 0, ',', '.') : 'Rp. ' . number_format($key['bebas_pay_bill'], 0, ',', '.') ?></td>
													<td><?php echo pretty_date($key['log_trx_input_date'], 'd F Y', false)  ?></td>
												</tr>
											<?php endforeach ?>

										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php if ($this->session->userdata('uroleid') <> USER) { ?>
						<!-- List Tagihan Bulanan -->
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Jenis Pembayaran</h3>
								<a class="btn btn-danger pull-right btn-xs" onclick="printDiv('printableArea')"><i class="fa fa-file-pdf-o"></i> Download</a>
							</div><!-- /.box-header -->
							<div class="box-body">
								<div id="printableArea">
									<div class="text-center">
										<img src="http://localhost:99/spp/uploads/school/Madrasah_Aliyah_(MA)_Negeri_2_Andalusia1.png" height="100">
										<h3>Rekap Transaksi Siswa</h3>
									</div>
									
									<div class="col-md-6">
										<h2>Bulanan</h2>
										<table class="table table-bordered table-responsive" style="white-space: nowrap;">
											<thead>
												<tr class="success">
													<th>&nbsp;</th>
													<th>Nama Pembayaran / Bulan</th>
													<th class="text-center">Sisa Tagihan</th>
													<th class="text-center">Tanggal</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$i = 1;
												foreach ($student as $row) : if ($f['n'] and $f['r'] == $row['student_nis'] ) {
												?>
														<?php $Payid = 0; foreach ($bulan as $key) : ?>
															<?php if (isset($f['n']) and $f['n'] == $key['period_period_id']) {?>
															<?php if ($Payid != $key['payment_payment_id']) {?>
															<tr>
																<td>&nbsp;</td>
																<td class="text-center"><?php echo $key['pos_name'] . ' - T.A ' . $key['period_start'] . '/' . $key['period_end'] ?></td>
																<td class="text-center"><?php echo ($total == $pay) ? 'Rp. -' : 'Rp. ' . number_format($total - $pay, 0, ',', '.') ?></td>
																<td class="text-center">&nbsp;</td>
																<td class="text-center">&nbsp;</td>
															</tr>
															<?php }?>
															<tr>
																<td><?php echo $i ?></td>
																<td class="text-center"><?php echo $key['month_name'] ?></td>
																<td class="<?php echo ($key['bulan_status'] == 1) ? 'success' : 'danger' ?> text-center">Rp. <?php echo number_format($key['bulan_bill'], 0, ',', '.') ?></td>
																<td class="<?php echo ($key['bulan_status'] == 1) ? 'success' : 'danger' ?> text-center"><?php echo ($key['bulan_status'] == 1) ? pretty_date($key['bulan_date_pay'], 'd/m/y', false) : '' ?></td>
																<td class="<?php echo ($key['bulan_status'] == 1) ? 'success' : 'danger' ?> text-center">
																		<?php if ($key['bulan_status'] == 1) { ?> 
																			<a href="<?php echo site_url('manage/payout/not_pay/' . $key['payment_payment_id'] . '/' . $key['student_student_id'] . '/' . $key['bulan_id']) ?>" class="btn btn-danger btn-xs pull-right"><i class="fa fa-trash"></i> Hapus</a>
																		<?php } else { ?> 
																			<a href="<?php echo site_url('manage/payout/pay/' . $key['payment_payment_id'] . '/' . $row['student_student_id'] . '/' . $key['bulan_id']) ?>"  onclick="return confirm('Anda Akan Melakukan Pembayaran bulan ' . $key['month_name'] . '?')" class="btn btn-success btn-xs pull-right"><i class="fa fa-save"></i> Konfirmasi</a>
																		<?php } ?>
																</td>
															</tr>
															<?php }?>
														<?php $Payid = $key['payment_payment_id']; $i++; endforeach ?>
												<?php
													}
												endforeach;
												?>
											</tbody>
										</table>
									</div>
									<div class="col-md-6">
										<h2>Bebas</h2>
										<table class="table table-hover table-responsive table-bordered" style="white-space: nowrap;">
											<thead>
												<tr class="success">
													<th>No.</th>
													<th>Jenis Pembayaran</th>
													<th>Total Tagihan</th>
													<th>Dibayar</th>
													<th>Status</th>
													<th>Bayar</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$i = 1;
												foreach ($bebas as $row) :
													if ($f['n'] and $f['r'] == $row['student_nis']) {
														$sisa = $row['bebas_bill'] - $row['bebas_total_pay'];
												?>
														<tr class="<?php echo ($row['bebas_bill'] == $row['bebas_total_pay']) ? 'success' : 'danger' ?>">
															<td style="background-color: #fff !important;"><?php echo $i ?></td>
															<td style="background-color: #fff !important;"><?php echo $row['pos_name'] . ' - T.A ' . $row['period_start'] . '/' . $row['period_end'] ?></td>
															<td><?php echo 'Rp. ' . number_format($sisa, 0, ',', '.') ?></td>
															<td><?php echo 'Rp. ' . number_format($row['bebas_total_pay'], 0, ',', '.') ?></td>
															<td><a href="<?php echo site_url('manage/payout/payout_bebas/' . $row['payment_payment_id'] . '/' . $row['student_student_id'] . '/' . $row['bebas_id']) ?>" class="view-cicilan label <?php echo ($row['bebas_bill'] == $row['bebas_total_pay']) ? 'label-success' : 'label-warning' ?>"><?php echo ($row['bebas_bill'] == $row['bebas_total_pay']) ? 'Lunas' : 'Belum Lunas' ?></a></td>
															<td width="40" style="text-align:center">
																<a data-toggle="modal" class="btn btn-success btn-xs <?php echo ($row['bebas_bill'] == $row['bebas_total_pay']) ? 'disabled' : '' ?>" title="Bayar" href="#addCicilan<?php echo $row['bebas_id'] ?>"><span class="fa fa-money"></span> <b>Bayar</b></a>
															</td>
														</tr>

														<div class="modal fade" id="addCicilan<?php echo $row['bebas_id'] ?>" role="dialog">
															<div class="modal-dialog modal-md">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-dismiss="modal">&times;</button>
																		<h4 class="modal-title">Tambah Pembayaran / Cicilan</h4>
																	</div>
																	<?php echo form_open('manage/payout/payout_bebas/', array('method' => 'post')); ?>
																	<div class="modal-body">
																		<input type="hidden" name="bebas_id" value="<?php echo $row['bebas_id'] ?>">
																		<input type="hidden" name="student_nis" value="<?php echo $row['student_nis'] ?>">
																		<input type="hidden" name="student_student_id" value="<?php echo $row['student_student_id'] ?>">
																		<input type="hidden" name="payment_payment_id" value="<?php echo $row['payment_payment_id'] ?>">
																		<div class="form-group">
																			<label>Nama Pembayaran</label>
																			<input class="form-control" readonly="" type="text" value="<?php echo $row['pos_name'] . ' - T.A ' . $row['period_start'] . '/' . $row['period_end'] ?>">
																		</div>
																		<div class="form-group">
																			<label>Tanggal</label>
																			<input class="form-control" readonly="" type="text" value="<?php echo pretty_date(date('Y-m-d'), 'd F Y', false) ?>">
																		</div>
																		<div class="row">
																			<div class="col-md-6">
																				<label>Jumlah Bayar *</label>
																				<input type="text" required="" name="bebas_pay_bill" class="form-control numeric" placeholder="Jumlah Bayar">
																			</div>
																			<div class="col-md-6">
																				<label>Keterangan *</label>
																				<input type="text" required="" name="bebas_pay_desc" class="form-control" placeholder="Keterangan">
																			</div>
																		</div>
																	</div>
																	<div class="modal-footer">
																		<button type="submit" class="btn btn-success">Simpan</button>
																		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																	</div>
																	<?php echo form_close(); ?>
																</div>

														<?php
													}
													$i++;
													endforeach;
														?>
											</tbody>
										</table>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>
					<?php } ?>
			</div>
		</div>
	</section>
</div>

<script type="text/javascript">
	function startCalculate() {
		interval = setInterval("Calculate()", 10);
	}

	function Calculate() {
		var numberHarga = $('#harga').val(); // a string
		numberHarga = numberHarga.replace(/\D/g, '');
		numberHarga = parseInt(numberHarga, 10);

		var numberBayar = $('#bayar').val(); // a string
		numberBayar = numberBayar.replace(/\D/g, '');
		numberBayar = parseInt(numberBayar, 10);

		var total = numberBayar - numberHarga;
		$('#kembalian').val(total);
	}

	function stopCalc() {
		clearInterval(interval);
	}
</script>
<script>
	$(document).ready(function() {
		$("#selectall").change(function() {
			$(".checkbox").prop('checked', $(this).prop("checked"));
		});
	});
</script>
<script type="text/javascript">
	(function(a) {
		a.createModal = function(b) {
			defaults = {
				title: "",
				message: "Your Message Goes Here!",
				closeButton: true,
				scrollable: false
			};
			var b = a.extend({}, defaults, b);
			var c = (b.scrollable === true) ? 'style="max-height: 420px;overflow-y: auto;"' : "";
			html = '<div class="modal fade" id="myModal">';
			html += '<div class="modal-dialog">';
			html += '<div class="modal-content">';
			html += '<div class="modal-header">';
			html += '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>';
			if (b.title.length > 0) {
				html += '<h4 class="modal-title">' + b.title + "</h4>"
			}
			html += "</div>";
			html += '<div class="modal-body" ' + c + ">";
			html += b.message;
			html += "</div>";
			html += '<div class="modal-footer">';
			if (b.closeButton === true) {
				html += '<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'
			}
			html += "</div>";
			html += "</div>";
			html += "</div>";
			html += "</div>";
			a("body").prepend(html);
			a("#myModal").modal().on("hidden.bs.modal", function() {
				a(this).remove()
			})
		}
	})(jQuery);

	/*
	 * Here is how you use it
	 */
	$(function() {
		$('.view-cicilan').on('click', function() {
			var link = $(this).attr('href');
			var iframe = '<object type="text/html" data="' + link + '" width="100%" height="350">No Support</object>'
			$.createModal({
				title: 'Lihat Pembayaran/Cicilan',
				message: iframe,
				closeButton: true,
				scrollable: false
			});
			return false;
		});
	});
</script>