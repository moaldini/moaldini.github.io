package org.example;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDateTag extends SimpleTagSupport {
    private String color;
    private String size;

    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        SimpleDateFormat currentDate = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
        out.write(String.format("<span style='color:%s;font-size:%s'>%s</span>",color,size,currentDate.format(new Date())));
    }
    public void setColor(String color) {
        this.color = color;
    }

    public void setSize(String size) {
        this.size = size;
    }
}
