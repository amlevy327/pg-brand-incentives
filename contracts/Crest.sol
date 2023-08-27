// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./IBrand.sol";

contract Crest is ERC721Enumerable  {
  using Counters for Counters.Counter;
  Counters.Counter private _nextTokenId;

  uint256 constant PURCHASES_FOR_TIDE_PROMO = 3; // promo tide mint every 3 purchases
  address public immutable tideAddress; // deployed tide contract address

  mapping(address => uint256) private _totalPurchases;

  event PurchaseAdded(address indexed owner, uint256 totalPurchases);

  constructor(
    string memory name_,
    string memory symbol_,
    address tideAddress_
  ) ERC721(name_, symbol_)
  {
    tideAddress = tideAddress_;
    // start at token id = 1
    _nextTokenId.increment();
  }

  /**
  ////////////////////////////////////////////////////
  // External Functions 
  ///////////////////////////////////////////////////
  */

  // Add purchases to mapping
  // Called by P&G: needs access control
  function addPurchase(address wallet_) external {
    _totalPurchases[wallet_] += 1;
    emit PurchaseAdded(wallet_, _totalPurchases[wallet_]);
    _checkMintOherBrandPromo(wallet_);
  }

  // Mint promo NFT
  // Called by other brand contracts: needs access control
  function mintPromo(address wallet_) external {
    uint256 tokenId = _nextTokenId.current();
    _mint(wallet_, tokenId);
    _nextTokenId.increment();
  }

  /**
  ////////////////////////////////////////////////////
  // Internal Functions 
  ///////////////////////////////////////////////////
  */

  // Mint promo for other brnad
  function _checkMintOherBrandPromo(address wallet_) internal {
    if (_totalPurchases[wallet_] % PURCHASES_FOR_TIDE_PROMO == 0) {
      IBrand(tideAddress).mintPromo(wallet_);
    }
  }

  /**
  ////////////////////////////////////////////////////
  // View only functions
  ///////////////////////////////////////////////////
  */

  function totalPurchases(address wallet) external view returns (uint256) {
    return _totalPurchases[wallet];
  }
}