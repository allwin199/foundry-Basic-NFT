// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        // strings are array of bytes in solidity
        // we are comparing 2 arrays whether they are similar
        // since arrays are referential and not primitive, comparing 2 arrays will always result in false
        // [] != []
        // but we can covert string into their hash and compare the hashes
        // first we have to convert strings into bytes32 and they we can get the hash output
        // assert(expectedName == actualName);
        bytes memory encodedExpectedName = abi.encodePacked(expectedName);
        bytes memory encodedActualName = abi.encodePacked(actualName);
        assert(keccak256(encodedActualName) == keccak256(encodedExpectedName));
    }

    function testSymbolIsCorrect() public view {
        string memory expectedSymbol = "DOG";
        string memory actualSymbol = basicNft.symbol();
        assert(
            keccak256(abi.encodePacked(expectedSymbol)) ==
                keccak256(abi.encodePacked(actualSymbol))
        );
    }

    modifier nftMinted() {
        vm.prank(USER);
        basicNft.mintNft(PUG);
        _;
    }

    function testCanMintAndHaveBalance() public nftMinted {
        assert(basicNft.balanceOf(USER) == 1);
        assert(
            keccak256(abi.encodePacked(basicNft.tokenURI(0))) ==
                keccak256(abi.encodePacked(PUG))
        );
    }

    function testTokenIdIncrements() public nftMinted {
        assert(basicNft.getTokenCounter() == 1);
    }
}
