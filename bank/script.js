"use strict";

var bankingAccount = function() {
    var accountInfoList = [];
    function Account(name, deposit) {
        this.name = name;
        this.deposit = deposit;
    }

    var createAccount = function () {
        let name = document.getElementById("name");
        let deposite = document.getElementById("deposit");

        if(name.value.trim() == "") {
            alert("Please enter value in name!");
            name.focus();
            return false;
        }
        if(deposite.value.trim() == "") {
            alert("Please enter value in Deposite!");
            deposite.focus();
            return false;
        }

        let newAccount = new Account(name.value, deposit.value);
        accountInfoList.push(newAccount);
        showAccountInfo(accountInfoList);
    };

    function showAccountInfo(accountlist) {
        let result = "";
        for (var account of accountlist) {
            result += "Account name: " + account.name + " Balance: " + account.deposit + "\n";
        }
        document.getElementById("result").value = result;
    }

    document.getElementById("btn").onclick = createAccount;
};
window.onload = bankingAccount;