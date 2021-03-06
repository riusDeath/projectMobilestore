<?php $__env->startSection('content'); ?>
	<div class="jumbotron">
		<div class="container">
			<h3>Phương thức giao hàng</h3>
			<?php if(isset($thongbao)): ?>
			<p><?php echo e($thongbao); ?></p>
			<?php endif; ?>
	
		    <div class="col-md-6">
				<select name="ships" id="inputPays" class="form-control ship" >
					<?php $__currentLoopData = $ships; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ship): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<option value="<?php echo e($ship->id); ?>"><?php echo e($ship->name); ?></option>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</select>
				<p id="ship"></p>
				<form action="" method="POST" role="form">
					<input type="hidden" value="<?php echo csrf_token() ?>" name="_token">
					<div class="form-group">
						<label for="">Tên phương thức</label>
						<input type="text" class="form-control" id="" placeholder="Phương thức thanh toán" name="name">
					</div>	
					<div class="form-group">
						<label for="">Giá: </label>
						<input type="text" class="form-control" id="" placeholder="Giá" name="price">
					</div>	
					<div class="form-group">
						<label for="">Địa chỉ: </label>
						<input type="text" class="form-control" id="" placeholder="Giá" name="adress">
					</div>		
					 <div class="form-group">
					 	<textarea name="description" id="description_ship" rows="10" cols="80">  </textarea>
					 </div>
				<script>
				      CKEDITOR.replace( 'description_ship' );
				</script>										
					<button type="submit" class="btn btn-primary">Thêm mới</button>
				</form>
			</div>
		</div>
	</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>