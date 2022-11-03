require ("@nomicfoundation/hardhat-toolbox");
require ('hardhat-deploy');
require ('@nomiclabs/hardhat-ethers');
require ('@nomiclabs/hardhat-etherscan');
require ('dotenv/config');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  defaultNetwork: "goerli",
  networks: {
    hardhat: {
    },
    goerli: {
      url: "https://goerli-light.eth.linkpool.io",
      accounts: ['0x']
    }
  },
  solidity: "0.8.6",
};
