# Upload File in JSP

## Introduzione
L'upload di file è una funzionalità comune nelle applicazioni web. JSP fornisce diversi metodi per gestire l'upload di file in modo sicuro ed efficiente.

## Configurazione Form

### Form HTML
```html
<form action="upload.jsp" method="POST" enctype="multipart/form-data">
    <input type="file" name="file" accept=".pdf,.doc,.docx">
    <input type="submit" value="Carica">
</form>
```

### Attributi Importanti
- **enctype**: Deve essere "multipart/form-data"
- **accept**: Tipi di file permessi
- **multiple**: Per upload multipli

## Apache Commons FileUpload

### Configurazione
```jsp
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
```

### Processamento Base
```jsp
<%
    if(ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        
        List<FileItem> items = upload.parseRequest(request);
        for(FileItem item : items) {
            if(!item.isFormField()) {
                String fileName = item.getName();
                item.write(new File("/uploads/" + fileName));
            }
        }
    }
%>
```

## Validazione File

### Controllo Dimensione
```jsp
<%
    upload.setSizeMax(1024 * 1024 * 5); // 5MB max
    
    try {
        List<FileItem> items = upload.parseRequest(request);
    } catch(SizeLimitExceededException e) {
        out.println("File troppo grande");
    }
%>
```

### Verifica Tipo File
```jsp
<%
    String fileName = item.getName();
    String contentType = item.getContentType();
    
    if(!contentType.startsWith("image/")) {
        throw new Exception("Solo immagini permesse");
    }
%>
```

## Salvataggio File

### Gestione Directory
```jsp
<%
    String uploadPath = getServletContext().getRealPath("/uploads");
    File uploadDir = new File(uploadPath);
    if(!uploadDir.exists()) {
        uploadDir.mkdir();
    }
%>
```

### Nome File Sicuro
```jsp
<%
    String originalFileName = item.getName();
    String fileExt = originalFileName.substring(
        originalFileName.lastIndexOf("."));
    String newFileName = UUID.randomUUID().toString() + fileExt;
%>
```

## Progress Bar

### JavaScript
```javascript
function updateProgress(evt) {
    if (evt.lengthComputable) {
        var percentComplete = (evt.loaded / evt.total) * 100;
        document.getElementById('progress').value = percentComplete;
    }
}
```

### HTML5
```html
<progress id="progress" value="0" max="100"></progress>
```

## Best Practices

1. **Sicurezza**
   - Validare tipo file
   - Limitare dimensione
   - Rinominare file
   - Controllare permessi directory

2. **Performance**
   - Utilizzare buffer appropriati
   - Implementare upload asincrono
   - Ottimizzare dimensioni immagini

3. **User Experience**
   - Mostrare progress bar
   - Fornire feedback errori
   - Permettere upload multipli

## Esercizi

1. Sistema Gallery
   - Upload immagini multiple
   - Generazione thumbnail
   - Visualizzazione gallery

2. Gestore Documenti
   - Upload file PDF/DOC
   - Organizzazione cartelle
   - Preview documenti

3. Upload Avanzato
   - Drag and drop
   - Progress bar
   - Validazione client-side

## Quiz

1. Come si configura la dimensione massima del file?
2. Quali sono i controlli di sicurezza necessari?
3. Come implementare una progress bar?

## Conclusione
Un sistema di upload file robusto richiede attenzione alla sicurezza, performance e user experience. L'implementazione corretta di tutte queste componenti garantisce una funzionalità affidabile e sicura.