touch LICENSE
touch README.md
touch .gitignore

# I have no idea how that works, thanks to stack overflow
# But it should give name of current directory
project=${PWD%%+(/)}         # trim however many trailing slashes exist
project=${project##*/}       # remove everything before the last / that still remains
project=${project:-/}        # correct for dirname=/ case

# Write title to README.md
echo "# $project" > README.md

# Write MIT license to LICENSE
echo "MIT License" >> LICENSE
echo "" >> LICENSE
echo "Copyright (c) 2022 farkon00" >> LICENSE
echo "" >> LICENSE
echo "Permission is hereby granted, free of charge, to any person obtaining a copy" >> LICENSE
echo "of this software and associated documentation files (the "Software"), to deal" >> LICENSE
echo "in the Software without restriction, including without limitation the rights" >> LICENSE
echo "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell" >> LICENSE
echo "copies of the Software, and to permit persons to whom the Software is" >> LICENSE
echo "furnished to do so, subject to the following conditions:" >> LICENSE
echo "" >> LICENSE
echo "The above copyright notice and this permission notice shall be included in all" >> LICENSE
echo "copies or substantial portions of the Software." >> LICENSE
echo "" >> LICENSE
echo "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR" >> LICENSE
echo "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY," >> LICENSE
echo "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE" >> LICENSE
echo "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER" >> LICENSE
echo "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM," >> LICENSE
echo "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE" >> LICENSE
echo "SOFTWARE." >> LICENSE

# Write python .gitignore
echo "__pycache__/" >> .gitignore
echo "*.py[cod]" >> .gitignore
echo "*$py.class" >> .gitignore
echo "*.so" >> .gitignore
echo ".Python" >> .gitignore
echo "build/" >> .gitignore
echo "develop-eggs/" >> .gitignore
echo "dist/" >> .gitignore
echo "downloads/" >> .gitignore
echo "eggs/" >> .gitignore
echo ".eggs/" >> .gitignore
echo "lib/" >> .gitignore
echo "lib64/" >> .gitignore
echo "parts/" >> .gitignore
echo "sdist/" >> .gitignore
echo "var/" >> .gitignore
echo "wheels/" >> .gitignore
echo "share/python-wheels/" >> .gitignore
echo "*.egg-info/" >> .gitignore
echo ".installed.cfg" >> .gitignore
echo "*.egg" >> .gitignore
echo "MANIFEST" >> .gitignore
echo "*.manifest" >> .gitignore
echo "*.spec" >> .gitignore
echo "pip-log.txt" >> .gitignore
echo "pip-delete-this-directory.txt" >> .gitignore
echo "htmlcov/" >> .gitignore
echo ".tox/" >> .gitignore
echo ".nox/" >> .gitignore
echo ".coverage" >> .gitignore
echo ".coverage.*" >> .gitignore
echo ".cache" >> .gitignore
echo "nosetests.xml" >> .gitignore
echo "coverage.xml" >> .gitignore
echo "*.cover" >> .gitignore
echo "*.py,cover" >> .gitignore
echo ".hypothesis/" >> .gitignore
echo ".pytest_cache/" >> .gitignore
echo "cover/" >> .gitignore
echo "*.mo" >> .gitignore
echo "*.pot" >> .gitignore
echo "*.log" >> .gitignore
echo "local_settings.py" >> .gitignore
echo "db.sqlite3" >> .gitignore
echo "db.sqlite3-journal" >> .gitignore
echo "instance/" >> .gitignore
echo ".webassets-cache" >> .gitignore
echo ".scrapy" >> .gitignore
echo "docs/_build/" >> .gitignore
echo ".pybuilder/" >> .gitignore
echo "target/" >> .gitignore
echo ".ipynb_checkpoints" >> .gitignore
echo "profile_default/" >> .gitignore
echo "ipython_config.py" >> .gitignore
echo "__pypackages__/" >> .gitignore
echo "celerybeat-schedule" >> .gitignore
echo "celerybeat.pid" >> .gitignore
echo "*.sage.py" >> .gitignore
echo ".env" >> .gitignore
echo ".venv" >> .gitignore
echo "env/" >> .gitignore
echo "venv/" >> .gitignore
echo "ENV/" >> .gitignore
echo "env.bak/" >> .gitignore
echo "venv.bak/" >> .gitignore
echo ".spyderproject" >> .gitignore
echo ".spyproject" >> .gitignore
echo ".ropeproject" >> .gitignore
echo "/site" >> .gitignore
echo ".mypy_cache/" >> .gitignore
echo ".dmypy.json" >> .gitignore
echo "dmypy.json" >> .gitignore
echo ".pyre/" >> .gitignore
echo ".pytype/" >> .gitignore
echo "cython_debug/" >> .gitignore

git add .gitignore LICENSE README.md