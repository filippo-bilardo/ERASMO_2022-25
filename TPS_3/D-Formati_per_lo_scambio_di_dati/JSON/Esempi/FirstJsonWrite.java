/**
 * @(#)FirstJson.java
 * 
 * Example of JSON encoding in Java.
 * 
 * javac -cp .:json-simple-1.1.1.jar FirstJsonWrite.java; java -cp .:json-simple-1.1.1.jar FirstJsonWrite
 * 
 * @see https://www.geeksforgeeks.org/encoding-decoding-json-java/
 * @see https://www.geeksforgeeks.org/parse-json-java/
 * 
 */
import java.io.FileWriter;
import java.io.IOException;
import java.rmi.AccessException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class FirstJsonWrite {
	public static void main(String[] args) throws IOException {
		String nomeFile = "FirstJson.json";
		JSONObject mioOggetto = new JSONObject();
		mioOggetto.put("cognome", "Verdi");
		mioOggetto.put("nome", "Pino");
		mioOggetto.put("eta", 40);
		JSONArray elenco = new JSONArray();
		elenco.add("lingua 1: cinese");
		elenco.add("lingua 2: russo");
		elenco.add("lingua 3: turco");
		mioOggetto.put("lingue", elenco);
		System.out.print(mioOggetto);
		scriviFileJSON(nomeFile, mioOggetto);
	}

	public static void scriviFileJSON(String nomeFile, JSONObject mioOggetto) throws IOException {
		try (FileWriter mioFile = new FileWriter(nomeFile)) {
			mioFile.write(mioOggetto.toJSONString());
		} catch (AccessException e) {
			e.printStackTrace();
		}
	}
}