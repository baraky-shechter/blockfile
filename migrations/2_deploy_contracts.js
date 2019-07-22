const Blockfile = artifacts.require("./Blockfile.sol");

module.exports = function(deployer) {
  deployer.deploy(Blockfile);
};