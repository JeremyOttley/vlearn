import net.http

url := "https://www.example.com"
  
api_request := fn (url string) string {
	return http.get_text(url)
}
api_request(url)
