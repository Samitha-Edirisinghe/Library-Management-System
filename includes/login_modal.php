<!-- Login -->
<div class="modal fade" id="login">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Login</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="login.php">
                <div class="form-group">
                    <label for="student" class="col-sm-3 control-label">Student ID</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="student" name="student" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-primary btn-flat" name="login"><i class="fa fa-sign-in"></i> Login</button>
              </form>
            </div>
        </div>
    </div>
</div> 