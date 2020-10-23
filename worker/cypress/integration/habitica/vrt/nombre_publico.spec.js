describe('Visual Regresion Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Editar nombre público', () => {
        cy.wait(2000)
        cy.screenshot('nombre_1', {capture: 'viewport'})
        cy.get('.avatar').click()
        cy.get('button').contains('Editar').click({force: true})
        let placeholder = cy.get('input[placeholder="Nombre completo"]')
        placeholder.clear()
        placeholder.type('plutarchia_changed')
        cy.get('button').contains('Guardar').click({force: true})
        cy.get('body').click('topLeft')
        cy.wait(1000)
        cy.screenshot('nombre_2', {capture: 'viewport'})
    })

    after(() => {
        cy.get('.avatar').click()
        cy.get('button').contains('Editar').click({force: true})
        let placeholder = cy.get('input[placeholder="Nombre completo"]')
        placeholder.clear()
        placeholder.type('plutarchia')
        cy.get('button').contains('Guardar').click({force: true})
    })

})