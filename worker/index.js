const cypress = require('cypress')

cypress.run({
    spec: 'cypress/integration/examples/actions.spec.js'
})
.then((results) => {
    console.log(results)
})
.catch((err) => {
    console.error(err)
})