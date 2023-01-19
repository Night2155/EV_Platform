<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDataBase.aspx.cs" Inherits="Grammar.WebForm3" %>

<!DOCTYPE html>
<html lang="en">
  <head></head>
  <body>
    <table>
      <thead>
        <tr>
          <th>Title</th>
          <th>video_id</th>
          <th>video_keywords</th>
        </tr>
      </thead>

      <tbody>
        {% for result in result %}
        <tr>
          <td>{{ result.Video_Title }}</td>
          <td>{{ result.VideoID }}</td>
          <td>{{ result.keywords }}</td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </body>
</html>
