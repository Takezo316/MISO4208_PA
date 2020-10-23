describe('Random Testing', () => {

    before(() => {
        cy.visit('https://habitica.com/static/home')
        cy.get('a[href="/login"]').click()
        cy.get('#usernameInput').type('plutarchia')
        cy.get('#passwordInput').type('password123')
        cy.get('button[type="submit"]').click()
    })

    it('Random clicks a botones', () => {
        let clicks = 20
        for (let i = 0; i < clicks; i++) {
            cy.get('button').then($buttons => {
                let randomButton = $buttons.get(getRandomInt(0, $buttons.length));
                if(!Cypress.dom.isHidden(randomButton)) {
                    cy.wrap(randomButton).click({force: true});
                }
                cy.wait(500);
            })
        }
    })

})

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
}