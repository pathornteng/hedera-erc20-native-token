// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.11;

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

contract ERC20 {
    address public tokenAddress;
    IERC20 HTSToken;
    address contractOwner;

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
        contractOwner = msg.sender;
        HTSToken = IERC20(tokenAddress);
    }

    modifier onlyOwner() {
        require(msg.sender == contractOwner);
        _;
    }

    function balanceOf(address account) external view returns (uint256) {
        return HTSToken.balanceOf(account);
    }

    function totalSupply() external view returns (uint256) {
        return HTSToken.totalSupply();
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        return HTSToken.transfer(to, amount);
    }

    function allowance(address owner, address spender)
        external
        view
        returns (uint256)
    {
        return HTSToken.allowance(owner, spender);
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        return HTSToken.approve(spender, amount);
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool) {
        return HTSToken.transferFrom(from, to, amount);
    }
}