import picoev
import picohttpparser

fn callback(req picohttpparser.Request, mut res picohttpparser.Response) {
	res.http_ok()	
	res.header_date()
	res.plain()
	res.body('Hello, World!')
}

fn main() {
	picoev.new(80, &callback).serve()
}
