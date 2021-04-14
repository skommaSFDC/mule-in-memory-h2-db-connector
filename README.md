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

You can view the actual H2 DB in a web console by running this java command from the folder having the *h2-1.4.200.jar* :  __java -cp h2-1.4.200.jar org.h2.tools.Server -web__  (jar file can be found in Project Libraries of the workspace). It will open H2 Console like shown below:

![image](https://user-images.githubusercontent.com/16226297/114755114-4d3c1280-9d27-11eb-9d96-2cb3e8b43067.png)

Once you click Connect, it will show the DB like shown below:

![image](https://user-images.githubusercontent.com/16226297/114755456-a4da7e00-9d27-11eb-819b-8d597b1bc0d1.png)

