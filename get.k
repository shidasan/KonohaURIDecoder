Import("Type.File");
Import("Syntax.CStyleWhile");
Import("Syntax.Null");
Import("JavaScript.String");
Import("posix.process");

System.getenv("REQUEST_METHOD"); //POST or GET

//POST は標準出力,GETは環境変数から取得
//htmlエスケープは未実装

String getMsg() {
	String mtd_type = System.getenv("REQUEST_METHOD");
	System.p(mtd_type);
	if (mtd_type != "GET") {
		// ERROR Handling: only POST Method is available
	}
	String query = ""; 
	String ln; 
	FILE f = stdin;
	while ((ln = f.readLine()) != null) {
		query = query + ln; 
	}   
	return query.replace(/\\n/g,"\n").replace(/\\\"/g, "\\\\\\\"");
}

System.p(getMsg());
