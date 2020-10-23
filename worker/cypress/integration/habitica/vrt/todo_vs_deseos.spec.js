describe('Visual Regresion Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Vista de todo vs lista de deseos', () => {
        cy.get('#generate_palette').click()
        cy.screenshot('imagen2')
    })

})