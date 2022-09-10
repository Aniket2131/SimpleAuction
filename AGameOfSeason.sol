//SPDX-License-Identifier: MIT

pragma solidity^ 0.8.0;

contract seasonGame {

    address public god;
    
    bool public IsItRaining = true; //Initiating that it is raining outside.
    bool public DoYouHaveUmbrella = true; //Initiating that You have an umbrella with you. 
    bool public IsItSunny = false; //Its not sunny outside.

    constructor(address _god) {
        god = _god;
    }

    modifier onlyGod() {
        require(msg.sender == god, "You are not a God!");
        _;
    }

    //Season Changing machine 
    //Which is changing rainy season into summer season.
    function seasonChanger() public onlyGod() {

        IsItRaining = !IsItRaining;
        DoYouHaveUmbrella = !DoYouHaveUmbrella;
        IsItSunny = !IsItSunny; 
    }

    //function says whether you should bring your umbrella or not
    function BringUmbrella() public {
        if(IsItRaining) {
            DoYouHaveUmbrella = true;
        } else {
            revert("You don't need to bring an umbrella!");
        }
    }

}