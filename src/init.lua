--!strict

local packages = script.Parent.roblox_packages;
local React = require(packages.react);
local IClient = require(packages.client_types);
local IConversation = require(packages.conversation_types);
local IDialogue = require(packages.dialogue_types);

type Dialogue = IDialogue.Dialogue;
type Client = IClient.Client;
type Conversation = IConversation.Conversation;

export type ThemeProperties = {
  client: Client;
  conversation: Conversation;
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
