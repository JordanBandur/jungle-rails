describe("Product Details", () => {
  beforeEach(() => {
    // This will reset the database to the initial state before each test
    cy.request("POST", "/cypress_rails_reset_state");
    cy.visit("/");
  });

  it("should navigate to the product detail page when a product is clicked", () => {
    // Assuming each product link contains a class of `.product-link`
    cy.get(".products article").first().click();
    cy.url().should("include", "/products/");
    cy.get(".product-detail").should("be.visible");
  });
});