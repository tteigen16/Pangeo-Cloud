hello:
	cat ~/git-thomas-token

publish: hello
	git add .
	git commit -m 'automatic update from Makefile'
	git push

startjup:
	docker run -it -v `pwd`:/home -p 8888:8888 tbutzer/jupyter-lite jupyter notebook --allow-root --ip="0.0.0.0" --NotebookApp.token='yaml'
