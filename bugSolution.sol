function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");

  // Emit the event before updating the owner
  emit OwnershipTransferred(_owner, newOwner);

  // Update the owner variable after the event is emitted and transaction is confirmed.
  _owner = newOwner;
}