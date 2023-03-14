const config = {
    promise: new Promise((resolve) => {
        fetch('env.json').then(response => {
            return response.json();
        }).then(data => {
            config.baseUrl = data.baseUrl;
            resolve();
        })
    })
};

export default config;
