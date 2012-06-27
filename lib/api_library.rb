module ApiLibrary
	def http_response(query)
		begin
			request = URI.parse(query)
			request = Net::HTTP.get_response(request).body
		rescue
			return false
		end

		request = JSON.parse(request)
	end

	def https_response(uri)
		mu_request = URI.parse(uri)
		http = Net::HTTP.new(mu_request.host, mu_request.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		request = Net::HTTP::Get.new(mu_request.request_uri)
		response = http.request(request)
		response = response.body
	end
end
