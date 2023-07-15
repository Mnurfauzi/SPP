<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Edit Pengumuman
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('manage') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li><a href="<?php echo site_url('manage/profile') ?>">Profile</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>

	<!-- Main content -->
	<!-- Main content -->
	<section class="content">
		<form method ="POST" action="<?php echo base_url()."index.php/manage/Dashboard/doUpdate/"?>">
		<!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-md-9">
					<div class="box box-success">
						<!-- /.box-header -->
						<div class="box-body">

							<input type="hidden" name="id" value="<?php echo $id; ?>">
							<div class="form-group">
								<label>Subject <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="subject" type="text" class="form-control" value="<?php echo $subject ?>" placeholder="email">
							</div>
							<div class="form-group">
								<label>Keterangan</label>
								<textarea class="form-control" name="ket" placeholder="Keterangan"><?php echo $ket ?></textarea>
							</div>
							<div class="form-group">
								<label>Tanggal Expired <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="tglex" type="datetime-local" class="form-control" value="<?php echo $tglex ?>">
							</div>
							<div class="col-md-6">
								<button type="submit" class="btn btn-block btn-success"><i class="fa fa-save"></i> Simpan</button>
							</div>
							<div class="col-md-6">
								<a href="<?php echo site_url('manage/dashboard'); ?>" class="btn btn-block btn-info"><i class="fa fa-close"></i> Batal</a>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
				</div>
			</div>
		</form>
		<!-- /.row -->
	</section>
</div>
<script src="<?php echo media_url() ?>/js/jquery.min.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#target').attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#user_image").change(function() {
		readURL(this);
	});
</script>