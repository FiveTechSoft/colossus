Colossus 6.0



Esta aplicaci�n requiere Borland C, Harbour y FivewinHarbour para compilarse. Yo uso FWH 12.04 y la versi�n correspondiente de Harbour empaquetada por Fivetech. Para compilar el programa hay que hacer lo siguiente:

* Ejecutar brc.bat que crea el fichero de recursos colossus.res

* Ejecutar make cls1204 que compila los fuentes y crea el ejecutable

.

El archivo de compilaci�n es cls1204.mak y el archivo de enlazado es cls1204.bc. Las rutas de los compiladores y librerias que uso son las siguientes:

* HBDIR=c:\fivetech\hb1206

* BCDIR=c:\bcc582

* FWDIR=c:\fivetech\fwh1204



Mi editor es HippoEdit (http://www.hipoedit.com) y el archivo colossus.heprj es el archivo de proyecto para ese editor.

 La estructura de carpetas de la aplicaci�n es la siguiente:



\ contiene los archivos de compilaci�n y enlazado, as� como las DLL necesarias para ejecutar el programa.
---\ch contiene los archivos de preprocesador de las librerias que utilizo
---\obj carpeta donde se depositan los objetos de la compilaci�n
---\prg carpeta con los fuentes. No se incluyen report.prg, rpreview.prg ni image2pdf.prg por ser propietarios.
---\res carpeta de recursos. Editar siempre cls.rc puesto que colossus.rc se construye con brc.bat
---\lib contiene una copia de librerias no incluidas en FWH y que utilizo en la aplicaci�n.

Para cualquier consulta escribirme a joseluis@alanit.com

Novelda, abril de 2014.
Jos� Luis S�nchez Navarro

