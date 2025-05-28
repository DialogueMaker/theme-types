--!strict

local React = require("@pkg/react");
local IDialogueClient = require("@pkg/dialogue_client_types");
local IDialogueServer = require("@pkg/dialogue_server_types");
local IDialogue = require("@pkg/dialogue_types");

type Dialogue = IDialogue.Dialogue;
type DialogueClient = IDialogueClient.DialogueClient;
type DialogueServer = IDialogueServer.DialogueServer;

export type ThemeProperties = {
  dialogueClient: DialogueClient;
  dialogueServer: DialogueServer;
  dialogue: Dialogue;
  npc: Model;
  onComplete: (newParent: Dialogue?) -> ();
  onTimeout: () -> ();
}

export type TextComponentProperties = {
  text: string;
  skipPageSignal: RBXScriptSignal?;
  letterDelay: number;
  layoutOrder: number;
  textSize: number;
  onComplete: () -> ();
  --[[
     TODO: Use ref instead of ref2. Right now, ref is a reserved property. (https://github.com/jsdotlua/react-lua/issues/46) 
  ]]
  ref2: React.Ref<TextLabel>?; 
}

return {};
