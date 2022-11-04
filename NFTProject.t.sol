// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/Vm.sol";

import {NFTProject} from "../src/NFTProject.sol";
contract NFTProjectTest is Test {

 NFTProject private nftProject;
 function setUp() public {
 nftProject = new NFTProject();
 }
 
 function testMint() public {
        assertEq(nftProject.totalSupply(), 7);
        nftProject.mint();
    }
}