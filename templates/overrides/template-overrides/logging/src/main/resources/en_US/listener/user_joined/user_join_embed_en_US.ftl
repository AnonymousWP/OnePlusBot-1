{
<#assign user>${member.user.name}#${member.user.discriminator} (${member.asMention}: ${member.id})</#assign>
  "additionalMessage": "<@safe_include "user_joined_text"/>"
}