{
  "title": {
    "title": "<@safe_include "starboard_post_created_title"/>"
  },
  <#include "abstracto_color">,
  "description": "<@safe_include "starboard_post_created_description"/>",
  "fields": [
      {
        "name": "<@safe_include "starboard_post_notification_field_starboard_message"/>",
        <#if starboardMessage??>
            "value": "[<@safe_include "starboard_post_notification_field_starboard_message_jump"/>](${starboardMessage.jumpUrl})"
        <#else>
            "value": "${post.starboardMessageId?c}"
        </#if>
      },
      {
        "name": "<@safe_include "starboard_post_notification_field_starred_message"/>",
        <#if starredMessage??>
            "value": "[<@safe_include "starboard_post_notification_field_starboard_message_jump"/>](${starredMessage.jumpUrl})"
        <#else>
            "value": "${post.postMessageId?c}"
        </#if>
      },
      {
        "name": "<@safe_include "starboard_post_notification_field_starred_user"/>",
        <#if starredMember??>
            "value": "${starredMember.asMention}"
        <#else>
            "value": "${starredUserId?c} (<@safe_include "user_left_server"/>)"
        </#if>
      },
      {
        "name": "<@safe_include "starboard_post_notification_field_starring_user"/>",
        <#if starringMember??>
            "value": "${starringMember.asMention}"
        <#else>
            "value": "${starringUserId?c} (<@safe_include "user_left_server"/>)"
        </#if>
      }
  ]
}