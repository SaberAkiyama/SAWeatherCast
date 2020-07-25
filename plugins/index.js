const SAWeatherCast = {
	name: "SAWeatherCast",
	version: require("../package.json")["version"],
	register: function register(server, options) {
		server.ext("onRequest", (request, h) => {
			if (!Array.isArray(options.exclude))
				throw new TypeError(
					"provide exclude property as an array to" +
						" reject SAWeatherCast or provide an empty array!"
				);

			const { hostname } = request.info;

			let hostNameArray = hostname.split(".");

			const sliceLength = options.domainName
				? options.domainName.split(".").length
				: 2;
			hostNameArray = hostNameArray.slice(
				0,
				hostNameArray.length - sliceLength
			);

      /**
       * @param{s} subdomain
       */
			hostNameArray = hostNameArray.filter(s => !options.exclude.includes(s));

			request.SAWeatherCast = hostNameArray;

			[request.subdomain] = hostNameArray;
			return h.continue;
		});
	}
};

module.exports = SAWeatherCast;