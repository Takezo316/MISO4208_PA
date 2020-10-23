describe('Random Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Random clicks a la pantalla', () => {
        cy.wait(2000)
        let clicks = 20
        for (let i = 0; i < clicks; i++) {
            cy.get('.container-fluid').click(getRandomInt(0, 800), getRandomInt(0, 800))
            cy.wait(500)
        }
    })

})

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
}