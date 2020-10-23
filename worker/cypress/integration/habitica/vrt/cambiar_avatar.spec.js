describe('Visual Regresion Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Cambiar Avatar', () => {
        cy.wait(2000)
        cy.screenshot('avatar_1')
        cy.get('div[aria-label="Usuario"]').last().click()
        cy.get('a').contains('Editar Avatar').click({force: true})
        cy.get('strong').contains('Cabello').click()
        cy.get('.hair_bangs_1_blond').first().click()
        cy.get('.close-icon').click()
        cy.wait(1000)
        cy.screenshot('avatar_2')
    })

    after(() => {
        cy.get('div[aria-label="Usuario"]').last().click({force: true})
        cy.get('a').contains('Editar Avatar').click({force: true})
        cy.get('strong').contains('Cabello').click({force: true})
        cy.get('.hair_bangs_1_red').first().click({force: true})
        cy.get('.close-icon').click({force: true})
    })

})