// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.8.2/token/ERC20/extensions/draft-ERC20Permit.sol";

contract VisualNewToken is ERC20, ERC20Permit {
    constructor() ERC20("VisualNew Token", "VNT") ERC20Permit("VisualNew Token") {
        _mint(msg.sender, 21000000 * 10 ** decimals());
    }
    function decimals() public view virtual override returns (uint8) { return 8; }
}