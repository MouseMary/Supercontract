const Supercontract = artifacts.require("Supercontract");

const LibrerySwap = artifacts.require("LibrerySwap");

module.exports = function(_deployer) {
  // Use deployer to state migration tasks.
  _deployer.link(LibrerySwap, Supercontract);
  _deployer.deploy(Supercontract);
};