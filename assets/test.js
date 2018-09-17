function aaa() {
	const productId = 'gflhw3hgp8g00000'
	const domain = `${productId}.m2.exosite-staging.io`
	const endpoint = '/provision/activate'

	const url = `https://${domain}${endpoint}`
	const data = 'id=asdf&password=1234'
	return fetch(url, {
		headers: {
			['Content-Type']: 'application/x-www-form-urlencoded; charset=utf-8',
		},
		method: 'POST',
		body: data,
	})
	.then(r => r.text())
	.then(console.log)
}

function solution() {
	return fetch('/account')
	.then(r => r.json())
	.then(console.log)
}

solution()
