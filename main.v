import picoev
import picohttpparser

[inline]
fn hello_response() string {
	return 'Hello, World!'
}

fn callback(req picohttpparser.Request, mut res picohttpparser.Response) {
	res.header_date()
	res.http_ok()
	res.plain()
	res.body(hello_response())
}

fn main() {
	println('Starting webserver on http://127.0.0.1:8088/ ...')
	picoev.new(8088, &callback).serve()
}
