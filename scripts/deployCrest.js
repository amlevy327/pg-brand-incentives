const hre = require('hardhat');

async function main() {

  const Crest = await hre.ethers.getContractFactory(
    'Crest',
  );

  const name = "PGCrest"
  const symbol = "PGC"
  const tideContract = "0x3dcA78F94Ef11ae061Fc5C1743FFF28D7e187404";

  const crest = await Crest.deploy(
    name,
    symbol,
    tideContract
  );

  await crest.waitForDeployment();

  console.log(`crest deployed to ${await crest.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});