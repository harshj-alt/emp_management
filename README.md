# README

This README would normally document whatever steps are necessary to get the
// test code



<h1 align="center">All Studnets records</h1>
<%
=begin%>
 <p>
<%= link_to "create new student" ,new_student_path %>
</p>
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>City</th>
      <th>Address</th>
      <th>Postel Code</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @student.each do |student_table| %>
      <tr>
        <td><%= student_table.name %></td>
        <td><%= student_table.age %></td>
        <td><%= student_table.city %></td>
        <td><%= student_table.Address %></td>
        <td><%= student_table.postal_code %></td>
        <td><%= link_to 'Show', student_path(student_table) %></td>
        <td><%= link_to 'Edit', edit_student_path(student_table) %></td>         
        <td><%= link_to 'Destroy', student_path(student_table), method: :delete, data: { confirm: 'Are you sure?' } %></td>

      </tr>
    <% end %>
  </tbody>
</table> 
<%
=end%>