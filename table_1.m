function res = table_1()

Role = ["Руководитель";"Исполнитель"];
Name = ["";""];

table_E = table2array(fileExcel(2:6, 1:2))

Name_I = find(table_E)


for i=1:5
    if (table_E(i,2) == "Руководитель") 
        Name(1,1)= Name(1,1)+" "+table_E(i,1);
     
    else
        Name(2,1)= Name(2,1)+" "+table_E(i,1);
    end   
end
res_table = table(Role, Name);


show(res_table);
end