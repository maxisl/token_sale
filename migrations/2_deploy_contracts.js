const DappToken = artifacts.require("./DappToken.sol");

module.exports = function (deployer) {
  //arguments after DappToken will be passed to the constructor
  deployer.deploy(DappToken, 1000000);
};

