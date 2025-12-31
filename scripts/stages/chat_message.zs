import mods.gamestages.events.GameStageAdded;

// TODO: Messages should use lang keys
// Send a message when the player recieves certain stages
events.register<GameStageAdded>((event) => {
  var message: string = "";

  switch event.stage {
    case "brown":
      message = "Brown has been added to your pallette";
      break;
    case "black":
      message = "Black has been added to your pallette";
      break;
  }

  if !message.empty {
    event.entity.sendMessage(message);
  }
});
