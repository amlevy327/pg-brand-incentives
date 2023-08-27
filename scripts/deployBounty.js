const hre = require('hardhat');

async function main() {

  const Bounty = await hre.ethers.getContractFactory(
    'Bounty',
  );

  const name = "PGBounty"
  const symbol = "PGB"

  const bounty = await Bounty.deploy(
    name,
    symbol
  );

  await bounty.waitForDeployment();

  console.log(`bounty deployed to ${await bounty.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});