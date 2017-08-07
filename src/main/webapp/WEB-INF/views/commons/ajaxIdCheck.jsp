<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    
				<table class="table table-hover">
					<tbody>
						<tr>
							<td >받는사람 :
								<input type="text" name="recvId" style="width: 450px;" value="${param.recvId }">
								<input type="hidden" name="sendId" value="${member.id }">
								<input type="button" id="id_check" value="Check">
							</td>
						</tr>				
						<tr>
							<td><textarea rows="7" cols="10" name="contents" style="width: 500px;"></textarea> </td>
						</tr>
					</tbody>
				</table>