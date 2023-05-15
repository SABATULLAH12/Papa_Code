const fs = require('fs');
var path = require('path');
const prompt = require('prompt-sync')();

function GenerateDropCode(table){
  let code = fs.readFileSync('./template/DropTemplate.txt').toString();
  code = code.replace(/QQTableNameQQ/gm, table.dboTableName);
  code = code.replace(/QQsafeTableNameQQ/gm, table.tableName);
  code = code.replace(/QQsafedboTableNameQQ/gm, table.safeTableTypeName);
  code = code.replace(/QQDeletedTableNameQQ/gm, table.dboDeletedTableName);
  table.CreateDropCode = code;
}
function GenerateCreateTableCode(table) {
  let code = fs.readFileSync('./template/CreateTableTemplate.txt').toString();
  code = code.replace(/QQTableNameQQ/gm, table.dboTableName);
  code = code.replace(/QQColumnNameQQ/gm, table.columnNames);
  table.CreateTableCode = code;
}
function GenerateDeletedTableCode(table) {
  let code = fs.readFileSync('./template/CreateDeletedTableTemplate.txt').toString();
  code = code.replace(/QQTableNameQQ/gm, table.dboDeletedTableName);
  code = code.replace(/QQColumnNameQQ/gm, table.columnNames);
  table.CreateDeletedTableCode = code;
}
function GenerateCreateTableTypeCode(table) {
  let code = fs.readFileSync('./template/CreateTableTypeTemplate.txt').toString();
  code = code.replace(/QQTableNameQQ/gm, table.safeTableTypeName);
  code = code.replace(/QQColumnNameQQ/gm, table.columnNames);
  table.CreateTableTypeCode = code;
}
function GenerateFunctionCode(table) {
  let code = fs.readFileSync('./template/FunctionTemplate.txt').toString();
  let columnList = table.columnNames.split('NULL,');
  let columnsInfo = ''
  columnList.forEach(rawColumn => {
    let columnCode = '\n\t\t\tdt.Columns.Add(new DataColumn("QQColumnNameQQ", typeof(QQcolumnTypeQQ)));';
    let columnMatchRegex = /(\[.*\])/gm;;
    let columnAndType = columnMatchRegex.exec(rawColumn)[1].split('] [');
    let columnName = columnAndType[0].replace('[', '');
    let columnType = columnAndType[1].replace(']', '');
    switch (columnAndType[1].replace(']', '').toLocaleLowerCase()) {
      case 'nvarchar': columnType = 'string'; break;
      case 'varchar': columnType = 'string'; break;
      case 'float': columnType = 'decimal'; break;
      case 'int': columnType = 'int'; break;
      default: throw 'not implemented type :' + columnAndType[1].replace(']', '').toLocaleLowerCase();
    }
    columnsInfo += columnCode.replace('QQColumnNameQQ', columnName)
      .replace('QQcolumnTypeQQ', columnType);
  });
  // todo columnsInfo dt.Columns.Add(new DataColumn("Scenario", typeof(string))); 
  code = code.replace(/QQTableNameQQ/gm, table.tableName);
  code = code.replace(/QQSafeTableNameQQ/gm, table.safeTableTypeName);
  code = code.replace(/QQColumnAddQQ/gm, columnsInfo);
  table.CreateFunctionCode = code;
}
function GenerateStoredProcCode(table,type) {
  let code = '';
  let columnList = table.columnNames.split('NULL,');
  let columnsInfo = ''
  columnList.forEach(rawColumn => {
    let columnMatchRegex = /(\[.*\])/gm;;
    let columnAndType = columnMatchRegex.exec(rawColumn)[1].split('] [');
    let columnName = columnAndType[0];
    columnsInfo += '\n\t\t' + columnName+ '],'
  });
  if(type == '1'){
    code = fs.readFileSync('./template/CreateFillType1TableSpTemplate.txt').toString();
  }
  else if(type == '2'){
    code = fs.readFileSync('./template/CreateFillType2TableSpTemplate.txt').toString();
  }
  code = code.replace(/QQTableNameQQ/gm, table.dboTableName);
  code = code.replace(/QQsafeTableNameQQ/gm, table.tableName);
  code = code.replace(/QQTableTypeNameQQ/gm, table.safeTableTypeName);
  code = code.replace(/QQDeletedTableNameQQ/gm, table.dboDeletedTableName);
  code = code.replace(/QQColumnNameQQ/gm, columnsInfo);
  table.CreateFillSpCode = code;
}
function GenerateTableData(rawSplit,tableType) {
  let tables = [];
  for (let index = 0; index < rawSplit.length; index++) {
    let rawTableSplit = rawSplit[index].split('******/');
    let dboTableNameRegex = /Table ([[a-zA-Z_ ]+].[[\w\- ]+])/gm;
    let tableNameRegex = /Table [[a-zA-Z_ ]+].[[]([\w\- ]+)/gm;
    let columnNameRegex = /\((.*)\)/gm;
    let dboTableMatch = dboTableNameRegex.exec(rawTableSplit[0]);
    let tableNameMatch = tableNameRegex.exec(rawTableSplit[0]);
    let getColumnMatch = columnNameRegex.exec(rawTableSplit[1].replace(/[\n\r\t]/gm, ""))[1];
    getColumnMatch = getColumnMatch.replace(/\[UpdatedBy\]/gm, "--[UpdatedBy]");
    getColumnMatch = getColumnMatch.replace(/\[UpdatedTimestamp\]/gm, "--[UpdatedTimestamp]");
    getColumnMatch = getColumnMatch.replace(/\[createdBy\]/gm, "--[createdBy]");
    getColumnMatch = getColumnMatch.replace(/\[CreatedTimestamp\]/gm, "--[CreatedTimestamp]");
    getColumnMatch = getColumnMatch.replace(/\[ReplacedBy\]/gm, "--[ReplacedBy]");
    getColumnMatch = getColumnMatch.replace(/\[ReplacedTimestamp\]/gm, "--[ReplacedTimestamp]");
    getColumnMatch = getColumnMatch.replace(/NULL,/gm, 'NULL,\n\t');
    if (dboTableMatch == null || tableNameMatch == null || tableNameMatch[1] == null || dboTableMatch[1] == null) {
      console.warn(`skipped ${JSON.stringify(rawSplit[index])}`);
      continue;
    }
    let onlyTableName = tableNameMatch[1].replace(/[\- ]/gm, "_");
    let fillTableName = "fill_" + onlyTableName.toLocaleLowerCase();
    let onlyTableTypeName = onlyTableName;
    if(onlyTableTypeName.toLocaleLowerCase() == 'image'){
      onlyTableTypeName = onlyTableTypeName+ '_type';
    }
    let table = {
      dboTableName: dboTableMatch[1],
      safeDboTableName: "[dbo].[" + onlyTableName + "]",
      safeTableTypeName: "[dbo].["+ onlyTableTypeName + "]",
      dboDeletedTableName: "[dbo].[Deleted_" + onlyTableName + "]",
      tableName: onlyTableName,
      columnNames: getColumnMatch,
      fillOpTableName: fillTableName,
      rawCreateTable: rawTableSplit[1]
    }
    GenerateDropCode(table);
    GenerateCreateTableCode(table);
    GenerateDeletedTableCode(table);
    GenerateCreateTableTypeCode(table);
    GenerateFunctionCode(table);
    GenerateStoredProcCode(table,tableType);
    tables.push(table);
  }
  return tables;
}
function WriteScriptsToFile(tables,tableType) {
  let sqlCode = "";
  let functionCode = "";
  tables.forEach(table => {
    sqlCode += table.CreateDropCode + "\n";
    sqlCode += table.CreateTableTypeCode + "\n";
    sqlCode += table.CreateTableCode + "\n";
    sqlCode += table.CreateDeletedTableCode + "\n";
    sqlCode += table.CreateFillSpCode+"\n\n";
    fs.writeFileSync('../UploadFunctionAPP/PaPaFunApp/Functions/' + table.fillOpTableName + '.cs', table.CreateFunctionCode);
  });
  fs.writeFileSync(`../DataBase Scripts/outDbScripts/Dbtabletype${tableType}Script.sql`, sqlCode, { encoding: 'utf16le' });
}

try {
  var filePath = prompt('What is your .sql filePath?(press enter to skip and take it from "/DataBase Scripts/inDbScripts/rawtables.sql")');
  filePath = filePath.replace(/[^a-zA-Z0-9/. ]/g, "");
  filePath = filePath == "" ? '../DataBase Scripts/inDbScripts/rawtables.sql' : filePath;
  console.log(`searching for ${filePath} path\nplease wait....\n`);
  let fileExt = path.extname(filePath);
  if (fileExt.toLocaleLowerCase() != '.sql') throw 'file should be sql format';
  if (fs.existsSync(filePath)) {  //file exists
    console.log('file path and extension is valid. Checking the file type.\nplease wait....\n')
    let rawData = fs.readFileSync(filePath).toString('utf16le');
    let rawSplit = rawData.split('/****** Object:  ').filter(i => i.length > 2);
    var tableType = prompt('table type mode(1/2)?');
    tableType = tableType=='2'? '2':'1';
    console.log("you have selected table type"+tableType);
    console.log(rawSplit.length);
    if (!fs.existsSync('../DataBase Scripts/outDbScripts')) { //create the Folders if not exists
      fs.mkdirSync('../DataBase Scripts/outDbScripts');
    }
    let tables = GenerateTableData(rawSplit,tableType);
    WriteScriptsToFile(tables,tableType); //write to file
  }
  else throw `${filePath} path not found`;
}
catch (err) {
  console.error(err)
}