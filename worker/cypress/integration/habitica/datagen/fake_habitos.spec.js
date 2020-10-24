const faker = require('faker');

describe('Data Generator', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('misgotten')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Crear hábitos falsos', () => {

        let iter = 20
        for (let i = 0; i < iter; i++) {
            let title = faker.lorem.words()
            let note = faker.lorem.words()
            cy.get('.create-btn').click()
            cy.get('.create-task-btn').eq(0).click()

            cy.get('.task-modal-header input').type(title)
            cy.get('.task-modal-header textarea').type(note)
            cy.contains('Crear').first().click()

            cy.get('.habit').contains(title).should('be.visible')
        }
    })

})