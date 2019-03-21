import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FileQueriesGenerator {

    private static HashMap<String,String> tablesToPartition = new HashMap<String,String>(){{
       put("UNI_CRASH_ACC_OCTO","DATA_ORA_SINISTRO");
       put("UNI_CRASH_GIROSCOPIO_OCTO","DATA_ORA_SINISTRO");
       put("UNI_CRASH_POSIZIONE_OCTO","DATA_ORA_SINISTRO");
       put("UNI_CRASH_ACC","DATA_ORA_SINISTRO");
       put("UNI_CRASH_POSIZIONE","DATA_ORA_SINISTRO");
       put("UNI_CRASH_GIROSCOPIO","DATA_ORA_SINISTRO");
       put("UNI_VIAGGIO_POSIZIONE","DATA_ORA_SINISTRO");
       put("UNI_VIAGGIO","DATA_ORA_SINISTRO");
    }};

    public static void generateQueriesFiles(Map<String, List<Field>> tableWithFields) throws IOException {
        generateExternalQueries (tableWithFields);
        generateParsingViewQueries (tableWithFields, false);
        //generateParsingViewQueries (tableWithFields, true);
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
            if (tablesToPartition.get(table.getKey())!= null) {
                fileText.append("DATA_ORA_SINISTRO string,\n");
            }
            String finalQuery = fileText.substring(0,fileText.length() -2);
            Files.write(file, finalQuery.getBytes(), StandardOpenOption.APPEND, StandardOpenOption.CREATE);
            fileText = new StringBuilder();
        }

    }

    private static void generateParsingViewQueries(Map<String, List<Field>> tableWithFields, Boolean withoutAdditionalFields) throws IOException {

        StringBuilder fileText = new StringBuilder();
        for (Map.Entry<String,List<Field>> table : tableWithFields.entrySet()){
            Path file;
            if (!withoutAdditionalFields) {
                file = Paths.get("landing/" + table.getKey() + "__pv.hql");
            }
            else {
                file = Paths.get("workspace/" + table.getKey() + "__creation_dedup.hql");
            }
            for (Field field : table.getValue()) {
                if (field.isFirstLine()) continue;
                String casted = field.cast();
                fileText.append(casted).append(" ,\n");
            }
            String field = tablesToPartition.get(table.getKey());
            String finalQuery;
            if (field != null && !withoutAdditionalFields) {
                fileText.append("DATA_ORA_SINISTRO,\n");

                String split = "split(%s,'-')[0] as anno, \n" +
                        "weekofyear(%s) as week";
                fileText.append(String.format(split, field, field, field));
                finalQuery = fileText.toString();
            } else {
                finalQuery  = fileText.substring(0, fileText.length() -2 );
            }

            Files.write(file, finalQuery.getBytes());
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
            String finalBody = bodyPart.toString();

            if (tablesToPartition.get(table.getKey())!= null) {
                fileText.append("set hive.exec.dynamic.partition.mode=nonstrict;\nINSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) \n" +
                        "SELECT\n");
                finalBody += "dedup.data_ora_sinistro,\ndedup.anno, dedup.week,\n";
            } else {
                fileText.append("INSERT OVERWRITE TABLE %s.%s \n" +
                        "SELECT\n");
            }

            finalBody = finalBody.substring(0, finalBody.length() -2);

            fileText.append(finalBody);
            fileText.append("\nFROM (\n" +
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
            Files.write(file, fileText.toString().getBytes());
            bodyPart = new StringBuilder();
            fileText = new StringBuilder();
        }
    }


}
