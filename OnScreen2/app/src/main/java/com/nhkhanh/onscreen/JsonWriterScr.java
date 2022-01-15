package com.nhkhanh.onscreen;

import com.nhkhanh.onscreen.Data;
import java.io.IOException;
import java.io.Writer;
import android.util.JsonWriter;

public class JsonWriterScr {
    public static void writeJsonStream(Writer output, Data data) throws IOException {
        JsonWriter jsonWriterScr = new JsonWriter(output);

        jsonWriterScr.beginObject();// begin root

        jsonWriterScr.name("name").value(data.getName());
        jsonWriterScr.name("number").value(data.getNumber());

        // end root
        jsonWriterScr.endObject();
    }



    public static Data createData() {
        Data data = new Data("number",1);

        data.setName("number");
        data.setNumber(1);

        return data;
    }
}
