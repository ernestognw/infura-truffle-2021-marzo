const Migrations = artifacts.require("Migrations");
const SimpleStorage2 = artifacts.require("SimpleStorage2");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(SimpleStorage2)
};
