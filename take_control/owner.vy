# @version ^0.3.3


owner: public(address)


@external
def __init__():
    self.owner = msg.sender


@external
def setOwner(owner: address):
    self.owner = owner
