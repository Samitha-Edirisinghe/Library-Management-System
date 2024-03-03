<!-- Add -->
<div class="modal fade" id="addnew">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
            	<h4 class="modal-title"><b>Add New Book</b></h4>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="book_add.php">
          		  <div class="form-group">
                  	<label for="isbn" class="col-sm-3 control-label">ISBN</label>

                  	<div class="col-sm-9">
                    	<input type="text" class="form-control" id="isbn" name="isbn" required>
                  	</div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-3 control-label">Title</label>

                    <div class="col-sm-9">
                      <textarea class="form-control" name="title" id="title" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="category" class="col-sm-3 control-label">Category</label>

                    <div class="col-sm-9">
                      <select class="form-control" name="category" id="category" required>
                        <option value="" selected>- Select -</option>
                        <?php
                          $sql = "SELECT * FROM category";
                          $query = $conn->query($sql);
                          while($crow = $query->fetch_assoc()){
                            echo "
                              <option value='".$crow['id']."'>".$crow['name']."</option>
                            ";
                          }
                        ?>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="author" class="col-sm-3 control-label">Author</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="author" name="author">
                    </div>
                </div>
                <div class="form-group">
                    <label for="publisher" class="col-sm-3 control-label">Publisher</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="publisher" name="publisher">
                    </div>
                </div>
                <div class="form-group">
                    <label for="datepicker_add" class="col-sm-3 control-label">Publish Date</label>

                    <div class="col-sm-9">
                      <div class="date">
                        <input type="text" class="form-control" id="datepicker_add" name="pub_date">
                      </div>
                    </div>
                </div>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-save"></i> Save</button>
            	</form>
          	</div>
        </div>
    </div>
</div>

<!-- Edit -->
<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
            	<h4 class="modal-title"><b>Edit Book</b></h4>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="book_edit.php">
            		<input type="hidden" class="bookid" name="id">
                <div class="form-group">
                    <label for="edit_isbn" class="col-sm-3 control-label">ISBN</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_isbn" name="isbn">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_title" class="col-sm-3 control-label">Title</label>

                    <div class="col-sm-9">
                      <textarea class="form-control" name="title" id="edit_title"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="category" class="col-sm-3 control-label">Category</label>

                    <div class="col-sm-9">
                      <select class="form-control" name="category" id="category">
                        <option value="" selected id="catselect"></option>
                        <?php
                          $sql = "SELECT * FROM category";
                          $query = $conn->query($sql);
                          while($crow = $query->fetch_assoc()){
                            echo "
                              <option value='".$crow['id']."'>".$crow['name']."</option>
                            ";
                          }
                        ?>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_author" class="col-sm-3 control-label">Author</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_author" name="author">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_publisher" class="col-sm-3 control-label">Publisher</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_publisher" name="publisher">
                    </div>
                </div>
                <div class="form-group">
                    <label for="datepicker_edit" class="col-sm-3 control-label">Publish Date</label>

                    <div class="col-sm-9">
                      <div class="date">
                        <input type="text" class="form-control" id="datepicker_edit" name="pub_date">
                      </div>
                    </div>
                </div>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update</button>
            	</form>
          	</div>
        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
            	<h4 class="modal-title"><b>Deleting...</b></h4>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="book_delete.php">
            		<input type="hidden" class="bookid" name="id">
            		<div class="text-center">
	                	<p>DELETE BOOK</p>
	                	<h2 id="del_book" class="bold"></h2>
	            	</div>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Delete</button>
            	</form>
          	</div>
        </div>
    </div>
</div>


     