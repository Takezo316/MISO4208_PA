describe('Visual Regresion Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Menu pendiente programado', () => {
        cy.wait(2000)
        cy.screenshot('programado_1')
        cy.get('.filter.small-text').contains('Programado').click()
        cy.wait(1000)
        cy.screenshot('programado_2')
    })

})