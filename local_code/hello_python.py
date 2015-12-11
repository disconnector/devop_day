from __future__ import print_function
import os
import uuid
from flask import Flask, render_template


app = Flask(__name__)
BLUE = "#0099FF"
GREEN = "#33CC33"
se_real_name = "Rich Barlow"
COLOR = GREEN

@app.route('/')
def hello():
    return render_template("index.html",bgcolor=COLOR,guid=my_uuid,sename=se_real_name)

if __name__ == "__main__":
    app.run()
