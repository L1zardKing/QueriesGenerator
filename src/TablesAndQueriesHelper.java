import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class TablesAndQueriesHelper {

    private static List<TableWithQuery> tableWithQuery;
    private static String EMPTY_LINE = "^[\\n, ]*$";
    private static String END_QUERY = ".*[;]$";
    private static String PATH_QUERY_FILE = "TablesStructure";

    static void loadData() throws IOException {
        tableWithQuery = new ArrayList<>();
        List<String> fileLines = getNonEmptyLines();
        Map <String, List<Field>> tableWithFields = retrieveTablesAndFields(fileLines);
        FileQueriesGenerator.generateQueriesFiles(tableWithFields);
    }

    private static Map<String, List<Field>> retrieveTablesAndFields(List<String> fileLines) {
        List<String> fields = new ArrayList<>();
        String tableName = null;
        Map<String,List<Field>> tableWithFields = new HashMap<String, List<Field>>();
        for (String line : fileLines) {
            if (line.contains("|") && tableName != null) {
                tableWithFields.get(tableName).add(new Field(line));
            } else {
                tableName = line;
                tableWithFields.put(tableName, new LinkedList<>());
            }
        }
        return tableWithFields;
    }

    private static List<String> getNonEmptyLines() throws IOException {
        Stream<String> lines = Files.lines(Paths.get(PATH_QUERY_FILE),
                StandardCharsets.UTF_8);
        List<String> parsedFile = lines.filter(line -> {
            Pattern pattern = Pattern.compile(line);
            Matcher matcher = pattern.matcher(EMPTY_LINE);
            return !matcher.matches() && !line.equals("") && !line.contains("----------------");
        }).collect(Collectors.toList());
        lines.close();
        return parsedFile;
    }

}
