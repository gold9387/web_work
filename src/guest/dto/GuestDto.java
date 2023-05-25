package guest.dto;

public class GuestDto {
    private int num;
    private String writer;
    private String content;
    private String pwd;
    private String regDate;

    public GuestDto() {
    }

    public GuestDto(int num, String writer, String content, String pwd, String regDate) {
        this.num = num;
        this.writer = writer;
        this.content = content;
        this.pwd = pwd;
        this.regDate = regDate;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }
}
