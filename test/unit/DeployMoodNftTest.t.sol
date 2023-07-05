// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToImageURI() public view {
        // string
        //     memory expectedURI = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj48dGV4dCB4PSIwIiB5PSIxNSIgZmlsbD0iYmxhY2siPkhpIGZyb20gRXhhbXBsZSBTVkchPC90ZXh0Pjwvc3ZnPgoKPCEtLSBUbyBnZXQgdGhlIGJhc2U2NCAgLS0+CjwhLS0gYmFzZTY0IC1pIGV4YW1wbGUuc3ZnIC0tPgo8IS0tCiAgICAgVG9rZW4gVXJpIHNob3VsZCBiZSBpbiBzdHJpbmcsIGJ1dCB3ZSBoYXZlIHN2ZyBpbWcgd2hpY2ggaXMgbm90IHN0cmluZwogICAgc28gd2UgaGF2ZSB0byBjb252ZXJ0IHRoaXMgdG8gYSBzdHJpbmcKIC0tPgogPCEtLSBkYXRhOiBpbWFnZS9zdmcreG1sO2Jhc2U2NCwgLS0+CiA8IS0tIGFkZCB0aGUgYWJvdmUgbGluZSB0byBpbmRpY2F0ZSB0aGUgYnJvd3NlciBpdCBpcyBhIHN2ZyBpbWFnZSAtLT4KIDwhLS0gUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIZHBaSFJvUFNJMU1EQWlJR2hsYVdkb2REMGlOVEF3SWo0S0lDQWdJRHgwWlhoMElIZzlJakFpSUhrOUlqRTFJaUJtYVd4c1BTSmliR0ZqYXlJK1NHa2dXblZ5YVdOb0lUd3ZkR1Y0ZEQ0S1BDOXpkbWMrQ2dvOElTMHRJR0poYzJVMk5DQXRhU0JsZUdGdGNHeGxMbk4yWnpzZ0xTMCsgLS0+CgogPCEtLSBkYXRhOiBpbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhkcFpIUm9QU0kxTURBaUlHaGxhV2RvZEQwaU5UQXdJajRLSUNBZ0lEeDBaWGgwSUhnOUlqQWlJSGs5SWpFMUlpQm1hV3hzUFNKaWJHRmpheUkrU0drZ1duVnlhV05vSVR3dmRHVjRkRDRLUEM5emRtYytDZ284SVMwdElHSmhjMlUyTkNBdGFTQmxlR0Z0Y0d4bExuTjJaenNnTFMwKyAtLT4=";
        // string
        //     memory svg = '<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500"><text x="0" y="15" fill="black">Hi from Example SVG!</text></svg>';
        // string memory actualURI = deployer.svgToImageURI(svg);
        // assert(
        //     keccak256(abi.encodePacked(actualURI)) ==
        //         keccak256(abi.encodePacked(expectedURI))
        // );
    }
}
