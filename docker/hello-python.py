from __future__ import print_function
import os
import uuid
from flask import Flask, render_template

app = Flask(__name__)
my_uuid = str(uuid.uuid1())
RED = "#CC3300"
COLOR = RED

@app.route('/')
def hello():
    return render_template("index.html",bgcolor=COLOR,guid=my_uuid,myname="Rich Barlow")

if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
