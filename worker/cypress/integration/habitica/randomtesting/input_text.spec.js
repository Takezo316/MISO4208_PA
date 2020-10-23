describe('Random Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Llenar input forms de forma aleatoria', () => {
        let inputs = 20
        for (let i = 0; i < inputs; i++) {
            cy.get('input').then($inputs => {
                let randomInput = $inputs.get(getRandomInt(0, $inputs.length))
                if(!Cypress.dom.isHidden(randomInput)) {
                    cy.wrap(randomInput).type('Hello, world', {force: true})
                }
                cy.wait(500)
            })
        }
    })

})

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
}