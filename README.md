# Simple Flask message board with MongoDB & Redis
<h3>Get started</h3>
<ul>
    <li>Open bash</li>
    <li>Clone project</li>
    <li>Create virtual environments</li>
    <li>Activate it</li>
    <li>
        <b>sudo service redis-server start</b>
    </li>
    <li>
        <b>sudo docker-compose build</b>
    </li>
    <li>
        <b>sudo docker-compose up</b>
    </li>
</ul>
<p>Now, for the best work you need to install Postman</p>
<h3>Running program</h3>
<ul>
    <li><b>Create a message:</b><ol>
            <li>Select a POST method in Postman;</li>
            <li> In URL type http://127.0.0.1:5000/message;</li>
            <li>Key must be 'text' and value must be 'test_message' for example</li>
            <li>Copy generated id</li>
        </ol>
    </li>
    <li><b>Add tag to message:</b><ol>
            <li>Select a POST method in Postman;</li>
            <li> In URL type http://127.0.0.1:5000/tag/*id_you_copied*;</li>
            <li>Key must be 'text' and value must be 'test_tag' for example</li>
        </ol>
    </li>
    <li><b>Add comments to message:</b><ol>
            <li>Select a POST method in Postman;</li>
            <li> In URL type http://127.0.0.1:5000/comment/*id_you_copied*;</li>
            <li>Key must be 'text' and value must be 'test_comment' for example</li>
        </ol>
    </li>
    <li><b>Show message data:</b><ol>
            <li>Select a GET method in Postman;</li>
            <li> In URL type http://127.0.0.1:5000/message/*id_you_copied*;</li>
        </ol>
    </li>
    <li><b>Show message statistics:</b><ol>
            <li>Select a GET method in Postman;</li>
            <li> In URL type http://127.0.0.1:5000/stats/*id_you_copied*;</li>
        </ol>
    </li>
</ul>

<h4>In the end you will see something like that:</h4>

<ul>
<li>
{
  "comments": [
    {
      "text": "comment"
    }
  ],
  "message": "This message has 2 tags and 1 comments",
  "ok": true,
  "tags": [
    {
      "text": "tag"
    },
    {
      "text": "tag2"
    }
  ]
}
</li>
</ul>