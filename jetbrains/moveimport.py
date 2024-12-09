import pathlib
import re
import sys

if __name__ == "__main__":
    filename = sys.argv[1]
    path = pathlib.Path(filename)
    content = path.read_text()


    if '# moveme' in content:
        matches = re.findall(r"^(\s+(from .*) # moveme)$", content, re.MULTILINE)

        for to_remove, import_statement in matches:
            content = content.replace(to_remove, '')
            content = import_statement + "\n" + content

        path.write_text(content)

