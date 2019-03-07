public class TableWithQuery {

    private String tableName;
    private String query;

    TableWithQuery(String tableName, String query) {
        this.tableName = tableName;
        this.query = query;
    }

    public String getTableName() {
        return tableName;
    }

    public String getQuery() {
        return query;
    }

}
