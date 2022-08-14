# @version ^0.3.3


owner: public(address)


@external
@payable
def __init__():
    self.owner = msg.sender


@external
@payable
def __default__():
    pass


@external
def withdraw():
    assert msg.sender == self.owner, "not owner"
    send(self.owner, self.balance)


@external
def setOwner(owner: address):
    self.owner = owner
