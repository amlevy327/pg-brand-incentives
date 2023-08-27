// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

interface IBrand {

  event PurchaseAdded(address indexed owner, uint256 totalPurchases);

  function addPurchase(address wallet_) external;

  function mintPromo(address wallet) external;

  function totalPurchases(address wallet) external view returns (uint256);
}