import adapter from '@sveltejs/adapter-static';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		adapter: adapter({
			// default options are shown
			pages: 'izroll-server/static/',
			assets: 'izroll-server/static/',
			fallback: 'index.html',
			precompress: false
		}),
		prerender: {
			crawl: true,
			default: true,
		},
		trailingSlash: 'always'
	}
};

export default config;
