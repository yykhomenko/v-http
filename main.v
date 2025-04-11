import picoev
import picohttpparser

fn main() {
	mut server := picoev.new(
		port: 8080
		cb:   fn (_ voidptr, req picohttpparser.Request, mut res picohttpparser.Response) {
			res.http_ok()
			res.plain()
			res.body('Hello, World!')
			res.end()
		}
	) or { panic('Unable to create server') }
	server.serve()
}
