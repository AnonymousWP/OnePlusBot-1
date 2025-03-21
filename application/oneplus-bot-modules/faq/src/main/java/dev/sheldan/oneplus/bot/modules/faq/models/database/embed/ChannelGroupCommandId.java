package dev.sheldan.oneplus.bot.modules.faq.models.database.embed;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class ChannelGroupCommandId implements Serializable {
    @Column(name = "channel_group_id")
    private Long channelGroupId;
    @Column(name = "command_id")
    private Long commandId;
}
