# solidity_learning

**任何solidity的學習都會放在此檔案**

# Variable.sol
**認識solidity資料型態與語法的合約**
### modifier
1. pure 不能改變與存取state
2. view 不能改變state
3. payable 允許傳送乙太幣

# MultiSend.sol [](./MultiSend.sol)
[MultiSend超連結](https://github.com/oscarchen510/solidity_learning/blob/main/MultiSend.sol)

這是一個允許單次傳送多筆交易的合約，學習內容如下

1. address public owner; //儲存合約擁有者地址 Stores the contract owner's address
2. constructor() { owner = msg.sender;} // Sets deployer as owner
> constructor函數為每當合約被創建，則會執行裡面內容

3. modifier onlyOwner() {

   require(msg.sender == owner, "Only the owner can call this function");  // 只有傳送者符合擁有者方可傳送 Custom modifier for owner-only functions

   _; 

}

> _; // 先執行 _; 前的程式碼，然後執行有 _; 的函數，最後才是 _; 之後的程式碼
