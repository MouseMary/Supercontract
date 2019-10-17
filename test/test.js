var test = artifacts.require("Supercontract");

contract("Supercontract", function(_accounts) {
  it("should assert true", function(done) {
    test.deployed();
    assert.isTrue(true);
    done();
  });
});