```ada
procedure Example_Corrected is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'First .. My_Data'Last - 1 loop --Corrected loop condition
      if My_Data(I + 1) > 5 then
         Put_Line("Value greater than 5 found at index " & Integer'Image(I + 1));
      end if;
   end loop;
   --Alternative:
   --for I in My_Data'Range loop
   --  if I < My_Data'Last and My_Data(I+1) > 5 then  --Check bounds before access
   --     Put_Line("Value greater than 5 found at index " & Integer'Image(I + 1));
   --  end if;
   --end loop;
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example_Corrected;
```