import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.Map;

public class FileQueriesGenerator {


    public static void generateQueriesFiles(Map<String, List<Field>> tableWithFields) throws IOException {
        generateExternalQueries (tableWithFields);
        generateParsingViewQueries (tableWithFields);
        generateWorkingLayerQueries(tableWithFields);
    }


    private static void generateExternalQueries(Map<String, List<Field>> tableWithFields) throws IOException {
        StringBuilder fileText = new StringBuilder();
        for (Map.Entry<String,List<Field>> table : tableWithFields.entrySet()){
            Path file = Paths.get("landing/" +  table.getKey() + "__ext.txt");
            for (Field field : table.getValue()) {
                if (field.isFirstLine()) continue;
                fileText.append(field.name).append(" string,\n");
            }
            String finalQuery = fileText.substring(0,fileText.length() -2);
            Files.write(file, finalQuery.getBytes(), StandardOpenOption.APPEND, StandardOpenOption.CREATE);
            fileText = new StringBuilder();
        }

    }

    private static void generateParsingViewQueries(Map<String, List<Field>> tableWithFields) throws IOException {

        StringBuilder fileText = new StringBuilder();
        for (Map.Entry<String,List<Field>> table : tableWithFields.entrySet()){
            Path file = Paths.get("landing/" + table.getKey() + "__pv.hql");
            for (Field field : table.getValue()) {
                if (field.isFirstLine()) continue;
                String casted = field.cast();
                fileText.append(casted).append(" ,\n");
            }
            String finalQuery = fileText.substring(0,fileText.length() -2);
            Files.write(file, finalQuery.getBytes(), StandardOpenOption.APPEND, StandardOpenOption.CREATE);
            fileText = new StringBuilder();
        }
    }

    private static void generateWorkingLayerQueries(Map<String, List<Field>> tableWithFields) throws IOException {
        StringBuilder fileText = new StringBuilder();
        StringBuilder bodyPart = new StringBuilder();
        for (Map.Entry<String,List<Field>> table : tableWithFields.entrySet()){
            Path file = Paths.get("workspace/" + table.getKey() + "__dedup.hql");
            for (Field field : table.getValue()) {
                if (field.isFirstLine()) continue;
                bodyPart.append("dedup.").append(field.name).append(",\n");
            }
            String finalBody = bodyPart.substring(0, bodyPart.length() -2) + " \n";
            fileText.append("INSERT OVERWRITE TABLE %s.%s\n" +
                    "SELECT\n");
            fileText.append(finalBody);
            fileText.append("FROM (\n" +
                    "    SELECT *\n" +
                    "    FROM\n" +
                    "        %s.%s\n" +
                    "    UNION ALL\n" +
                    "    SELECT\n" +
                    "        *\n" +
                    "    FROM\n" +
                    "        %s.%s ) as dedup\n" +
                    "GROUP BY\n");
            fileText.append(finalBody);
            String finalQuery = fileText.substring(0,fileText.length() -2);
            Files.write(file, finalQuery.getBytes(), StandardOpenOption.APPEND, StandardOpenOption.CREATE);
            bodyPart = new StringBuilder();
            fileText = new StringBuilder();
        }
    }


}
