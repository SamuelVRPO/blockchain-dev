from brownie import accounts


def deploy_simple_storage():
    # account = accounts[0]
    # print(account)
    account = accounts.load("testing-account")


def main():
    deploy_simple_storage()

def fibonacci
