import picoev
import picohttpparser

fn callback(data voidptr, req picohttpparser.Request, mut res picohttpparser.Response) {
	res.http_ok()
	res.header_date()
	res.plain()
	res.body('Hello, World!')
	res.end()
}

fn main() {
	mut server := picoev.new(port: 8080, cb: callback) or { panic('!!!') }
	server.serve()
}
