dist/index.js: dist/index.html src/*
	spago bundle-app -t dist/index.js

run: dist/index.js
	live-server dist/ --port=12345

clean:
	rm -rf dist/index.js output/

cleanall:
	rm -rf dist/index.js output/ .spago/
