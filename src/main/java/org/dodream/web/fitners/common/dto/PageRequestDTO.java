package org.dodream.web.fitners.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PageRequestDTO {

    @Builder.Default
    private int page = 1;

    @Builder.Default
    private int size = 10;

    private String type;
    private String keyword;

    public int getSkip() {
        return (page - 1) * size;
    }

    public String getType() {
        if (type == null || type.trim().length() == 0) {
            return null;
        }
        return this.type;
    }

    public String[] getArr() {
        return type == null? new String[]{} : type.split("");
    }


}
