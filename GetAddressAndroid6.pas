function JA2MAC(buffer: TJavaArray<byte>):string;
var i:integer;
begin
  result := IntToHex(ord(buffer[0]),2);
  for I := 1 to buffer.Length-1 do
    Result:= Result+':'+IntToHex(ord(buffer[i]),2);
end;

function GetAddressAndroid6: string;
var
  Intf: JNetworkInterface;
begin
    Intf := TJNetworkInterface.JavaClass.getByName(StringToJString('wlan0'));
    result := JA2MAC(Intf.getHardwareAddress);
end;