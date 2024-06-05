describe("Homepage", () => {
  beforeEach(() => {
    // This will reset the database to the initial state before each test
    cy.request("POST", "/cypress_rails_reset_state");
    cy.visit("/");
  });

  it("visits homepage", () => {
    cy.visit("/");
  });

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
});
