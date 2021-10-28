from brownie import FundMe
from scripts.helpful_scripts import gather_account

def fund():
    fund_me = FundMe[-1]
    account = gather_account()
    entrance_fee = fund_me.getEntranceFee()
    print(entrance_fee)
    print(f"The current entrey fee is {entrance_fee}")
    print("Funding")
    fund_me.fund({"from": account, "value": entrance_fee})

def withdraw():
    fund_me = FundMe[-1]
    account = gather_account()
    fund_me.withdraw({"from": account})

def main():
    fund()
    withdraw()