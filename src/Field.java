public class Field {

    public String name;
    public Types type;
    public Integer length;
    public Integer scale;

    private enum Types {
        DECIMAL,
        TIMESTMP,
        INTEGER,
        VARCHAR,
        DATE,
        CHAR
    }
    public Field(String line) {
        String[] fields = line.split("\\|");
        if (fields[1].contains("COLNO")) {
            name = "FIRSTLINE";
            return;
        }
        name =fields [2].trim();
        type = Types.valueOf(fields[4].trim());
        length = Integer.parseInt(fields[5].trim());
        scale = Integer.parseInt(fields [6].trim());
    }

    public boolean isFirstLine () {
        return name.equals("FIRSTLINE");
    }

    public String cast() {
        StringBuilder castedString = new StringBuilder();
        if (type.equals(Types.CHAR) || type.equals(Types.VARCHAR)) {
            castedString.append(name);
            return castedString.toString();
        }
        if (type.equals(Types.INTEGER)) {
            castedString.append("cast (").append(name).append(" as bigint) as ").append(name);
        }
        if (type.equals(Types.DECIMAL)) {
            castedString.append("cast (").append(name).append(String.format(" as decimal(%d,%d)) as ", length, scale)).append(name);
        }
        if (type.equals(Types.TIMESTMP) || type.equals(Types.DATE)) {
            castedString.append("to_date (").append(name).append(") as ").append(name);
        }
        return castedString.toString();
    }
}
