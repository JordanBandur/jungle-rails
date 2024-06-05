describe("Add to Cart", () => {
  beforeEach(() => {
    // This will reset the database to the initial state before each test
    cy.request("POST", "/cypress_rails_reset_state");
    cy.visit("/");
  });

  it("should increase the cart count when a product is added to the cart", () => {
    // Check initial cart count
    cy.get("nav").contains("My Cart (0)");

    // Add the first product to the cart
    cy.get(".products article").first().find("button").contains("Add").click();

    // Check updated cart count
    cy.get("nav").contains("My Cart (1)");
  });
});