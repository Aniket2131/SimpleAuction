<!-- Etherscan url -->

<!-- https://goerli.etherscan.io/tx/0x7205e386fcec5a68064987a54fb0c36933b7cc560ebaec493925d8ba0bdaee20 -->

steps for Auction contract

1.  The one who started the auction is named as Auctioneer in line 7
2.  Deciding how many minutes or block till the auction will remain on. at line 8
3.  passing this two arguments before starting a auction, which is done using a constructor as shown in line 26
4.  some of the global variables and its use:
    HighestBidder - for storing the updated bidder
    HiggestBId - for storing the updated bid amount
    auctionEnded - which let the user now the current state of the auction
    PreviousBIdder - to keep list of all the bidder and there amount untill end
5.  Bid function to let user bid after the Auction get started. There are few criteria which user need to have to bid in this auction. they are as follows:
    1. bidder must not be the creator of the auction
    2. bid will only be taken till the end time mentioned at the starting of the contract
    3. Your bid must be more than the previous bid
6.  Now when bidder bid a amount, a event is going to fire which store those details in the variables on the top.
7.  end auction fuction can only be called by the creator of the auction as mention in line 62 of the code, which is written using modifiers.
    It can be called at any time. As the auction ended the auction will recive the higgestBid amount and after that one more event is fired which will announce the winner name and the highest bid as shown line 78 of the code
8.  now the others bidder can withdraw there money back from the contract by using the widthdraw function. line - 47
    There are some condition which a withdrawer need to met to withdraw its amount back:

    1. You must have taken part in the auction - line: 52
    2. YOu can not withdraw your amount before the end of the auction. line: 49
    3. Person must have to withdraw its whole amount at one go.

       At the end after the withdrawal amount the previos bidder will again set to 0. - line: 50.
