
const hre = require("hardhat");

async function main() {
  
  const MYERC721 = await hre.ethers.getContractFactory("MYERC721");
  const mYERC721 = await MYERC721.deploy();

  await mYERC721.deployed();

  console.log("MYERC721 deployed to:", mYERC721.address);
  const tx = await mYERC721.mint("0x29B574ddAD30F1b5EB8907f2BC04bBf61761c1a2");
  await tx.wait();

  const owner = await mYERC721.ownerOf(0);
  console.log(owner);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
