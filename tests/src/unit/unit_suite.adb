with AUnit.Test_Cases;
with Sample_Tests;

package body Unit_Suite is

   Result : aliased AUnit.Test_Suites.Test_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin
      Result.Add_Test
         (AUnit.Test_Cases.Test_Case_Access'(new Sample_Tests.Sample_Test));
      return Result'Access;
   end Suite;

end Unit_Suite;
