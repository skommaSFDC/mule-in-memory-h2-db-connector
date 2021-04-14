# mule-in-memory-h2-db-connector
MuleSoft and in-memory DB H2 integration

__Note:__ Database Config in the project shows __${app.home}/h2db/mule__ as the path for the file. Before pointing to this path, H2 db file __mule.mv.db__ needs to be created locally first. Follow these steps.

1) Create a folder on your local drive with the name __h2db__. Say for instance path to it is: __C:/h2db__
2) Modify the URL in Database Config (H2_Db_Config in global.xml) to: __jdbc:h2:file:C:/h2db/mule__  where mule is the actual DB filename (like instance name)
3) Run the project, and execute __/ddl__ endpoint. Upon successful run, it should create a file __mule.mv.db__ within the folder __C:/h2db__
4) In your proect workspace, under __/src/main/resources__, create a folder with the name __h2db__
5) Copy the __mule.mv.db__ file form __C:/h2db__ to the folder __/src/main/resources/h2db__
6) Then you are ready to modify the URL in Database Config (H2_Db_Config in global.xml) back to: __${app.home}/h2db/mule__
7) Run the Munit tests to make sure all tests pass
