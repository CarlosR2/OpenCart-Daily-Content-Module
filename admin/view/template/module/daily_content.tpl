<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-html" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-html" class="form-horizontal">

					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
						<div class="col-sm-10">
							<input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
							<?php if ($error_name) { ?>
							<div class="text-danger"><?php echo $error_name; ?></div>
							<?php } ?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
						<div class="col-sm-10">
							<select name="status" id="input-status-monday" class="form-control">
								<?php if ($status) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-status"><?php echo $text_well_box; ?></label>
						<div class="col-sm-10">
							<select name="well_box" id="input-status-monday" class="form-control">
								<?php if ($well_box) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					<div class="form-group">
					</div>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-monday" data-toggle="tab"><?php echo $text_monday; ?></a></li>
						<li><a href="#tab-tuesday" data-toggle="tab"><?php echo $text_tuesday; ?></a></li>
						<li><a href="#tab-wednesday" data-toggle="tab"><?php echo $text_wednesday; ?></a></li>
						<li><a href="#tab-thursday" data-toggle="tab"><?php echo $text_thursday; ?></a></li>
						<li><a href="#tab-friday" data-toggle="tab"><?php echo $text_friday; ?></a></li>
						<li><a href="#tab-saturday" data-toggle="tab"><?php echo $text_saturday; ?></a></li>
						<li><a href="#tab-sunday" data-toggle="tab"><?php echo $text_sunday; ?></a></li>				
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab-monday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_monday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-monday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-monday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_monday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_monday[$language['language_id']]['title']) ? $module_description_monday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-monday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_monday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-monday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_monday[$language['language_id']]['description']) ? $module_description_monday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>


						<div class="tab-pane  " id="tab-tuesday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_tuesday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-tuesday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-tuesday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_tuesday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_tuesday[$language['language_id']]['title']) ? $module_description_tuesday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-tuesday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_tuesday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-tuesday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_tuesday[$language['language_id']]['description']) ? $module_description_tuesday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>

						<div class="tab-pane  " id="tab-wednesday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_wednesday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-wednesday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-wednesday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_wednesday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_wednesday[$language['language_id']]['title']) ? $module_description_wednesday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-wednesday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_wednesday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-wednesday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_wednesday[$language['language_id']]['description']) ? $module_description_wednesday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>

						<div class="tab-pane  " id="tab-thursday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_thursday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-thursday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-thursday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_thursday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_thursday[$language['language_id']]['title']) ? $module_description_thursday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-thursday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_thursday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-thursday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_thursday[$language['language_id']]['description']) ? $module_description_thursday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>








						<div class="tab-pane  " id="tab-friday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_friday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-friday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-friday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_friday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_friday[$language['language_id']]['title']) ? $module_description_friday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-friday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_friday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-friday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_friday[$language['language_id']]['description']) ? $module_description_friday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>

						<div class="tab-pane  " id="tab-saturday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_saturday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-saturday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-saturday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_saturday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_saturday[$language['language_id']]['title']) ? $module_description_saturday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-saturday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_saturday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-saturday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_saturday[$language['language_id']]['description']) ? $module_description_saturday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>


						<div class="tab-pane  " id="tab-sunday">
							<div class="tab-pane">
								<ul class="nav nav-tabs" id="language_sunday">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>

								<div class="tab-content">

									<?php foreach ($languages as $language) { ?>

									<div class="" id="language-sunday<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-title-sunday<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="module_description_sunday[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description_sunday[$language['language_id']]['title']) ? $module_description_sunday[$language['language_id']]['title'] : ''; ?>" class="form-control" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description-sunday<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">

												<textarea name="module_description_sunday[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description-sunday<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($module_description_sunday[$language['language_id']]['description']) ? $module_description_sunday[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>


					</div>



				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript"><!--
	<?php foreach ($languages as $language) { ?>
		$('#input-description-monday<?php echo $language['language_id']; ?>').summernote({height: 300});
											 $('#input-description-tuesday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 $('#input-description-wednesday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 $('#input-description-thursday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 $('#input-description-friday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 $('#input-description-saturday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 $('#input-description-sunday<?php echo $language['language_id']; ?>').summernote({height: 300});											 
											 <?php } ?>
												 //--></script> 
	<script type="text/javascript"><!--
	$('#language a:first').tab('show');
		//--></script></div>
<?php echo $footer; ?>