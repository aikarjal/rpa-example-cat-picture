import requests, os
from pathlib import Path

class KeywordLibrary(object):

    def __init__(self):
        pass

    def save_base64_image_as_html(self, src, file_name):
        file_path = Path('./output')
        if not file_path.exists():
            os.makedirs(file_path)

        with open(file_path / file_name, "w") as file:
            content = '<img src="' + src + '"/>'
            file.write(content)
