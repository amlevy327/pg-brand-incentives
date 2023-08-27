const hre = require('hardhat');

async function main() {

  const Tide = await hre.ethers.getContractFactory(
    'Tide',
  );

  const name = "PGTide"
  const symbol = "PGT"
  const bountyContract = "0xF90DEe78e4d24a0CD3845A7FA99c6d797d1e435A";

  const tide = await Tide.deploy(
    name,
    symbol,
    bountyContract
  );

  await tide.waitForDeployment();

  console.log(`tide deployed to ${await tide.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});