<?php

if (isset($student)) {
	$inputFullnameValue = $student['student_full_name'];
	$inputSaldoBulanan = $student['SaldoBulanan'];
	$inputSaldoBebas = $student['SaldoBebas'];
} else {
	$inputFullnameValue = set_value('student_full_name');
	$inputSaldoBulanan = set_value('SaldoBulanan');
	$inputSaldoBebas = set_value('SaldoBebas');
}
?>

<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('manage') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li><a href="<?php echo site_url('manage/students') ?>">Manajemen Siswa</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>

	<!-- Main content -->
	<!-- Main content -->
	<section class="content">
		<?php echo form_open_multipart(current_url()); ?>
		<!-- Small boxes (Stat box) -->
		<div class="row">
			<div class="col-md-9">
				<div class="box box-success">
					<!-- /.box-header -->
					<div class="box-body">
						<div class="nav-tabs-custom">
							<?php echo validation_errors(); ?>
							<?php if (isset($student)) { ?>
								<input type="hidden" name="student_id" value="<?php echo $student['student_id']; ?>">
							<?php } ?>

							<div class="form-group">
								<label>Nama lengkap <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="student_full_name" type="text" class="form-control" value="<?php echo $inputFullnameValue ?>" placeholder="Nama lengkap" readonly>
							</div>
							<div class="form-group">
								<label>Saldo Tagihan Bulanan <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="SaldoBulanan" type="text" class="form-control numeric" value="<?php echo $inputSaldoBulanan ?>">
							</div>
							<div class="form-group">
								<label>Saldo Tagihan Bebas <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="SaldoBebas" type="text" class="form-control numeric" value="<?php echo $inputSaldoBebas ?>">
							</div>
							<div class="form-group">
								<label>Total Saldo</label>
								<input name="SaldoTotal" type="text" class="form-control numeric" value="<?php echo $inputSaldoBulanan + $inputSaldoBebas ?>" readonly>
							</div>
						</div>
						<p class="text-muted">*) Kolom wajib diisi.</p>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<div class="col-md-3">
				<div class="box box-primary">
					<!-- /.box-header -->
					<div class="box-body">
						<button type="submit" class="btn btn-block btn-success"><i class="fa fa-save"></i> Simpan</button>
						<a href="<?php echo site_url('manage/student'); ?>" class="btn btn-block btn-info"><i class="fa fa-repeat"></i> Batal</a>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
		</div>
		<?php echo form_close(); ?>
		<!-- /.row -->
	</section>
</div>
<?php if (isset($student)) { ?>
	<div class="modal fade" id="deleteStudent">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Konfirmasi Hapus</h4>
				</div>
				<form action="<?php echo site_url('manage/student/delete') ?>" method="POST">
					<div class="modal-body">
						<p>Apakah anda akan menghapus data ini?</p>
						<input type="hidden" name="student_id" id="studentId">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-danger">Hapus</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<?php } ?>

<script>
	function getId(id) {
		$('#studentId').val(id)
	}
</script>

<script>
	var classApp = angular.module("classApp", []);
	var SITEURL = "<?php echo site_url() ?>";

	classApp.controller('classCtrl', function($scope, $http) {
		$scope.classs = [];
		<?php if (isset($student)) : ?>
			$scope.class_data = {
				index: <?php echo $student['class_class_id']; ?>
			};
		<?php endif; ?>

		$scope.getClass = function() {

			var url = SITEURL + 'api/get_class/';
			$http.get(url).then(function(response) {
				$scope.classs = response.data;
			});

		};

		$scope.submit = function(student) {
			var postData = $.param(student);
			$.ajax({
				method: "POST",
				url: SITEURL + "manage/student/add_class",
				data: postData,
				success: function(data) {
					$scope.getClass();
					$scope.classForm.class_name = '';
				}
			});
		};

		angular.element(document).ready(function() {
			$scope.getClass();
		});

	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#target').attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#student_img").change(function() {
		readURL(this);
	});
</script>