# win32:
# 	CGO_ENABLED=1 GOOS=windows GOARCH=386 CGO_ENABLED=1 CC=x86_64-linux-musl-gcc CXX=x86_64-linux-musl-g++ \
# 	go build  -o sqlite-test.exe .
	# -ldflags '-static'

win32:
	CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ GOOS=windows GOARCH=386 go build  -o sqlitew32.exe .

win:
	CGO_ENABLED=1 GOOS=windows GOARCH=386 CGO_ENABLED=1 CC_FOR_TARGET=x86_64-linux-musl-gcc CXX_FOR_TARGET=x86_64-linux-musl-g++ \
	go build -ldflags '-static' -o sqlite-test.exe

win64:
	CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ GOOS=windows GOARCH=amd64 go build -o sqlitewin64.exe .
	