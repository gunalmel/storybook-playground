

// const getIframeBody = () => {
// // get the iframe > document > body
//     return cy.get('iframe[id="storybook-preview-iframe"]')
//     // and retry until the body element is not empty
// .its('0.contentDocument.body').should('not.be.empty')
//     // wraps "body" DOM element
//     // https://on.cypress.io/wrap
// .then(cy.wrap);
// }
describe("Button", () => {
    before(() => {
        cy.visit("/iframe.html?id=example-button--primary");
    });
    it("loads primary button with default text", () => {
        cy.get('.storybook-button').contains('button', 'Button');
        // getIframeBody().get('#root').contains('button', 'Button');
    });
});