<NOT XML>
<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>9.1.2</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Itchy"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="Address_Check" type-name="Itchy"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">Report</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="2">TestCaseIDs</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">QA_Com</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="3">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ID</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="3"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Address_Check</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Itchy</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="long1" class="AttributeAssignment">
            <property name="attributeValue" class="String">% BLDG %,% BLDG,% BUILDING %,% BUILDING,% APT %,% APT,% UNIT %,% UNIT,% RM %,% RM,% STE %,% STE,% SUITE %,% SUITE,% FL %,% FL,% FLOOR %,% FLOOR,% CB %,% CB,% # %,% #,</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="4">kapow.robot.plugin.common.domain.TextAttributeType</property>
          </property>
          <property name="long2" class="AttributeAssignment">
            <property name="attributeValue" class="String">City,State,Zip,Address_1,City_State_Zip</property>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
          <property name="long3" class="AttributeAssignment">
            <property name="attributeValue" class="String">Address_1,Address_2,Practice_Name</property>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
          <property name="long4" class="AttributeAssignment">
            <property name="attributeValue" class="String">Address_1,Address_2,Practice_Name,Phones_Full</property>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
          <property name="long5" class="AttributeAssignment">
            <property name="attributeValue" class="String">T_071,T_072,T_073,T_074,T_075,T_076,T_077,T_078,T_079,T_080,T_081,T_082,T_083,T_084,T_085,T_086,T_087,T_088,T_089,T_090,T_095,T_097,T_098,T_099,T_100,T_101,T_103,T_104,T_105,T_106,T_190,T_107,T_111,T_112,T_113,T_114,T_210</property>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
          <property name="text4" class="AttributeAssignment">
            <property name="attributeValue" class="String">Phone_1,Fax_1,Fax_2</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="5">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="text5" class="AttributeAssignment">
            <property name="attributeValue" class="String">City,State,Zip</property>
            <property name="lastKnownAttributeType" idref="5"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">TableName</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="3"/>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="6">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="7"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="0" id="8">
        <property name="name" class="String">Query Database for Table Name</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">KapowTest</property>
            </property>
          </property>
          <property name="sql" class="String">"--Select Distinct Parcher_Tablename from Parcher_Tablename_Inputs
SELECT name as Parcher_Tablename
FROM sys.Tables with (nolock)
where name= 'Insurances_PLP_UHCDENTISTS'
"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Parcher_Tablename</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">TableName</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
      </object>
      <object class="Transition" serializationversion="0" id="9">
        <property name="name" class="String">Clear Report</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
      </object>
      <object class="End" id="10"/>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">Clear TestCaseIDs</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
      </object>
      <object class="Group" id="12">
        <name class="String">Report Generation</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="13"/>
        <steps class="ArrayList">
          <object class="End" id="14"/>
          <object class="BranchPoint" id="15"/>
          <object class="End" id="16"/>
          <object class="Transition" serializationversion="0" id="17">
            <property name="name" class="String">Inserting into Error_Table for City</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"Select  A.ObjectKey
into #TempTable
from "+TableName+" A with (nolock) left join AllZips B with (nolock)
On 
--A.City=B.City
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(A.City,'St.','Saint'),'Mt.','Mount'),'''',''),'West',''),'East',''),'North',''),'South',''),' ','') 
= REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(B.City,'St.','Saint'),'Mt.','Mount'),'''',''),'West',''),'East',''),'North',''),'South',''),' ','') 
where (A.City is not null and B.City is null) 


--Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select A.RobotName, A.ObjectKey, 'T_082:City','Y'
From "+TableName+" A inner join #TempTable B
On A.ObjectKey=B.Objectkey)

Drop table #TempTable 

"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="End" id="18"/>
          <object class="Transition" serializationversion="0" id="19">
            <property name="name" class="String">Inserting into Error_Table for State</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"Select  A.ObjectKey
into #TempTable
from "+TableName+" A with (nolock) left join AllZips B with (nolock) 
On 
A.State=B.StateMapping or a.State=B.State
where A.State is not null and B.StateMapping is null 

Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,B.ObjectKey,'T_083:State','Y'
from "+TableName+" A with (nolock) join #Temptable B with (nolock)
ON A.ObjectKey = B.ObjectKey)

Drop table #temptable
"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="End" id="20"/>
          <object class="Transition" serializationversion="0" id="21">
            <property name="name" class="String">Inserting into Error_Table for Zip</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"Select A.ObjectKey
into #TempTable
from "+TableName+" A with (nolock) left join AllZips B with (nolock)
On 
A.Zip = B.Zip
where ((A.Zip is not null AND B.Zip is null )
AND ISNUMERIC(A.Zip) &lt;&gt; 1)

Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select A.RobotName,A.ObjectKey, 'T_084:Zip','Y'
From "+TableName+" A with (nolock) inner join #TempTable B with (nolock)
On A.ObjectKey=B.Objectkey)

Drop table #TempTable
"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="End" id="22"/>
          <object class="End" id="23"/>
          <object class="End" id="24"/>
          <object class="End" id="25"/>
          <object class="End" id="26"/>
          <object class="Group" id="27">
            <name class="String">ReqID-013, Validating Address_1</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="28"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="29">
                <property name="name" class="String">Loop for A2</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long1</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text1</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="30">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text1</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"% BLDG %" = "T_071:Address_1"
"% BLDG" = "T_071:Address_1"
"% BUILDING %" = "T_072:Address_1"
"% BUILDING" = "T_072:Address_1"
"% APT %" = "T_073:Address_1"
"% APT" = "T_073:Address_1"
"% UNIT %" = "T_074:Address_1"
"% UNIT" = "T_074:Address_1"
"% RM %" = "T_075:Address_1"
"% RM" = "T_075:Address_1"
"% STE %" = "T_076:Address_1"
"% STE" = "T_076:Address_1"
"% SUITE %" = "T_077:Address_1"
"% SUITE" = "T_077:Address_1"
"% FL %" = "T_078:Address_1"
"% FL" = "T_078:Address_1"
"% FLOOR %" = "T_079:Address_1"
"% FLOOR" = "T_079:Address_1"
"% CB %" = "T_080:Address_1"
"% CB" = "T_080:Address_1"
"% # %" = "T_081:Address_1"
"% #" = "T_081:Address_1"
</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="31">
                <property name="name" class="String">Insert into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"Insert into Error_Table (CarrierName, Object_Key, QA_Comment, Flag)
(Select RobotName, ObjectKey,  '"+Address_Check.text2+"', 'Y'
from "+TableName+" with (nolock)
where Address_1 like '"+Address_Check.text1+"')
"
</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="32"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="28"/>
                <to idref="29"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="29"/>
                <to idref="30"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="30"/>
                <to idref="31"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="31"/>
                <to idref="32"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Group" id="33">
            <name class="String">Checks existence &amp; correct parsing</name>
            <comment class="String">It checks if the value of City, State , Zip, Phones, Address_1 etc  exists in Address_Full
and values are in there respective columns only</comment>
            <blockBeginStep class="BlockBeginStep" id="34"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="35">
                <property name="name" class="String">Loop for columns</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long2</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text3</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="36">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select RobotName, ObjectKey, '"+Address_Check.text2+"','Y'
From "+TableName+"
where 
("+Address_Check.text3+" is NOT NULL AND
"+Address_Check.text3+" != '' AND
Address_Full not like '%'+"+Address_Check.text3+"+'%')
 OR
("+Address_Check.text3+" = '' OR "+Address_Check.text3+" is null and Address_Full is not null)
)
"
</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="37">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"City" = "T_112:City"
"State" = "T_113:State"
"Zip" = "T_114:Zip"
"Address_1" = "T_090:Address_1"
"City_State_Zip" = "T_111:City_State_Zip"

</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="38"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="34"/>
                <to idref="35"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="35"/>
                <to idref="37"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="36"/>
                <to idref="38"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="37"/>
                <to idref="36"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="End" id="39"/>
          <object class="Transition" serializationversion="0" id="40">
            <property name="name" class="String">Setting Flag to 'N'</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"Update Error_Table
Set Flag='N'
where CarrierName IN (Select distinct RobotName from "+TableName+") 
AND QA_Comment IN ('T_071:Address_1','T_072:Address_1','T_073:Address_1','T_074:Address_1','T_075:Address_1','T_076:Address_1','T_077:Address_1','T_078:Address_1','T_079:Address_1','T_080:Address_1','T_081:Address_1','T_082:City','T_083:State','T_084:Zip','T_085:Phone_1','T_086:Fax','T_087:Address_1','T_088:Address_2','T_089:Practice_Name','T_090:Address_1','T_095:Address_1','T_095:Address_2','T_097:Practice_Name','T_098:Address_1','T_099:Address_2','T_100:Practice_Name','T_101:Address_1','T_103:Address_2','T_104:Practice_Name','T_105:Phones_Full','T_190:Address_Full','T_106:Phones_Full','T_107:Fax','T_111:City_State_Zip','T_210:Phones_Full','T_112:City','T_113:State','T_114:Zip','Address_2')
AND Flag = 'Y'
"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="End" id="41"/>
          <object class="Group" id="42">
            <name class="String">Data Integrity Check</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="43"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="44">
                <property name="name" class="String">Loop for columns</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.text4</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text3</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="45">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"Phone_1" = "T_085:Phone_1"
"Fax_1" = "T_086:Fax"
"Fax_2" = "T_086:Fax"</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="46">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'"+Address_Check.text2+"','Y'
from "+TableName+" with (nolock)
 where 
(( "+Address_Check.text3+" is not null AND "+Address_Check.text3+" != '') 
AND
(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("+Address_Check.text3+",'-',''),'(',''),')',''),'.',''),'/',''),' ','') = '0000000000'
OR
ISNUMERIC(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("+Address_Check.text3+",'-',''),'(',''),')',''),'.',''),'/',''),' ','')) &lt;&gt; 1)))"

</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="47"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="43"/>
                <to idref="44"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="44"/>
                <to idref="45"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="45"/>
                <to idref="46"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="46"/>
                <to idref="47"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Group" id="48">
            <name class="String">for ReqID-026</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="49"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="50">
                <property name="name" class="String">Loop for columns</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long4</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text3</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="51">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'"+Address_Check.text2+"','Y'
from "+TableName+" with (nolock)
where   ("+Address_Check.text3+" like '%maps%' OR 
"+Address_Check.text3+" like '%Direction%' OR 
"+Address_Check.text3+" like '%Patients%' OR
"+Address_Check.text3+" like '%Accepting%' OR
"+Address_Check.text3+" like '%[&lt;&gt;]%' OR
"+Address_Check.text3+" like '%website%' OR
"+Address_Check.text3+" like '%email%' OR
"+Address_Check.text3+" like '%About us%' OR
"+Address_Check.text3+" like '%Insurance%' OR
"+Address_Check.text3+" like '% plan %' OR
"+Address_Check.text3+" like '% plans %' OR
"+Address_Check.text3+" like '%Phone(%' OR
"+Address_Check.text3+" like '%phones( %' OR
"+Address_Check.text3+" like '%phone[0-9]%' OR
"+Address_Check.text3+" like '%phones[0-9]%' OR
"+Address_Check.text3+" like '%hours%' )
AND 
("+Address_Check.text3+" not like '%&lt;Phone&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phone:&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phones&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phone &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phones:&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phones &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phone: &gt;%' AND     
"+Address_Check.text3+" not like '%&lt;Phone_&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phones_&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Phones: &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext:&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext: &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext_&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Ext_ &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax:&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax: &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax&gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax_ &gt;%' AND
"+Address_Check.text3+" not like '%&lt;Fax_&gt;%'))"</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="52">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"Address_1" = "T_101:Address_1"
"Address_2" = "T_103:Address_2"
"Practice_Name" = "T_104:Practice_Name"
"Phones_Full" = "T_105:Phones_Full"
</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="53"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="49"/>
                <to idref="50"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="50"/>
                <to idref="52"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="51"/>
                <to idref="53"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="52"/>
                <to idref="51"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Group" id="54">
            <name class="String">for ReqID-025</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="55"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="56">
                <property name="name" class="String">Loop for columns</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long3</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text3</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="57">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"Address_1" = "T_095:Address_1"
"Address_2" = "T_095:Address_2"
"Practice_Name" = "T_097:Practice_Name"
</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="58">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"INSERT INTO Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'"+Address_Check.text2+"','Y'
from "+TableName+" with (nolock)
where "+Address_Check.text3+" like '%''''%'
OR "+Address_Check.text3+" like '% apos %')
"
</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="End" id="59"/>
              <object class="BranchPoint" id="60"/>
              <object class="Transition" serializationversion="0" id="61">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"Address_1" = "T_098:Address_1"
"Address_2" = "T_099:Address_2"
"Practice_Name" = "T_100:Practice_Name"
</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="62">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'"+Address_Check.text2+"','Y'
from "+TableName+" with (nolock)
where "+Address_Check.text3+" like '%&amp;amp%' )"
</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="63"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="55"/>
                <to idref="56"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="56"/>
                <to idref="60"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="57"/>
                <to idref="58"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="58"/>
                <to idref="63"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="60"/>
                <to idref="57"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="60"/>
                <to idref="61"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="61"/>
                <to idref="62"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="62"/>
                <to idref="59"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Group" id="64">
            <name class="String"> for ReqID-019</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="65"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="66">
                <property name="name" class="String">Loop for columns</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long3</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text3</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="67">
                <property name="name" class="String">Assign TestCaseID</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Address_Check.text3</property>
                        </property>
                      </element>
                      <element class="ConvertUsingList">
                        <property name="mapString" class="String">"Address_1" = "T_087:Address_1"
"Address_2" = "T_088:Address_2"
"Practice_Name" = "T_089:Practice_Name"
</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text2</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="68">
                <property name="name" class="String">Inserting into Error_Table</property>
                <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="Expression" serializationversion="1">
                    <property name="text" class="String">"INSERT INTO Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'"+Address_Check.text2+"','Y'
from "+TableName+" with (nolock)
where "+Address_Check.text3+" like '%@@%')
"
</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="69"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="65"/>
                <to idref="66"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="66"/>
                <to idref="67"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="67"/>
                <to idref="68"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="68"/>
                <to idref="69"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Transition" serializationversion="0" id="70">
            <property name="name" class="String">Inserting into Error_Table for Phones &amp; Fax</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'T_106:Phones_Full','Y'
from "+TableName+" with (nolock)
where Phones_Full is Not null AND
REPLACE(Phones_Full,'_','')
!= (Phone_1+ISNULL(Phone_2,'')+ISNULL(Phone_3,''))
)


Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select RobotName,ObjectKey, 'T_190:Phone_1','Y'
From  "+TableName+"  with (nolock)
where 
(Phone_1 is NOT NULL AND
Phone_1 != '' AND
Address_Full  not like '%'+Phone_1+'%'
 OR
(Phone_1 = '' OR Phone_1 is null 
and Address_Full is not null and
Address_Full like '%[0-9][-/. ][0-9][0-9][0-9][0-9][_][_][_]%[-/. ][0-9][0-9][0-9][0-9]')
))





Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select RobotName,ObjectKey, 'T_107:Fax','Y'
From  "+TableName+"  with (nolock)
where 
(Fax_1 is NOT NULL AND
Fax_1 != '' AND
Address_Full  not like '%'+Fax_1+'%'
 OR
(Fax_1 = '' OR Fax_1 is null 
and Address_Full is not null and
Address_Full like '%[0-9][-/. ][0-9][0-9][0-9][0-9][_][_][_]%[-/. ][0-9][0-9][0-9][0-9]')
))



Insert into Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(Select RobotName,ObjectKey, 'T_107:Fax','Y'
From  "+TableName+"  with (nolock)
where 
(Fax_2 is NOT NULL AND
Fax_2 != '' AND
Address_Full  not like '%'+Fax_2+'%'
 OR
(Fax_2 = '' OR Fax_2 is null 
and Address_Full is not null and
Address_Full like '%[0-9][-/. ][0-9][0-9][0-9][0-9][_][_][_]%[-/. ][0-9][0-9][0-9][0-9]')
))



"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="End" id="71"/>
          <object class="Transition" serializationversion="0" id="72">
            <property name="name" class="String">Send Email</property>
            <property name="stepAction" class="SendEmail">
              <property name="fromAddress" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">alerts-kapow@zocdoc.com</property>
              </property>
              <property name="toAddress" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">data-webmining@zocdoc.com</property>
              </property>
              <property name="subject" class="Expression" serializationversion="1">
                <property name="text" class="String">"Address_Checker reports Error!"</property>
              </property>
              <property name="message" class="Expression" serializationversion="1">
                <property name="text" class="String">"Hello Miners,

The Error Report is as following:

Carrier Name: "+TableName+"
"+Report+"

The following Test cases  have no errors:
"+TestCaseIDs+"

Please fix the above errors (if any) soon.

Yabba dabba doo,
Address_Checker
"</property>
              </property>
              <property name="mailServer" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">smtp.emailsrvr.com</property>
              </property>
              <property name="user" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">alerts-kapow@zocdoc.com</property>
              </property>
              <property name="password" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
                <property name="value" encryption-type="1" class="String">zUaSVX3MMRg=</property>
              </property>
              <property name="attachmentMimeType" class="com.kapowtech.net.MIMEType">
                <property name="mimeType" class="String">text/plain</property>
              </property>
              <property name="attachmentFileName" class="Expression" serializationversion="1">
                <property name="text" class="String">"Report.txt"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="changedProperties" class="java.util.HashSet">
                <element class="String">reportingViaLog</element>
                <element class="String">reportingViaAPI</element>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
          <object class="Group" id="73">
            <name class="String">Generate Report</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="74"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="0" id="75">
                <property name="name" class="String">Loop for QA_Comment</property>
                <property name="stepAction" class="ForEachTextPart">
                  <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Address_Check.long5</property>
                    </property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Address_Check.text1</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="76">
                <property name="name" class="String">Query Database</property>
                <property name="stepAction" class="QueryDatabase2" serializationversion="1">
                  <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                    <property name="value" class="kapow.util.db.DBName">
                      <property name="name" class="String">KapowTest</property>
                    </property>
                  </property>
                  <property name="sql" class="String">"select COUNT(*) as Count From Error_Table A with (nolock) Join "+TableName+" B with (nolock)
ON A.Object_Key = B.ObjectKey
where A.QA_Comment = '"+Address_Check.text3+"'
AND Flag = 'Y'

"</property>
                  <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                    <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                      <property name="columnName" class="String">Count</property>
                      <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">Address_Check.int1</property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="77">
                <property name="name" class="String">Report</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">Report+"\n"+"For Test Case ID "+Address_Check.text1+", "+Address_Check.text2+" "+Address_Check.int1"</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Report</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="78">
                <property name="name" class="String">Convert Variables</property>
                <property name="stepAction" class="ConvertVariables">
                  <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
                    <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
                      <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                        <property name="name" class="String">Address_Check.text1</property>
                      </property>
                      <property name="dataConverters" class="DataConverters">
                        <element class="ConvertUsingList">
                          <property name="mapString" class="String">"T_071" = "No. of rows that have 'BLDG' present in Address_1: "
"T_072" = "No. of rows that have 'Building' present in Address_1:"
"T_073" = "No. of rows that have 'Apt' present in Address_1:"
"T_074" = "No. of rows that have 'Unit' present in Address_1:"
"T_075" = "No. of rows that have 'RM' present in Address_1:"
"T_076" = "No. of rows that have 'Ste' present in Address_1:"
"T_077" = "No. of rows that have 'Suite' present in Address_1:"
"T_078" = "No. of rows that have 'Fl' present in Address_1:"
"T_079" = "No. of rows that have 'Floor' present in Address_1:"
"T_080" = "No. of rows that have 'CB' present in Address_1:"
"T_081" = "No. of rows that have '#' present in Address_1:"
"T_082" = "No. of rows where the value of City is incorrect:" 
"T_083" = "No. of rows where the value of State is incorrect:" 
"T_084" = "No. of rows where the value of Zip is incorrect:"
"T_085" = "No. of rows that have incorrect format of Phones in Phone_1: "
"T_086" = "No. of rows that have incorrect format of Fax in Fax_1:"
"T_087" = "No. of rows that have '@@@' present in Address_1:"
"T_088" = "No. of rows that have '@@@' present in Address_2:"
"T_089" = "No. of rows that have '@@@' present in Practice_Name:"
"T_090" = "No. of rows that have no values for Address_1:"
"T_095"  = "No. of rows that have multiple apostrophes present in address_1 OR address_2:"
"T_097"  = "No. of rows that have multiple apostrophes present in Practice_Name:"
"T_098" =  "No. of rows that have '&amp;amp' present in Address_1:"
"T_099"  = "No. of rows that have '&amp;amp' present in Address_2:"
"T_100"  = "No. of rows that have '&amp;amp' present in Practice_Name:"
"T_101"  = "No. of rows that have unwanted tags and words present in Address_1:"
"T_103"  = "No. of rows that have unwanted tags and words present in Address_2:"
"T_104" = "No. of rows that have unwanted tags and words present in Practice_Name:"
"T_105" = "No. of rows that have unwanted tags and words present in Phones_Full:"
"T_106" = "No. of rows where Fax_1 or Fax_2 is null or blank even when they are present in Phones_Full:"
"T_107" = "No. of rows where Fax_1 or Fax_2 or Phone_3 is is null or blank even when they are present in Address_Full"
"T_111" = "No. of rows where the value of City_State_Zip is incorrect:"
"T_112" =  "No. of rows where City was incorrectly parsed in City column:"
"T_113" =  "No. of rows where State was incorrectly parsed in State column:"
"T_114" = "No. of rows where Zip was incorrectly parsed in Zip column:"
"T_190" = "No. of rows where Address_Full doesn't contain Phone_1 OR values of Phone_1 and Address_Full don't match: "
"T_210" = "Same Phone numbers  are repeated for different addresses"</property>
                        </element>
                      </property>
                      <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                        <property name="name" class="String">Address_Check.text2</property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="79">
                <property name="name" class="String">Test Value</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">Address_Check.int1 &gt; 0</property>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList" id="80"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Try" id="81"/>
              <object class="End" id="82"/>
              <object class="Transition" serializationversion="0" id="83">
                <property name="name" class="String">Test Case IDs with no error</property>
                <property name="stepAction" class="AssignVariable" serializationversion="2">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">TestCaseIDs+Address_Check.text1+", "</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">TestCaseIDs</property>
                  </property>
                </property>
                <property name="nodeFinderList" idref="80"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
              <object class="Transition" serializationversion="0" id="84">
                <property name="name" class="String">Convert Variables</property>
                <property name="stepAction" class="ConvertVariables">
                  <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
                    <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
                      <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                        <property name="name" class="String">Address_Check.text1</property>
                      </property>
                      <property name="dataConverters" class="DataConverters">
                        <element class="ConvertUsingList">
                          <property name="mapString" class="String">"T_071" = "T_071:Address_1"
"T_072" = "T_072:Address_1"
"T_073" = "T_073:Address_1"
"T_074" = "T_074:Address_1"
"T_075" = "T_075:Address_1"
"T_076" = "T_076:Address_1"
"T_077" = "T_077:Address_1"
"T_078" = "T_078:Address_1"
"T_079" = "T_079:Address_1"
"T_080" = "T_080:Address_1"
"T_081" = "T_081:Address_1"
"T_082" = "T_082:City"
"T_083" = "T_083:State"
"T_084" = "T_084:Zip"
"T_085" = "T_085:Phone_1"
"T_086" = "T_086:Fax"
"T_087" = "T_087:Address_1"
"T_088" = "T_088:Address_2"
"T_089" = "T_089:Practice_Name"
"T_090" = "T_090:Address_1"
"T_095" = "T_095:Address_1"
"T_097" = "T_097:Practice_Name"
"T_098" = "T_098:Address_1"
"T_099" = "T_099:Address_2"
"T_100" = "T_100:Practice_Name"
"T_101" = "T_101:Address_1"
"T_103" = "T_103:Address_2"
"T_104" = "T_104:Practice_Name"
"T_105" = "T_105:Phones_Full"
"T_190" = "T_190:Address_Full"
"T_106" = "T_106:Phones_Full"
"T_107" = "T_107:Fax"
"T_111" = "T_111:City_State_Zip"
"T_112" = "T_112:City"
"T_113" = "T_113:State"
"T_114" = "T_114:Zip"
"Address_2" = "Address_2"
"T_210" ="T_210:Phones_Full"</property>
                        </element>
                      </property>
                      <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                        <property name="name" class="String">Address_Check.text3</property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="nodeFinderList" class="NodeFinderList"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="85"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="74"/>
                <to idref="75"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="75"/>
                <to idref="84"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="76"/>
                <to idref="78"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="77"/>
                <to idref="85"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="78"/>
                <to idref="81"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="79"/>
                <to idref="77"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="81"/>
                <to idref="79"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="81"/>
                <to idref="83"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="83"/>
                <to idref="82"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
              <object class="TransitionEdge">
                <from idref="84"/>
                <to idref="76"/>
                <attachment>
                  <null/>
                </attachment>
              </object>
            </edges>
          </object>
          <object class="Transition" serializationversion="0" id="86">
            <property name="name" class="String">Phone Repetion check T_210</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">KapowTest</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"
With Trial2
as
(

Select Phones_Full , Address_Full, Full_name,
Rank () over ( partition by phones_full order by city desc) as rankZ
 from " + TableName+ " 
 with (nolock) where Phones_Full&lt;&gt;''
 )

 
INSERT INTO Error_Table (CarrierName,Object_Key,QA_Comment,Flag)
(select RobotName,ObjectKey,'T_210:Phones_Full','Y'
from " + TableName+ "  with (nolock)
where Phones_full in
 (
 Select Phones_Full 
 from Trial2 
 Where rankZ&gt;1))
"</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="87"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="40"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="27"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="33"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="17"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="19"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="21"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="70"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="64"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="54"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="48"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="42"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="86"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="73"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="72"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="16"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="18"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="20"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="27"/>
            <to idref="87"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="33"/>
            <to idref="14"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="40"/>
            <to idref="15"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="42"/>
            <to idref="26"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="25"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="54"/>
            <to idref="24"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="64"/>
            <to idref="23"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="70"/>
            <to idref="22"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="72"/>
            <to idref="71"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="73"/>
            <to idref="41"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="86"/>
            <to idref="39"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="12"/>
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
