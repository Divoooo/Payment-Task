using System.Collections.Generic;

public class FormUrlEncodedContent
{
    private Dictionary<string, string> values;

    public FormUrlEncodedContent(Dictionary<string, string> values)
    {
        this.values = values;
    }
}